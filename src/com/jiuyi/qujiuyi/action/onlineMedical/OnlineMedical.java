package com.jiuyi.qujiuyi.action.onlineMedical;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.jiuyi.qujiuyi.action.BaseAction;
import com.jiuyi.qujiuyi.common.CacheContainer;
import com.jiuyi.qujiuyi.common.SysCfg;
import com.jiuyi.qujiuyi.dto.Page;
import com.jiuyi.qujiuyi.dto.area.ProvinceDto;
import com.jiuyi.qujiuyi.dto.department.DepartmentDto;
import com.jiuyi.qujiuyi.dto.doctor.DoctorDto;
import com.jiuyi.qujiuyi.dto.hospital.HospitalDto;
import com.jiuyi.qujiuyi.dto.news.NewsDto;
import com.jiuyi.qujiuyi.service.news.NewsService;

public class OnlineMedical extends BaseAction {
	@Autowired
	private NewsService newsService;

	// 省份集合
	private List<ProvinceDto> provinceList;
	// 平台一级科室集合
	private List<DepartmentDto> oneLevleDepartmentList;
	// 医院列表
	private List<HospitalDto> hospitalList;

	/**
	 * 
	 */
	private static final long serialVersionUID = 6926523695580186016L;

	/**
	 * @description 在线医疗
	 * @return
	 */
	public String reqOnlineMedical() throws Exception {
		if (this.getParams() == null) {
			this.setParams(new HashMap<String, String>());
		}

		this.setProvinceList(CacheContainer.getProvinceList());// 省份
		this.setOneLevleDepartmentList(CacheContainer.getOneLevelDepartmentList());// 一级科室
		this.setHospitalList(CacheContainer.getHaveOnlineDoctorHopitalList());// 医院列表
		// 获取相关新闻
		NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
		newsDto.setCategory1(1);
		if (this.getPage() == null) {
			Page page = new Page();
			this.setPage(page);
			page.setCurrentPage(1);
			page.setPageSize(10);
		}
		newsDto.setPage(this.getPage());
		this.setDataList(newsService.queryNewsByKindId(newsDto));
		this.setPage(newsDto.getPage());
		this.getParams().put("currentPage", "onlineMedical");

		return "onlineMedical";
	}

	/**
	 * @description 查询医生
	 * @return
	 */
	public String queryDoctor() {
		if (this.getParams() == null) {
			this.setParams(new HashMap<String, String>());
		}
		if (Integer.parseInt(this.getParams().get("departmentId")) == 0) {
			this.getParams().put("departmentId", null);
		}
		if (Integer.parseInt(this.getParams().get("hospitalId")) == 0) {
			this.getParams().put("hospitalId", null);
		}
		if(this.getPage()==null){
			Page page = new Page();
			page.setCurrentPage(1);
			page.setPageSize(8);
			this.setPage(page);
		}

		// 获取医生列表
		this.setDataList(this.getPackageDataList("queryDoctorByConditions", DoctorDto.class, SysCfg.getString("qujiuyi.patientUrl")));
		System.out.println(this.getPage().getTotalRecord());
		return "onlineDoctorList";
	}

	public List<ProvinceDto> getProvinceList() {
		return provinceList;
	}

	public void setProvinceList(List<ProvinceDto> provinceList) {
		this.provinceList = provinceList;
	}

	public List<DepartmentDto> getOneLevleDepartmentList() {
		return oneLevleDepartmentList;
	}

	public void setOneLevleDepartmentList(List<DepartmentDto> oneLevleDepartmentList) {
		this.oneLevleDepartmentList = oneLevleDepartmentList;
	}

	public List<HospitalDto> getHospitalList() {
		return hospitalList;
	}

	public void setHospitalList(List<HospitalDto> hospitalList) {
		this.hospitalList = hospitalList;
	}

}
