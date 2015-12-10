package com.jiuyi.qujiuyi.action.diseases;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.jiuyi.qujiuyi.action.BaseAction;
import com.jiuyi.qujiuyi.common.Util;
import com.jiuyi.qujiuyi.dto.Page;
import com.jiuyi.qujiuyi.dto.diseases.DiseasesDto;
import com.jiuyi.qujiuyi.dto.diseases.DiseasesKindDto;
import com.jiuyi.qujiuyi.dto.diseases.RecommendHospDocDto;
import com.jiuyi.qujiuyi.service.diseases.DiseasesService;

/**
 * @description diseases actoin
 * @author zhb
 * @createTime 2015年10月19日
 */
public class DiseasesAction extends BaseAction{
    /** serialVersionUID. */
    private static final long serialVersionUID = 3783803903190849402L;

    @Autowired
    private DiseasesService diseasesService;

	private DiseasesDto diseases;
	
	private List<RecommendHospDocDto> recommendHospitals;
	
	private List<RecommendHospDocDto> recommendDoctors;
	
	private List<RecommendHospDocDto> recommendMedicine;
	
	private List<DiseasesDto> diseasesList;

    private List<DiseasesKindDto> twoLevelNewsKindList;

    /**
     * @description 常见疾病页面
     * @return
     * @throws Exception
     */
    public String commonDiseases() throws Exception {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }

        // 获取分类
        this.setTwoLevelNewsKindList(diseasesService.queryDiseasesSorts());

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
        this.getParams().put("currentPage", "commonDiseases");
        return "commonDiseases";
    }

    /**
     * @description 常见疾病页面
     * @return
     * @throws Exception
     */
    public String commonDiseasesItem() throws Exception {
        // 获取常见疾病列表
        DiseasesDto diseasesDto = this.getDtoFromParams(DiseasesDto.class);
        if (diseasesDto.getCategory() != null && diseasesDto.getCategory() == 0) {
            diseasesDto.setCategory(null);
        }
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        diseasesDto.setPage(this.getPage());

        this.setDataList(diseasesService.queryDiseasesList(diseasesDto));

        return "commonDiseasesItem";
    }

    /**
     * @description 常见疾病详情页面
     * @return
     * @throws Exception
     */
    public String commonDiseasesDetail() throws Exception {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }

		DiseasesDto diseasesDto = new DiseasesDto();
		if (Util.isNotEmpty(this.getParams().get("diseasesId"))) {
			diseasesDto.setId(Integer.parseInt(this.getParams().get("diseasesId")));
		}

		// 查询当前疾病
		diseases = diseasesService.queryDiseasesById(diseasesDto);

		RecommendHospDocDto recommendHospDocDto = new RecommendHospDocDto();
		recommendHospDocDto.setDiseasesId(diseases.getId());

		// 查询推荐医院
		recommendHospitals = diseasesService.queryRecommodHospital(recommendHospDocDto);

		// 查询推荐医生
		recommendDoctors = diseasesService.queryRecommodDoctor(recommendHospDocDto);

		// 查询推荐药品
		recommendMedicine = diseasesService.queryRecommodMedicine(recommendHospDocDto);

        this.getParams().put("currentPage", "commonDiseases");
        return "commonDiseasesDetail";
    }

	/**
	 * 根据字母查询疾病
	 * 
	 * @return
	 */
	public String queryByABC() throws Exception {
		DiseasesDto diseasesDto = new DiseasesDto();
		if (Util.isNotEmpty(this.getParams().get("letter"))) {
			diseasesDto.setPinyin(this.getParams().get("letter"));
		}
		diseasesList = diseasesService.queryDiseasesByPinYin(diseasesDto);
		return "ABC";
	}

	public DiseasesDto getDiseases() {
		return diseases;
	}

	public void setDiseases(DiseasesDto diseases) {
		this.diseases = diseases;
	}

	public List<RecommendHospDocDto> getRecommendHospitals() {
		return recommendHospitals;
	}

	public void setRecommendHospitals(List<RecommendHospDocDto> recommendHospitals) {
		this.recommendHospitals = recommendHospitals;
	}

	public List<RecommendHospDocDto> getRecommendDoctors() {
		return recommendDoctors;
	}

	public void setRecommendDoctors(List<RecommendHospDocDto> recommendDoctors) {
		this.recommendDoctors = recommendDoctors;
	}

	public List<RecommendHospDocDto> getRecommendMedicine() {
		return recommendMedicine;
	}

	public void setRecommendMedicine(List<RecommendHospDocDto> recommendMedicine) {
		this.recommendMedicine = recommendMedicine;
	}

	public List<DiseasesDto> getDiseasesList() {
		return diseasesList;
	}

	public void setDiseasesList(List<DiseasesDto> diseasesList) {
		this.diseasesList = diseasesList;
	}

    public List<DiseasesKindDto> getTwoLevelNewsKindList() {
        return twoLevelNewsKindList;
    }

    public void setTwoLevelNewsKindList(List<DiseasesKindDto> twoLevelNewsKindList) {
        this.twoLevelNewsKindList = twoLevelNewsKindList;
    }
}