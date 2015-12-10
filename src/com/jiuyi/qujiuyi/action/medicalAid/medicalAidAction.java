package com.jiuyi.qujiuyi.action.medicalAid;

import java.util.HashMap;

import com.jiuyi.qujiuyi.action.BaseAction;

/**
 * @description 医疗救助action
 * @author pj
 * @createTime 2015年11月2日
 */
public class medicalAidAction extends BaseAction{

    /** serialVersionUID. */
    private static final long serialVersionUID = 1L;

    public String medicalAid() {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }
        this.getParams().put("currentPage", "medicalAid");
        return "medicalAid";
    }
}
