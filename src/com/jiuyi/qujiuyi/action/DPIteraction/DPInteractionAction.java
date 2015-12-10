package com.jiuyi.qujiuyi.action.DPIteraction;

import java.util.HashMap;

import com.jiuyi.qujiuyi.action.BaseAction;

/**
 * @description 医患互动action
 * @author pj
 * @createTime 2015年11月3日
 */
public class DPInteractionAction extends BaseAction {

    /** serialVersionUID. */
    private static final long serialVersionUID = 1L;

    public String DPInterate() {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }
        this.getParams().put("currentPage", "DPInterate");
        return "DPInterate";
    }
}
