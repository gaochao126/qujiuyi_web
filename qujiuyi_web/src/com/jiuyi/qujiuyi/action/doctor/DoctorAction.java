package com.jiuyi.qujiuyi.action.doctor;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.google.gson.JsonObject;
import com.jiuyi.qujiuyi.action.BaseAction;
import com.jiuyi.qujiuyi.common.CacheContainer;
import com.jiuyi.qujiuyi.common.Constants;
import com.jiuyi.qujiuyi.common.SysCfg;
import com.jiuyi.qujiuyi.common.Util;
import com.jiuyi.qujiuyi.dto.department.DepartmentDto;
import com.jiuyi.qujiuyi.dto.doctor.DoctorDto;
import com.jiuyi.qujiuyi.dto.register.RegisterPlanDto;
import com.jiuyi.qujiuyi.service.BusinessException;
import com.jiuyi.qujiuyi.service.doctor.DoctorService;

/**
 * @description doctor action
 * @author zhb
 * @createTime 2015年10月11日
 */
public class DoctorAction extends BaseAction {
    /** serialVersionUID. */
    private static final long serialVersionUID = -6771603568284344792L;

    @Autowired
    private DoctorService doctorService;

    /** 本周日期列表. */
    private List<Date> weekList_1;

    /** 未来一周日期列表. */
    private List<Date> weekList_2;

    /** 未来两周日期列表. */
    private List<Date> weekList_3;

    /** 本周挂号计划列表. */
    private List<Object> registerPlan_1;

    /** 未来一周挂号计划列表. */
    private List<Object> registerPlan_2;

    /** 未来两周挂号计划列表. */
    private List<Object> registerPlan_3;

    /** 一级科室列表. */
    private List<DepartmentDto> oneLevelDepartmentList;

    /** 二级科室列表. */
    private List<DepartmentDto> twoLevelDepartmentList;

    /** 医生列表. */
    private List<DoctorDto> doctorList;

    private Date currentDate;

    /**
     * @description 医生详情页面
     * @return
     */
    public String doctorInfo() throws Exception {
        // 获取医生信息
        this.setDataObj(CacheContainer.getOfflineDoctorMap().get(Integer.parseInt(this.getParams().get("id"))));

        // 设置日期列表
        long time = System.currentTimeMillis();
        setWeekList_1(Util.getDateListOfWeek(new Date(time)));
        setWeekList_2(Util.getDateListOfWeek(new Date(time + 7 * 24 * 60 * 60 * 1000L)));
        setWeekList_3(Util.getDateListOfWeek(new Date(time + 14 * 24 * 60 * 60 * 1000L)));

        // 获取医生挂号计划表
        this.getParams().put("doctorId", this.getParams().get("id"));
        this.getParams().put("week", "1");
        registerPlan_1 = this.getPackageDataList("getDoctorRegisterPlan", RegisterPlanDto.class, SysCfg.getString("qujiuyi.patientUrl"));
        this.getParams().put("week", "2");
        registerPlan_2 = this.getPackageDataList("getDoctorRegisterPlan", RegisterPlanDto.class, SysCfg.getString("qujiuyi.patientUrl"));
        this.getParams().put("week", "3");
        registerPlan_3 = this.getPackageDataList("getDoctorRegisterPlan", RegisterPlanDto.class, SysCfg.getString("qujiuyi.patientUrl"));

        this.currentDate = new Date();

        return "doctorInfo";
    }

    /**
     * @description 医生选择页面
     * @return
     */
    @SuppressWarnings("unchecked")
    public String chooseDoctor() {
        if (this.getParams() == null) {
            this.setParams((Map<String, String>) this.getRequest().getSession().getAttribute("params"));
        } else {
            this.getRequest().getSession().setAttribute("params", this.getParams());
        }

        String hospitalId = this.getParams().get("hospitalId");

        if (Util.isNotEmpty(hospitalId)) {// 按医院科室查询
            // 获取一级科室
            List<DepartmentDto> departmentList = Util.isNotEmpty(hospitalId) ? CacheContainer.getHospitalDepartmentListMap().get(Integer.parseInt(hospitalId))
                    : new ArrayList<DepartmentDto>();
            departmentList = departmentList == null ? new ArrayList<DepartmentDto>() : departmentList;
            this.oneLevelDepartmentList = new ArrayList<DepartmentDto>();
            for (DepartmentDto department : departmentList) {
                if (department.getId().equals(department.getParentId())) {
                    this.oneLevelDepartmentList.add(department);
                }
            }

            // 获取二级科室
            String departmentId = this.getParams().get("departmentId");
            this.twoLevelDepartmentList = new ArrayList<DepartmentDto>();
            if (Util.isNotEmpty(departmentId) && !"0".equals(departmentId)) {
                for (DepartmentDto department : departmentList) {
                    if (departmentId.equals(department.getParentId().toString()) && !department.getId().equals(department.getParentId())) {
                        this.twoLevelDepartmentList.add(department);
                    }
                }
            }

            // 获取医生列表
            List<DoctorDto> doctorList = CacheContainer.getOfflineHospitalDoctorMap().get(Integer.parseInt(this.getParams().get("hospitalId")));
            doctorList = doctorList == null ? new ArrayList<DoctorDto>() : doctorList;
            this.doctorList = new ArrayList<DoctorDto>();
            String childDepartmentId = this.getParams().get("childDepartmentId");
            String titleId = this.getParams().get("titleId");
            for (DoctorDto doctor : doctorList) {
                boolean b = true;
                if (Util.isNotEmpty(departmentId) && !"0".equals(departmentId) && !departmentId.equals(doctor.getParentDepartmentId().toString())) {
                    b = false;
                }
                if (Util.isNotEmpty(childDepartmentId) && !"0".equals(childDepartmentId) && !childDepartmentId.equals(doctor.getDepartmentId().toString())) {
                    b = false;
                }
                if (Util.isNotEmpty(titleId) && !"0".equals(titleId) && !titleId.equals(doctor.getTitleId().toString())) {
                    b = false;
                }
                if (b) {
                    this.doctorList.add(doctor);
                }
            }
        } else {// 按平台科室查询
            // 获取一级科室
            this.oneLevelDepartmentList = CacheContainer.getOneLevelDepartmentList();

            // 获取二级科室
            String departmentId = this.getParams().get("departmentId");
            this.twoLevelDepartmentList = new ArrayList<DepartmentDto>();
            if (Util.isNotEmpty(departmentId) && !"0".equals(departmentId)) {
                for (DepartmentDto department : CacheContainer.getTwoLevelDepartmentList()) {
                    if (departmentId.equals(department.getParentId().toString()) && !department.getId().equals(department.getParentId())) {
                        this.twoLevelDepartmentList.add(department);
                    }
                }
            }

            // 获取医生列表
            Map<Integer, DoctorDto> offlineDoctorMap = CacheContainer.getOfflineDoctorMap();
            doctorList = doctorList == null ? new ArrayList<DoctorDto>() : doctorList;
            this.doctorList = new ArrayList<DoctorDto>();
            String childDepartmentId = this.getParams().get("childDepartmentId");
            String titleId = this.getParams().get("titleId");
            for (Integer key : offlineDoctorMap.keySet()) {
                DoctorDto doctor = offlineDoctorMap.get(key);
                boolean b = true;
                if (Util.isNotEmpty(departmentId) && !"0".equals(departmentId)) {
                    if (!departmentId.equals(CacheContainer.getHospitalDepartmentMap().get(doctor.getParentDepartmentId()).getStandardNameId().toString())) {
                        b = false;
                    }
                }
                if (Util.isNotEmpty(childDepartmentId) && !"0".equals(childDepartmentId)) {
                    if (!childDepartmentId.equals(CacheContainer.getHospitalDepartmentMap().get(doctor.getDepartmentId()).getStandardNameId().toString())) {
                        b = false;
                    }
                }
                if (Util.isNotEmpty(titleId) && !"0".equals(titleId) && !titleId.equals(doctor.getTitleId().toString())) {
                    b = false;
                }
                if (b) {
                    this.doctorList.add(doctor);
                }
            }
        }

        return "chooseDoctor";
    }

    /**
     * @description 发送手机验证码
     * @return
     */
    public String sendVerifyCode() {
        this.printData("getVerifyCode");
        return null;
    }

    /**
     * @description 医生注册页面
     * @return
     */
    public String register() {
        this.setOneLevelDepartmentList(CacheContainer.getOneLevelDepartmentList());
        return "register";
    }

    /**
     * @description 判断号码是否已注册
     * @return
     * @throws Exception
     */
    public String isRegistered() throws Exception {
        DoctorDto doctor = doctorService.getDoctorByPhone(this.getDtoFromParams(DoctorDto.class));
        Map<String, Object> map = new HashMap<String, Object>();
        if (doctor != null) {
            map.put("resultCode", 1);
            map.put("resultDesc", "手机号已注册");
        } else {
            map.put("resultCode", 0);
            map.put("resultDesc", "手机号未注册");
        }
        this.print(Constants.gson.toJson(map));
        return null;
    }

    /**
     * @description 医生注册
     * @return
     */
    public String doRegister() {
        // 校验验证码
        String result = this.packageData("checkVerificationCode", Object.class);
        JsonObject json = Constants.jsonParser.parse(result).getAsJsonObject();
        if (!(json.has("resultCode") && "0".equals(json.get("resultCode").getAsString()))) {
            this.print(result);
            return null;
        }

        // 注册
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            doctorService.register(this.getDtoFromParams(DoctorDto.class));
            map.put("resultCode", 0);
            map.put("resultDesc", "注册成功");
            HttpSession session = this.getRequest().getSession();
            session.setAttribute("doctor", this.getDtoFromParams(DoctorDto.class));
        } catch (Exception e) {
            if (e instanceof BusinessException) {
                map.put("resultCode", 1);
                map.put("resultDesc", e.getMessage());
            } else {
                map.put("resultCode", 1);
                map.put("resultDesc", "系统异常");
            }
            logger.error("", e);
        }
        result = Constants.gson.toJson(map);
        this.print(result);
        return null;
    }

    /**
     * @description 个人资提交
     * @return
     */
    public String commitPersonageInformation() {
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            HttpSession session = this.getRequest().getSession();
            DoctorDto doctor = (DoctorDto) session.getAttribute("doctor");
            DoctorDto _doctor = this.getDtoFromParams(DoctorDto.class);
            _doctor.setPhone(doctor.getPhone());
            doctorService.commitPersonageInformation(_doctor);
            map.put("resultCode", 0);
            map.put("resultDesc", "提交成功");
        } catch (Exception e) {
            if (e instanceof BusinessException) {
                map.put("resultCode", 1);
                map.put("resultDesc", e.getMessage());
            } else {
                map.put("resultCode", 1);
                map.put("resultDesc", "系统异常");
            }
            logger.error("", e);
        }
        this.print(Constants.gson.toJson(map));
        return null;
    }

    public List<Date> getWeekList_1() {
        return weekList_1;
    }

    public void setWeekList_1(List<Date> weekList_1) {
        this.weekList_1 = weekList_1;
    }

    public List<Date> getWeekList_2() {
        return weekList_2;
    }

    public void setWeekList_2(List<Date> weekList_2) {
        this.weekList_2 = weekList_2;
    }

    public List<Date> getWeekList_3() {
        return weekList_3;
    }

    public void setWeekList_3(List<Date> weekList_3) {
        this.weekList_3 = weekList_3;
    }

    public List<Object> getRegisterPlan_1() {
        return registerPlan_1;
    }

    public void setRegisterPlan_1(List<Object> registerPlan_1) {
        this.registerPlan_1 = registerPlan_1;
    }

    public List<Object> getRegisterPlan_2() {
        return registerPlan_2;
    }

    public void setRegisterPlan_2(List<Object> registerPlan_2) {
        this.registerPlan_2 = registerPlan_2;
    }

    public List<Object> getRegisterPlan_3() {
        return registerPlan_3;
    }

    public void setRegisterPlan_3(List<Object> registerPlan_3) {
        this.registerPlan_3 = registerPlan_3;
    }

    public List<DepartmentDto> getOneLevelDepartmentList() {
        return oneLevelDepartmentList;
    }

    public void setOneLevelDepartmentList(List<DepartmentDto> oneLevelDepartmentList) {
        this.oneLevelDepartmentList = oneLevelDepartmentList;
    }

    public List<DepartmentDto> getTwoLevelDepartmentList() {
        return twoLevelDepartmentList;
    }

    public void setTwoLevelDepartmentList(List<DepartmentDto> twoLevelDepartmentList) {
        this.twoLevelDepartmentList = twoLevelDepartmentList;
    }

    public List<DoctorDto> getDoctorList() {
        return doctorList;
    }

    public void setDoctorList(List<DoctorDto> doctorList) {
        this.doctorList = doctorList;
    }

    public Date getCurrentDate() {
        return currentDate;
    }

    public void setCurrentDate(Date currentDate) {
        this.currentDate = currentDate;
    }
}