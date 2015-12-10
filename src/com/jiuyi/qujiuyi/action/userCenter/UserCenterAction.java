package com.jiuyi.qujiuyi.action.userCenter;

import java.util.HashMap;
import java.util.Map;

import com.jiuyi.qujiuyi.action.BaseAction;
import com.jiuyi.qujiuyi.dto.register.PatientRegisterDto;

/**
 * @description 个人中心action
 * @author pj
 * @createTime 2015年11月12日
 */
public class UserCenterAction extends BaseAction {

    /** serialVersionUID. */
    private static final long serialVersionUID = 1L;

    /**
     * @description 个人中心页面
     * @return
     * @throws Exception
     */
    public String execute() throws Exception {
        return "userCenter";
    }
    
    /**
     * @description 我的预约
     * @return
     */
    public String myAppointment() {
        Map<String, String> params = new HashMap<String, String>();
        params.put("status", "0");
        this.setParams(params);
        this.packageData("getPatientRegisterList", PatientRegisterDto.class);
        return "myAppointment";
    }
}
