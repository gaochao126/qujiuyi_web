package com.jiuyi.qujiuyi.action.news;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.jiuyi.qujiuyi.action.BaseAction;
import com.jiuyi.qujiuyi.common.CacheContainer;
import com.jiuyi.qujiuyi.common.Constants;
import com.jiuyi.qujiuyi.dto.Page;
import com.jiuyi.qujiuyi.dto.common.ResponseDto;
import com.jiuyi.qujiuyi.dto.news.NewsCommentDto;
import com.jiuyi.qujiuyi.dto.news.NewsDto;
import com.jiuyi.qujiuyi.dto.news.NewsKindDto;
import com.jiuyi.qujiuyi.dto.patient.PatientDto;
import com.jiuyi.qujiuyi.service.BusinessException;
import com.jiuyi.qujiuyi.service.news.NewsService;

/**
 * @description news action
 * @author zhb
 * @createTime 2015年10月13日
 */
public class NewsAction extends BaseAction {
    /** serialVersionUID. */
    private static final long serialVersionUID = -591021020126946158L;

    @Autowired
    private NewsService newsService;

    private List<NewsDto> hotNews;

    private List<NewsKindDto> twoLevelNewsKindList;

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
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        newsDto.setPage(this.getPage());
        this.setDataList(newsService.queryNewsByKindId(newsDto));

        // 获取热门新药列表
        Page page = new Page();
        page.setCurrentPage(1);
        page.setPageSize(6);
        newsDto.setPage(page);
        this.setHotNews(newsService.queryNewsByTop(newsDto));

        this.getParams().put("currentPage", "newDrugIntroduct");
        return "newDrugIntroduct";
    }

    /**
     * @description 新药介绍
     * @return
     * @throws Exception
     */
    public String newDrugIntroductItem() throws Exception {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }

        NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
        if (newsDto.getCategory2() == null || newsDto.getCategory2() == 0) {
            newsDto.setCategory1(5);
            newsDto.setCategory2(null);
        }
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        newsDto.setPage(this.getPage());
        this.setDataList(newsService.queryNewsByKindId(newsDto));

        return "newDrugIntroductItem";
    }

    /**
     * @description 新药介绍详情
     * @return
     * @throws Exception
     */
    public String newDrugIntroductDetail() throws Exception {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }

        // 获取新药详情
        NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
        this.setDataObj(newsService.queryNewsById(newsDto));

        // 获取评评论列表
        NewsCommentDto comment = new NewsCommentDto();
        comment.setArticleId(newsDto.getId());
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        comment.setPage(this.getPage());
        this.setDataList(newsService.queryCommentByNewsId(comment));

        // 获取热门新药列表
        if (newsDto.getCategory1() == null && newsDto.getCategory2() == null) {
            newsDto.setCategory1(5);
        }
        Page page = new Page();
        page.setCurrentPage(1);
        page.setPageSize(6);
        newsDto.setPage(page);
        this.setHotNews(newsService.queryNewsByTop(newsDto));

        this.getParams().put("currentPage", "newDrugIntroduct");
        return "newDrugIntroductDetail";
    }

    /**
     * @description 医疗动态
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
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        newsDto.setPage(this.getPage());
        this.setDataList(newsService.queryNewsByKindId(newsDto));
        this.setPage(newsDto.getPage());

        // 获取热门新闻列表
        Page page = new Page();
        page.setCurrentPage(1);
        page.setPageSize(6);
        newsDto.setPage(page);
        this.setHotNews(newsService.queryNewsByTop(newsDto));

        this.getParams().put("currentPage", "medicalNews");
        return "medicalNews";
    }

    /**
     * @description 医疗动态
     * @return
     * @throws Exception
     */
    public String medicalNewsItem() throws Exception {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }

        NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
        if (newsDto.getCategory2() == null || newsDto.getCategory2() == 0) {
            newsDto.setCategory1(1);
            newsDto.setCategory2(null);
        }
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        newsDto.setPage(this.getPage());
        this.setDataList(newsService.queryNewsByKindId(newsDto));

        return "medicalNewsItem";
    }

    /**
     * @description 医疗动态详情
     * @return
     * @throws Exception
     */
    public String medicalNewsDetail() throws Exception {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }

        // 获取医疗动态详情
        NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
        this.setDataObj(newsService.queryNewsById(newsDto));

        // 获取评评论列表
        NewsCommentDto comment = new NewsCommentDto();
        comment.setArticleId(newsDto.getId());
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        comment.setPage(this.getPage());
        this.setDataList(newsService.queryCommentByNewsId(comment));

        // 获取热门医疗动态列表
        newsDto.setCategory1(1);
        Page page = new Page();
        page.setCurrentPage(1);
        page.setPageSize(6);
        newsDto.setPage(page);
        this.setHotNews(newsService.queryNewsByTop(newsDto));

        this.getParams().put("currentPage", "medicalNews");
        return "medicalNewsDetail";
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

        // 获取新闻二级分类列表
        this.setTwoLevelNewsKindList(CacheContainer.getTwoLevelNewsKindListMap().get(31));

        // 获取病例分析页面列表
        NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
        newsDto.setCategory1(31);
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        newsDto.setPage(this.getPage());
        this.setDataList(newsService.queryNewsByKindId(newsDto));

        // 获取热门病例分析页面列表
        Page page = new Page();
        page.setCurrentPage(1);
        page.setPageSize(6);
        newsDto.setPage(page);
        this.setHotNews(newsService.queryNewsByTop(newsDto));

        this.getParams().put("currentPage", "caseAnalysis");
        return "caseAnalysis";
    }

    /**
     * @description 病例分析页面
     * @return
     * @throws Exception
     */
    public String caseAnalysisItem() throws Exception {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }

        NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
        if (newsDto.getCategory2() == null || newsDto.getCategory2() == 0) {
            newsDto.setCategory1(31);
            newsDto.setCategory2(null);
        }
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        newsDto.setPage(this.getPage());
        this.setDataList(newsService.queryNewsByKindId(newsDto));

        return "caseAnalysisItem";
    }

    /**
     * @description 病例分析详情
     * @return
     * @throws Exception
     */
    public String caseAnalysisDetail() throws Exception {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }

        // 获取病例分析详情
        NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
        this.setDataObj(newsService.queryNewsById(newsDto));

        // 获取评评论列表
        NewsCommentDto comment = new NewsCommentDto();
        comment.setArticleId(newsDto.getId());
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        comment.setPage(this.getPage());
        this.setDataList(newsService.queryCommentByNewsId(comment));

        // 获取热门病例分析列表
        newsDto.setCategory1(31);
        Page page = new Page();
        page.setCurrentPage(1);
        page.setPageSize(6);
        newsDto.setPage(page);
        this.setHotNews(newsService.queryNewsByTop(newsDto));

        this.getParams().put("currentPage", "caseAnalysis");
        return "caseAnalysisDetail";
    }

    /**
     * @description 优秀医师页面
     * @return
     */
    public String excellentDoctor() {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }
        this.getParams().put("currentPage", "excellentDoctor");
        return "excellentDoctor";
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

        // 获取新闻二级分类列表
        this.setTwoLevelNewsKindList(CacheContainer.getTwoLevelNewsKindListMap().get(26));

        // 获取新闻列表
        NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
        newsDto.setCategory1(26);
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        newsDto.setPage(this.getPage());
        this.setDataList(newsService.queryNewsByKindId(newsDto));

        // 获取热门新闻列表
        Page page = new Page();
        page.setCurrentPage(1);
        page.setPageSize(6);
        newsDto.setPage(page);
        this.setHotNews(newsService.queryNewsByTop(newsDto));

        this.getParams().put("currentPage", "healthCare");
        return "healthCare";
    }

    /**
     * @description 养生保健页面
     * @return
     * @throws Exception
     */
    public String healthCareItem() throws Exception {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }

        NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
        if (newsDto.getCategory2() == null || newsDto.getCategory2() == 0) {
            newsDto.setCategory1(26);
            newsDto.setCategory2(null);
        }
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        newsDto.setPage(this.getPage());
        this.setDataList(newsService.queryNewsByKindId(newsDto));

        return "healthCareItem";
    }

    /**
     * @description 养生保健详情页面
     * @return
     * @throws Exception
     */
    public String healthCareDetail() throws Exception {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }

        // 获取养生保健详情
        NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
        this.setDataObj(newsService.queryNewsById(newsDto));

        // 获取评评论列表
        NewsCommentDto comment = new NewsCommentDto();
        comment.setArticleId(newsDto.getId());
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        comment.setPage(this.getPage());
        this.setDataList(newsService.queryCommentByNewsId(comment));

        // 获取热门养生保健列表
        newsDto.setCategory1(26);
        Page page = new Page();
        page.setCurrentPage(1);
        page.setPageSize(6);
        newsDto.setPage(page);
        this.setHotNews(newsService.queryNewsByTop(newsDto));

        this.getParams().put("currentPage", "healthCare");
        return "healthCareDetail";
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
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        newsDto.setPage(this.getPage());
        this.setDataList(newsService.queryNewsByKindId(newsDto));

        // 获取热门新闻列表
        Page page = new Page();
        page.setCurrentPage(1);
        page.setPageSize(6);
        newsDto.setPage(page);
        this.setHotNews(newsService.queryNewsByTop(newsDto));

        this.getParams().put("currentPage", "communityHealth");
        return "communityHealth";
    }

    /**
     * @description 社区医疗页面
     * @return
     * @throws Exception
     */
    public String communityHealthItem() throws Exception {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }

        NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
        if (newsDto.getCategory2() == null || newsDto.getCategory2() == 0) {
            newsDto.setCategory1(12);
            newsDto.setCategory2(null);
        }
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        newsDto.setPage(this.getPage());
        this.setDataList(newsService.queryNewsByKindId(newsDto));

        return "communityHealthItem";
    }

    /**
     * @description 评论新闻
     * @return
     * @throws Exception
     */
    public String commentNews() {
        PatientDto patient = (PatientDto) this.getRequest().getSession().getAttribute("patient");
        ResponseDto resp = new ResponseDto();
        if (patient == null) {
            resp.setResultCode(2);
            print(Constants.gson.toJson(resp));
            return null;
        }

        try {
            NewsCommentDto comment = this.getDtoFromParams(NewsCommentDto.class);
            comment.setAuthorId(patient.getId());
            newsService.insertComment(comment);
            resp.setResultCode(0);
        } catch (Exception e) {
            resp.setResultCode(1);
            if (e instanceof BusinessException) {
                resp.setResultDesc(e.getMessage());
            } else {
                resp.setResultDesc("系统正忙,请稍候再试");
            }
        }

        print(Constants.gson.toJson(resp));

        return null;
    }

    /**
     * @description 中华医联
     * @return
     */
    public String cmtu() {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }

        this.getParams().put("currentPage", "cmtu");
        return "cmtu";
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

        // 获取新闻二级分类列表
        this.setTwoLevelNewsKindList(CacheContainer.getTwoLevelNewsKindListMap().get(38));

        // 获取新药列表
        NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
        newsDto.setCategory1(38);
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        newsDto.setPage(this.getPage());
        this.setDataList(newsService.queryNewsByKindId(newsDto));

        this.getParams().put("currentPage", "famousPrescription");
        return "famousPrescription";
    }

    /**
     * @description 名医名方
     * @return
     * @throws Exception
     */
    public String famousPrescriptionItem() throws Exception {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }

        NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
        if (newsDto.getCategory2() == null || newsDto.getCategory2() == 0) {
            newsDto.setCategory1(38);
            newsDto.setCategory2(null);
        }
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        newsDto.setPage(this.getPage());
        this.setDataList(newsService.queryNewsByKindId(newsDto));

        return "famousPrescriptionItem";
    }

    /**
     * @description 名医名方详情
     * @return
     * @throws Exception
     */
    public String famousPrescriptionDetail() throws Exception {
        // 获取名医名方详情
        NewsDto newsDto = this.getDtoFromParams(NewsDto.class);
        this.setDataObj(newsService.queryNewsById(newsDto));

        // 获取评论列表
        NewsCommentDto comment = new NewsCommentDto();
        comment.setArticleId(newsDto.getId());
        if (this.getPage() == null) {
            Page page = new Page();
            this.setPage(page);
            page.setCurrentPage(1);
            page.setPageSize(10);
        }
        comment.setPage(this.getPage());
        this.setDataList(newsService.queryCommentByNewsId(comment));

        this.getParams().put("currentPage", "famousPrescription");
        return "famousPrescriptionDetail";
    }

    /**
     * @description 健康档案
     * @return
     */
    public String healthRecord() {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }

        this.getParams().put("currentPage", "healthRecord");
        return "healthRecord";
    }

    /**
     * @description 特色医疗-特色专科页面
     * @return
     */
    public String featureMedicalDepartment() {
        return "featureMedicalDepartment";
    }

    public List<NewsDto> getHotNews() {
        return hotNews;
    }

    public void setHotNews(List<NewsDto> hotNews) {
        this.hotNews = hotNews;
    }

    public List<NewsKindDto> getTwoLevelNewsKindList() {
        return twoLevelNewsKindList;
    }

    public void setTwoLevelNewsKindList(List<NewsKindDto> twoLevelNewsKindList) {
        this.twoLevelNewsKindList = twoLevelNewsKindList;
    }
}