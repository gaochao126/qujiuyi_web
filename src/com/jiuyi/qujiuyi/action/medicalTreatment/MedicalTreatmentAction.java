package com.jiuyi.qujiuyi.action.medicalTreatment;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.jiuyi.qujiuyi.action.BaseAction;
import com.jiuyi.qujiuyi.common.CacheContainer;
import com.jiuyi.qujiuyi.common.Util;
import com.jiuyi.qujiuyi.dto.department.DepartmentDto;
import com.jiuyi.qujiuyi.dto.doctor.DoctorDto;
import com.jiuyi.qujiuyi.dto.hospital.HospitalDto;
import com.jiuyi.qujiuyi.service.specialhealth.SpecialHealthService;

/**
 * @description 医疗
 * @author zhb
 * @createTime 2015年10月21日
 */
public class MedicalTreatmentAction extends BaseAction {
	private static final long serialVersionUID = -5573112408795920538L;

	@Autowired
	private SpecialHealthService specialHealthService;

	// 具有特色医院列表
	private static List<HospitalDto> specialHospital;

	// 特色医院映射表
	private static Map<Integer, HospitalDto> specialHospitalMap;

    // 热门医院
    private List<HospitalDto> hotHospitalList;

	private List<HospitalDto> specialHospitalList;

	private HospitalDto hospital;

	private List<DoctorDto> doctors;
    
	/**
	 * 1. 特色医疗
	 * 
	 * @description 特色医疗
	 * @return
	 * @throws Exception
	 */
    public String specialMedicalTreatment() throws Exception {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }

		DepartmentDto departmentDto = new DepartmentDto();
		if (this.getParams().containsKey("parentId")) {
			departmentDto.setParentId(Integer.parseInt(this.getParams().get("parentId")));
		}

        // 获取热门医院
        this.setHotHospitalList(CacheContainer.getHotHospitalList());

        // 获取特色科室
		this.specialHospitalList = getSepcialHospital();

        this.getParams().put("currentPage", "specialMedicalTreatment");
        return "specialMedicalTreatment";
	}

	/**
	 * 2. 特色科室
	 * 
	 * @author gc
	 * @return
	 * @throws Exception
	 */
	public String specialDepartment() throws Exception {
		int hospitalId = 0;
		DoctorDto doctorDto = new DoctorDto();


		if (Util.isNotEmpty(this.getParams().get("hospitalId"))) {
			hospitalId = Integer.parseInt(this.getParams().get("hospitalId"));
		}
		if (Util.isNotEmpty(this.getParams().get("hospitalId"))) {
			hospital = getSpecialHospitalMap().get(hospitalId);
			doctorDto.setHospitalId(hospitalId);
		}
		this.getParams().put("currentPage", "specialMedicalTreatment");
		return "sepcialDepartment";
	}

	/**
	 * 查询医生
	 * 
	 * @return
	 */
	public String queryDoctor() throws Exception {
		DoctorDto doctorDto = new DoctorDto();
		if (Util.isNotEmpty(this.getParams().get("titleId"))) {
			doctorDto.setTitleId(Integer.parseInt(this.getParams().get("titleId")));
		}

		if (Util.isNotEmpty(this.getParams().get("parentDepartmentId"))) {
			doctorDto.setLevelOneDepartmentId(Integer.parseInt(this.getParams().get("parentDepartmentId")));
		}

		if (Util.isNotEmpty(this.getParams().get("hospitalId"))) {
			doctorDto.setHospitalId(Integer.parseInt(this.getParams().get("hospitalId")));
		}

		if (doctorDto.getTitleId() == 0) {
			doctorDto.setTitleId(null);
		}

		doctors = specialHealthService.queryDoctorBySpecialDepart(doctorDto);

		return "doctorList";
	}

	/**
	 * @description 特色医院列表
	 * @return
	 */
	public List<HospitalDto> getSepcialHospital() throws Exception {
		if (specialHospital != null) {
			return specialHospital;
		}
		DepartmentDto departmentDto = new DepartmentDto();
        specialHospital = specialHealthService.querySpecialHospital(departmentDto);
        if (specialHospital != null) {
            for (HospitalDto dto : specialHospital) {
                dto.setHead(CacheContainer.getHospitalMap().get(dto.getId()).getHead());
            }
        }
        return specialHospital;
	}

	/**
	 * @description 特色医院映射表
	 * @return
	 * @throws Exception
	 */
	public Map<Integer, HospitalDto> getSpecialHospitalMap() throws Exception {
		if (specialHospitalMap != null) {
			return specialHospitalMap;
		}
		Map<Integer, HospitalDto> hospMap = new HashMap<Integer, HospitalDto>();
		List<HospitalDto> hosps = getSepcialHospital();
		for (int i = 0; i < hosps.size(); i++) {
			hospMap.put(hosps.get(i).getId(), hosps.get(i));
		}
		return hospMap;
	}

    public List<HospitalDto> getHotHospitalList() {
        return hotHospitalList;
    }

    public void setHotHospitalList(List<HospitalDto> hotHospitalList) {
        this.hotHospitalList = hotHospitalList;
    }

	public List<HospitalDto> getSpecialHospitalList() {
		return specialHospitalList;
	}

	public void setSpecialHospitalList(List<HospitalDto> specialHospitalList) {
		this.specialHospitalList = specialHospitalList;
	}

	public HospitalDto getHospital() {
		return hospital;
	}

	public void setHospital(HospitalDto hospital) {
		this.hospital = hospital;
	}

	public List<DoctorDto> getDoctors() {
		return doctors;
	}

	public void setDoctors(List<DoctorDto> doctors) {
		this.doctors = doctors;
	}
}