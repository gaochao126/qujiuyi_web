package com.jiuyi.qujiuyi.action.VIPService;

import java.util.HashMap;

import com.jiuyi.qujiuyi.action.BaseAction;

/**
 * @description 医患互动action
 * @author pj
 * @createTime 2015年10月31日
 */
public class VIPServiceAction extends BaseAction {

    /** serialVersionUID. */
    private static final long serialVersionUID = 1L;

    public String VIPService() {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }
        this.getParams().put("currentPage", "VIPService");
        return "VIPService";
    }

}
