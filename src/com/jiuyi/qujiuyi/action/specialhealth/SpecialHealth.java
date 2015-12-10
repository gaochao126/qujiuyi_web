package com.jiuyi.qujiuyi.action.specialhealth;

import org.springframework.beans.factory.annotation.Autowired;

import com.jiuyi.qujiuyi.action.BaseAction;
import com.jiuyi.qujiuyi.dto.department.DepartmentDto;
import com.jiuyi.qujiuyi.dto.doctor.DoctorDto;
import com.jiuyi.qujiuyi.service.specialhealth.SpecialHealthService;

/**
 * 特色医疗
 * 
 * @author gc
 *
 */
public class SpecialHealth extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5573112408795920538L;

	@Autowired
	private SpecialHealthService specialHealthService;

	/**
	 * 1.特色医院
	 * 
	 * @return
	 */
	public String specialHospital() throws Exception {
		DepartmentDto departmentDto = new DepartmentDto();
		if (this.getParams() != null) {
			departmentDto.setParentId(Integer.parseInt(this.getParams().get("parentId")));
		}
		this.setDataList(specialHealthService.querySpecialHospital(departmentDto));

		return "specialMedical";
	}

	/**
	 * 2.特色科室
	 * 
	 * @return
	 * @throws Exception
	 */
	public String specialDepartment() throws Exception {
		DoctorDto doctorDto = new DoctorDto();
		if (this.getParams() != null) {
			doctorDto.setTitleId(Integer.parseInt(this.getParams().get("titleId")));
		}
		this.setDataList(specialHealthService.queryDoctorBySpecialDepart(doctorDto));
		return null;
	}
}
