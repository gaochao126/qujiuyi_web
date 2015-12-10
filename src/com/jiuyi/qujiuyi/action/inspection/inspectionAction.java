package com.jiuyi.qujiuyi.action.inspection;

import java.util.HashMap;

import com.jiuyi.qujiuyi.action.BaseAction;

/**
 * @description 检查检验
 * @author pj
 * @createTime 2015年10月30日
 */
public class inspectionAction extends BaseAction {

    /** serialVersionUID. */
    private static final long serialVersionUID = 1L;

    /**
     * @description 检查检验
     * @return
     */
    public String myInspection() {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }
        this.getParams().put("currentPage", "myInspection");
        return "myInspection";
    }
}
