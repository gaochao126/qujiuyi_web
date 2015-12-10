package com.jiuyi.qujiuyi.action.index;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.jiuyi.qujiuyi.action.BaseAction;
import com.jiuyi.qujiuyi.common.CacheContainer;
import com.jiuyi.qujiuyi.common.Util;
import com.jiuyi.qujiuyi.dto.Page;
import com.jiuyi.qujiuyi.dto.area.CityDto;
import com.jiuyi.qujiuyi.dto.area.ProvinceDto;
import com.jiuyi.qujiuyi.dto.department.DepartmentDto;
import com.jiuyi.qujiuyi.dto.diseases.DiseasesDto;
import com.jiuyi.qujiuyi.dto.doctor.DoctorDto;
import com.jiuyi.qujiuyi.dto.hospital.HospitalDto;
import com.jiuyi.qujiuyi.dto.news.NewsDto;
import com.jiuyi.qujiuyi.service.diseases.DiseasesService;
import com.jiuyi.qujiuyi.service.news.NewsService;
import com.jiuyi.qujiuyi.service.webdoctor.WebDoctorService;

/**
 * @description index action
 * @author zhb
 * @createTime 2015年10月10日
 */
public class IndexAction extends BaseAction{
    /** serialVersionUID. */
    private static final long serialVersionUID = -3462705876274842121L;

	@Autowired
	private NewsService newsService;

	@Autowired
	private DiseasesService diseasesService;

	@Autowired
	private WebDoctorService doctorService;

    // 省份列表1
    private List<ProvinceDto> provinceList;
    // 城市列表1
    private List<CityDto> cityList_1;
    // 城市列表2
    private List<CityDto> cityList_2;
    // 科室列表
    private List<DepartmentDto> oneLevelDepartmentList;
    // 热门医院
    private List<HospitalDto> hotHospitalList;
    // 城市对应的医院
    private List<HospitalDto> cityHospitalList;
    // 名医列表
    private List<DoctorDto> famousDoctorList;

	private List<NewsDto> hotNews;

    /**
     * @description 首页
     * @return
     * @throws Exception
     */
    @Override
	public String execute() throws Exception {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }
        this.getParams().put("currentPage", "index");
        // 设置城市
        if (CacheContainer.getProvinceCityMap().get(1).size() <= 8) {
            this.setCityList_1(CacheContainer.getProvinceCityMap().get(1));
        } else {
            int i = 0;
            cityList_1 = new ArrayList<CityDto>();
            cityList_2 = new ArrayList<CityDto>();
            for (CityDto city : CacheContainer.getProvinceCityMap().get(1)) {
                if (i < 8) {
                    cityList_1.add(city);
                } else {
                    cityList_2.add(city);
                }
                i++;
            }
        }

        // 设置科室
        this.setOneLevelDepartmentList(CacheContainer.getOneLevelDepartmentList());

        // 设置省份列表
        this.setProvinceList(CacheContainer.getProvinceList());

        // 设置热门医院列表
        this.setHotHospitalList(CacheContainer.getHotHospitalList());

        // 设置名医列表
        this.setFamousDoctorList(CacheContainer.getFamousDoctorList());

        return "index";
    }

	/**
	 * 根据平台科室查询名医
	 * 
	 * @return
	 */
	public String getFomousDoctorsByType() {
		DoctorDto doctorDto = new DoctorDto();
		if (Util.isNotEmpty(this.getParams().get("parentId"))) {
			doctorDto.setParentId(Integer.parseInt(this.getParams().get("parentId")));
		}
		return null;
	}
    /**
     * @description 根据城市id获取医院
     * @return
     */
    public String getHospitalByCityId() {
        int cityId = Integer.parseInt(this.getParams().get("cityId"));
        if (cityId == 0) {
            this.setHotHospitalList(CacheContainer.getHotHospitalList());
        } else {
            this.setCityHospitalList(CacheContainer.getCityHospitalMap().get(cityId));
        }
        return "hospitalList";
    }

	/**
	 * @description 健康咨询
	 * @return
	 * @throws Exception
	 */
	public String medicalNews() throws Exception {
		if (this.getParams() == null) {
			this.setParams(new HashMap<String, String>());
		}

		// 获取新闻列表
		NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
		newsDto.setCategory1(1);

		// 获取热门新闻列表
		Page page = new Page();
		page.setCurrentPage(1);
		page.setPageSize(6);
		newsDto.setPage(page);
		hotNews = newsService.queryNewsByTop(newsDto);
		return "helthNewsList";
	}

	/**
	 * @description 新药介绍页面
	 * @return
	 * @throws Exception
	 */
	public String newDrugIntroduct() throws Exception {
		if (this.getParams() == null) {
			this.setParams(new HashMap<String, String>());
		}

		// 获取新药列表
		NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
		newsDto.setCategory1(5);

		// 获取热门新药列表
		Page page = new Page();
		page.setCurrentPage(1);
		page.setPageSize(6);
		newsDto.setPage(page);
		this.setHotNews(newsService.queryNewsByTop(newsDto));

		return "helthNewsList";
	}

	/**
	 * @description 养生保健页面
	 * @return
	 * @throws Exception
	 */
	public String healthCare() throws Exception {
		if (this.getParams() == null) {
			this.setParams(new HashMap<String, String>());
		}

		// 获取新闻列表
		NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
		newsDto.setCategory1(26);

		// 获取热门新闻列表
		Page page = new Page();
		page.setCurrentPage(1);
		page.setPageSize(6);
		newsDto.setPage(page);
		this.setHotNews(newsService.queryNewsByTop(newsDto));

		return "helthNewsList";
	}

	/**
	 * @description 病例分析页面
	 * @return
	 * @throws Exception
	 */
	public String caseAnalysis() throws Exception {
		if (this.getParams() == null) {
			this.setParams(new HashMap<String, String>());
		}

		// 获取病例分析页面列表
		NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
		newsDto.setCategory1(31);

		// 获取热门病例分析页面列表
		Page page = new Page();
		page.setCurrentPage(1);
		page.setPageSize(6);
		newsDto.setPage(page);
		this.setHotNews(newsService.queryNewsByTop(newsDto));

		return "helthNewsList";
	}

	/**
	 * @description 名医名方
	 * @return
	 * @throws Exception
	 */
	public String famousPrescription() throws Exception {
		if (this.getParams() == null) {
			this.setParams(new HashMap<String, String>());
		}

		// 获取新药列表
		NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
		newsDto.setCategory1(38);
		if (this.getPage() == null) {
			Page page = new Page();
			this.setPage(page);
			page.setCurrentPage(1);
			page.setPageSize(6);
		}
		newsDto.setPage(this.getPage());
		this.setHotNews(newsService.queryNewsByKindId(newsDto));

		return "helthNewsList";
	}


	/**
	 * @description 社区医疗页面
	 * @return
	 * @throws Exception
	 */
	public String communityHealth() throws Exception {
		if (this.getParams() == null) {
			this.setParams(new HashMap<String, String>());
		}

		// 获取新闻列表
		NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
		newsDto.setCategory1(12);
		// 获取热门新闻列表
		Page page = new Page();
		page.setCurrentPage(1);
		page.setPageSize(6);
		newsDto.setPage(page);
		this.setHotNews(newsService.queryNewsByTop(newsDto));

		return "helthNewsList";
	}

	/**
	 * @description 常见疾病页面
	 * @return
	 * @throws Exception
	 */
	public String commonDiseases() throws Exception {
		if (this.getParams() == null) {
			this.setParams(new HashMap<String, String>());
		}

		// 获取常见疾病列表
		DiseasesDto diseasesDto = this.getDtoFromParams(DiseasesDto.class);
		if (this.getPage() == null) {
			Page page = new Page();
			this.setPage(page);
			page.setCurrentPage(1);
			page.setPageSize(10);
		}
		diseasesDto.setPage(this.getPage());
		this.setDataList(diseasesService.queryDiseasesList(diseasesDto));
		// this.getParams().put("currentPage", "commonDiseases");
		return "commonDiseases";
	}

	/**
	 * 获得平台一级科室医生
	 * 
	 * @return
	 */
	public String queryOneLevelDoctor() throws Exception {
		int key = Integer.parseInt(this.getParams().get("parentId"));
		if (key == 0) {
			DoctorDto doctorDto = new DoctorDto();
			famousDoctorList = doctorService.queryDoctorTop(doctorDto);
		} else {
			DepartmentDto departmentDto = new DepartmentDto();
			departmentDto.setParentId(key);
			famousDoctorList = doctorService.queryDoctorByQujiuyiDepart(departmentDto);
		}
		return "famousDoctor";
	}

    public List<CityDto> getCityList_1() {
        return cityList_1;
    }

    public void setCityList_1(List<CityDto> cityList_1) {
        this.cityList_1 = cityList_1;
    }

    public List<CityDto> getCityList_2() {
        return cityList_2;
    }

    public void setCityList_2(List<CityDto> cityList_2) {
        this.cityList_2 = cityList_2;
    }

    public List<DepartmentDto> getOneLevelDepartmentList() {
        return oneLevelDepartmentList;
    }

    public void setOneLevelDepartmentList(List<DepartmentDto> oneLevelDepartmentList) {
        this.oneLevelDepartmentList = oneLevelDepartmentList;
    }

    public List<ProvinceDto> getProvinceList() {
        return provinceList;
    }

    public void setProvinceList(List<ProvinceDto> provinceList) {
        this.provinceList = provinceList;
    }

    public List<HospitalDto> getHotHospitalList() {
        return hotHospitalList;
    }

    public void setHotHospitalList(List<HospitalDto> hotHospitalList) {
        this.hotHospitalList = hotHospitalList;
    }

    public List<HospitalDto> getCityHospitalList() {
        return cityHospitalList;
    }

    public void setCityHospitalList(List<HospitalDto> cityHospitalList) {
        this.cityHospitalList = cityHospitalList;
    }

    public List<DoctorDto> getFamousDoctorList() {
        return famousDoctorList;
    }

    public void setFamousDoctorList(List<DoctorDto> famousDoctorList) {
        this.famousDoctorList = famousDoctorList;
    }

	public List<NewsDto> getHotNews() {
		return hotNews;
	}

	public void setHotNews(List<NewsDto> hotNews) {
		this.hotNews = hotNews;
	}
}