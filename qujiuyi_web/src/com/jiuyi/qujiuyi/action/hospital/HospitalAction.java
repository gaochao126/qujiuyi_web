package com.jiuyi.qujiuyi.action.hospital;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jiuyi.qujiuyi.action.BaseAction;
import com.jiuyi.qujiuyi.common.CacheContainer;
import com.jiuyi.qujiuyi.common.Util;
import com.jiuyi.qujiuyi.dto.department.DepartmentDto;
import com.jiuyi.qujiuyi.dto.hospital.HospitalDto;

/**
 * @description hospital action
 * @author zhb
 * @createTime 2015年10月10日
 */
public class HospitalAction extends BaseAction {
    /** serialVersionUID. */
    private static final long serialVersionUID = 379805788990920293L;

    private List<DepartmentDto> departmentList;

    /**
     * @description 医院下拉列表
     * @return
     */
    public String hospitalSelect() {
        this.packageData("getHospitalList", HospitalDto.class);
        return "hospitalSelect";
    }

    /**
     * @description 医院信息页面
     * @return
     */
    public String hospitalInfo() {
        // 获取一级科室
        String hospitalId = this.getParams().get("id");
        List<DepartmentDto> departmentList = Util.isNotEmpty(hospitalId) ? CacheContainer.getHospitalDepartmentListMap().get(Integer.parseInt(hospitalId))
                : new ArrayList<DepartmentDto>();
        departmentList = departmentList == null ? new ArrayList<DepartmentDto>() : departmentList;
        Map<Integer, String> imageMap = new HashMap<Integer, String>();
        for (DepartmentDto department : CacheContainer.getOneLevelDepartmentList()) {
            imageMap.put(department.getId(), department.getIcon());
        }
        this.departmentList = new ArrayList<DepartmentDto>();
        for (DepartmentDto department : departmentList) {
            if (department.getId().equals(department.getParentId())) {
                department.setIcon(imageMap.get(department.getStandardNameId()));
                this.departmentList.add(department);
            }
        }

        // 获取医院信息
        this.setDataObj(CacheContainer.getHospitalMap().get(Integer.parseInt(this.getParams().get("id"))));

        return "hospitalInfo";
    }

    public String dialog() {
        this.packageData("getHospitalList", HospitalDto.class);
        return "dialog";
    }

    public List<DepartmentDto> getDepartmentList() {
        return departmentList;
    }

    public void setDepartmentList(List<DepartmentDto> departmentList) {
        this.departmentList = departmentList;
    }
}