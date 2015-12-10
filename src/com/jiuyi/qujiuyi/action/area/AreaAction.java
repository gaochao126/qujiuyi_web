package com.jiuyi.qujiuyi.action.area;

import com.jiuyi.qujiuyi.action.BaseAction;
import com.jiuyi.qujiuyi.common.CacheContainer;

/**
 * @description area action
 * @author zhb
 * @createTime 2015年10月10日
 */
public class AreaAction extends BaseAction {
    /** serialVersionUID. */
    private static final long serialVersionUID = -7587280296725807279L;

    /**
     * @description 城市下拉列表
     * @return
     */
    public String citySelect() {
        this.setDataList(CacheContainer.getProvinceCityMap().get(Integer.parseInt(this.getParams().get("provinceId"))));
        return "citySelect";
    }
}