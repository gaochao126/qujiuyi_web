package com.jiuyi.qujiuyi.action.department;

import java.util.ArrayList;
import java.util.List;

import com.jiuyi.qujiuyi.action.BaseAction;
import com.jiuyi.qujiuyi.common.CacheContainer;
import com.jiuyi.qujiuyi.common.SysCfg;
import com.jiuyi.qujiuyi.common.Util;
import com.jiuyi.qujiuyi.dto.department.DepartmentDto;
import com.jiuyi.qujiuyi.dto.doctor.DoctorDto;
import com.jiuyi.qujiuyi.dto.hospital.HospitalDto;

/**
 * @description department action
 * @author zhb
 * @createTime 2015年10月10日
 */
public class DepartmentAction extends BaseAction {
    /** serialVersionUID. */
    private static final long serialVersionUID = 4142166814227661866L;

    private HospitalDto hospital;

    private DepartmentDto department;

    /** 医生列表. */
    private List<DoctorDto> doctorList;

    /** 二级科室列表. */
    private List<DepartmentDto> twoLevelDepartmentList;

    /**
     * @description 科室下拉列表
     * @return
     */
    public String departmentSelect() {
		this.setDataList(this.getPackageDataList("queryDepartmentList", DepartmentDto.class, SysCfg.getString("qujiuyi.patientUrl")));
        return "departmentSelect";
    }

    /**
     * @description 科室下拉列表
     * @return
     */
    public String departmentListItem() {
        this.setDataList(this.getPackageDataList("queryDepartmentList", DepartmentDto.class, SysCfg.getString("qujiuyi.patientUrl")));
        return "departmentListItem";
    }

    /**
     * @description 首页的一级科室列表
     * @return
     */
    public String departmentInfo() {
        // 获取医院信息
        String hospitalId = this.getParams().get("hospitalId");
        hospitalId = hospitalId != null ? hospitalId : "0";
        this.hospital = CacheContainer.getHospitalMap().get(Integer.parseInt(hospitalId));

        // 获取一级科室信息
        String departmentId = this.getParams().get("departmentId");
        departmentId = departmentId != null ? departmentId : "0";
        DepartmentDto department = CacheContainer.getHospitalDepartmentMap().get(Integer.parseInt(departmentId));
        if (department != null) {
            department.setIcon(CacheContainer.getDepartmentMap().get(department.getStandardNameId()).getIcon());
            this.department = department;
        }

        // 获取二级科室
        List<DepartmentDto> departmentList = CacheContainer.getHospitalDepartmentListMap().get(Integer.parseInt(hospitalId));
        this.twoLevelDepartmentList = new ArrayList<DepartmentDto>();
        if (Util.isNotEmpty(departmentId) && !"0".equals(departmentId) && departmentList != null) {
            for (DepartmentDto departmentDto : departmentList) {
                if (departmentId.equals(departmentDto.getParentId().toString()) && !departmentDto.getId().equals(departmentDto.getParentId())) {
                    this.twoLevelDepartmentList.add(departmentDto);
                }
            }
        }

        // 获取医生列表
        List<DoctorDto> doctorList = CacheContainer.getOfflineHospitalDoctorMap().get(Integer.parseInt(this.getParams().get("hospitalId")));
        doctorList = doctorList == null ? new ArrayList<DoctorDto>() : doctorList;
        this.doctorList = new ArrayList<DoctorDto>();
        String childDepartmentId = this.getParams().get("childDepartmentId");
        String titleId = this.getParams().get("titleId");
        for (DoctorDto doctor : doctorList) {
            boolean b = true;
            if (Util.isNotEmpty(departmentId) && !"0".equals(departmentId) && !departmentId.equals(doctor.getParentDepartmentId().toString())) {
                b = false;
            }
            if (Util.isNotEmpty(childDepartmentId) && !"0".equals(childDepartmentId) && !childDepartmentId.equals(doctor.getDepartmentId().toString())) {
                b = false;
            }
            if (Util.isNotEmpty(titleId) && !"0".equals(titleId) && !titleId.equals(doctor.getTitleId().toString())) {
                b = false;
            }
            if (b) {
                this.doctorList.add(doctor);
            }
        }

        return "departmentInfo";
    }

    public HospitalDto getHospital() {
        return hospital;
    }

    public void setHospital(HospitalDto hospital) {
        this.hospital = hospital;
    }

    public List<DepartmentDto> getTwoLevelDepartmentList() {
        return twoLevelDepartmentList;
    }

    public void setTwoLevelDepartmentList(List<DepartmentDto> twoLevelDepartmentList) {
        this.twoLevelDepartmentList = twoLevelDepartmentList;
    }

    public DepartmentDto getDepartment() {
        return department;
    }

    public void setDepartment(DepartmentDto department) {
        this.department = department;
    }

    public List<DoctorDto> getDoctorList() {
        return doctorList;
    }

    public void setDoctorList(List<DoctorDto> doctorList) {
        this.doctorList = doctorList;
    }
}