package com.jiuyi.qujiuyi.action.onlineLearning;

import java.util.HashMap;

import com.jiuyi.qujiuyi.action.BaseAction;

/**
 * @description 在线学习action
 * @author pj
 * @createTime 2015年10月30日
 */
public class onlineLearningAction extends BaseAction {

    /** serialVersionUID. */
    private static final long serialVersionUID = 1L;

    /**
     * @description 在线学习界面
     * @return
     */
    public String onlineLearning() {
        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }
        this.getParams().put("currentPage", "onlineLearning");
        return "onlineLearning";
    }


}
