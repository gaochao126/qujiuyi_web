package com.jiuyi.qujiuyi.action.consult;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.jiuyi.qujiuyi.action.BaseAction;
import com.jiuyi.qujiuyi.common.CacheContainer;
import com.jiuyi.qujiuyi.common.Constants;
import com.jiuyi.qujiuyi.common.SysCfg;
import com.jiuyi.qujiuyi.common.URLInvoke;
import com.jiuyi.qujiuyi.dto.Page;
import com.jiuyi.qujiuyi.dto.area.ProvinceDto;
import com.jiuyi.qujiuyi.dto.chat.ChatDto;
import com.jiuyi.qujiuyi.dto.consult.ConsultDto;
import com.jiuyi.qujiuyi.dto.doctor.DoctorDto;
import com.jiuyi.qujiuyi.dto.patient.PatientDto;

/**
 * @description 咨询医师action
 * @author pj
 * @createTime 2015年10月26日
 */
public class ConsultAction extends BaseAction {
    /** serialVersionUID. */
    private static final long serialVersionUID = 1L;

    private List<ConsultDto> consults;

    private List<ProvinceDto> provinceList;

    /**
     * @description 咨询医师界面
     * @return
     */
    public String consultDoctor() {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }
        this.getParams().put("currentPage", "consultDoctor");
        if (this.getRequest().getSession().getAttribute("patient") != null) {
            return "consultDoctor";
        } else {
            return "login";
        }
    }

    /**
     * @description 创建图文咨询订单
     * @return
     */
    public void createMyConsult() {
        this.printData("createFreeConsult");
    }

    /**
     * @param params
     * @description 图文咨询详情
     * @return
     */
    public String consultDoctorDetail() {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }
        Map<String, String> params = new HashMap<String, String>();
        params.put("type", "0");
        this.setParams(params);

        this.packageData("queryMyConsult", ConsultDto.class);
        this.getParams().put("currentPage", "consultDoctor");
        return "consultDoctorDetail";
    }

    /**
     * @description 聊天资询条目
     * @return
     */
    public String chatConsultListItem() {
        Map<String, String> params = new HashMap<String, String>();
        params.put("type", "0");
        this.setParams(params);

        this.packageData("queryMyConsult", ConsultDto.class);
        return "chatConsultListItem";
    }

    /**
     * @description 查询医生(并且查询和该医生的聊天记录)
     * @return
     */
    public String queryChatDoctor() {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }
        // 获取医生信息
        this.setDataObj(this.packageData("queryDoctorInfo", DoctorDto.class));
        return "chatDoctor";
    }

    /**
     * 查询聊天记录
     * 
     * @return
     */
    public String chatList() {
        if (this.getPage() == null) {
            Page page = new Page();
            page.setPageSize(10);
            page.setCurrentPage(1);
            this.setPage(page);
        }
        // 获取聊天记录
        this.setDataList(this.getPackageDataList("queryChatList", ChatDto.class, SysCfg.getString("qujiuyi.chatUrl")));

        if (this.getDataList() != null) {
            Collections.reverse(this.getDataList());
        }
        return "chatList";
    }

    /**
     * 发送聊天信息
     * 
     * @return
     */
    public String sendChat() {
        this.printData2("pushMessage");
        return null;
    }

    /**
     * @description 在线医疗
     * @return
     */
    public String onlineMedical() {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }

        this.setProvinceList(CacheContainer.getProvinceList());

        this.getParams().put("currentPage", "onlineMedical");
        return "onlineMedical";
    }

    public String printData2(String cmd) {
        Map<String, Object> reqMap = new HashMap<String, Object>();
        reqMap.put("cmd", cmd);
        reqMap.put("deviceType", 3);
        HttpSession session = this.request.getSession();
        PatientDto patient = (PatientDto) session.getAttribute("patient");
        if (patient != null) {
            reqMap.put("token", patient.getToken());
        }

        Map<String, Object> params = new HashMap<String, Object>();
        reqMap.put("params", params);
        params.put("page", this.getPage());
        if (this.getParams() != null) {
            params.putAll(this.getParams());
        }

        String result = URLInvoke.post(SysCfg.getString("qujiuyi.chatUrl"), Constants.gson.toJson(reqMap));
        print(result);
        return result;
    }

    public List<ConsultDto> getConsults() {
        return consults;
    }

    public void setConsults(List<ConsultDto> consults) {
        this.consults = consults;
    }

    public List<ProvinceDto> getProvinceList() {
        return provinceList;
    }

    public void setProvinceList(List<ProvinceDto> provinceList) {
        this.provinceList = provinceList;
    }
}
