package com.jiuyi.qujiuyi.action.register;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jiuyi.qujiuyi.action.BaseAction;
import com.jiuyi.qujiuyi.common.CacheContainer;
import com.jiuyi.qujiuyi.dto.area.CityDto;
import com.jiuyi.qujiuyi.dto.area.ProvinceDto;
import com.jiuyi.qujiuyi.dto.department.DepartmentDto;
import com.jiuyi.qujiuyi.dto.doctor.DoctorDto;
import com.jiuyi.qujiuyi.dto.hospital.HospitalDto;
import com.jiuyi.qujiuyi.dto.relative.PatientRelativeDto;

/**
 * @description register aciton
 * @author zhb
 * @createTime 2015年10月12日
 */
public class RegisterAction extends BaseAction {
    /** serialVersionUID. */
    private static final long serialVersionUID = 4805330853692336865L;
    // 省份列表1
    private List<ProvinceDto> provinceList;
    // 城市列表1
    private List<CityDto> cityList_1;
    // 城市列表2
    private List<CityDto> cityList_2;
    // 科室列表
    private List<DepartmentDto> oneLevelDepartmentList;
    // 热门医院
    private List<HospitalDto> hotHospitalList;
    // 城市对应的医院
    private List<HospitalDto> cityHospitalList;
    // 名医列表
    private List<DoctorDto> famousDoctorList;
    /**
     * @description
     * @return
     */
    @SuppressWarnings("unchecked")
    public String choosePatient() {
        if (this.getParams() == null) {
            this.setParams((Map<String, String>) this.getRequest().getSession().getAttribute("parmas"));
        }
        this.getRequest().getSession().setAttribute("parmas", this.getParams());

        // 获取常用就诊人
        this.packageData("queryRelatives", PatientRelativeDto.class);

        return "choosePatient";
    }

    /**
     * @description 新填常用就诊人
     * @return
     */
    public String addRelative() {
        this.printData("addRelative");
        return null;
    }

    /**
     * @description 修改常用就诊人
     * @return
     */
    public String modRelative() {
        this.printData("modRelative");
        return null;
    }

    /**
     * @description 删除常用就诊人
     * @return
     */
    public String delRelative() {
        this.printData("delRelative");
        return null;
    }

    /**
     * @description 支付成功页面
     * @return
     */
    public String paySuccess() {

        return "paySuccess";
    }

    /**
     * @description 预约挂号
     * @return
     */
    public String appointmentRegister() {

        // 设置城市
        if (CacheContainer.getProvinceCityMap().get(1).size() <= 8) {
            this.setCityList_1(CacheContainer.getProvinceCityMap().get(1));
        } else {
            int i = 0;
            cityList_1 = new ArrayList<CityDto>();
            cityList_2 = new ArrayList<CityDto>();
            for (CityDto city : CacheContainer.getProvinceCityMap().get(1)) {
                if (i < 8) {
                    cityList_1.add(city);
                } else {
                    cityList_2.add(city);
                }
                i++;
            }
        }

        // 设置科室
        this.setOneLevelDepartmentList(CacheContainer.getOneLevelDepartmentList());
        System.out.println(CacheContainer.getOneLevelDepartmentList() + "------");
        // 设置省份列表
        this.setProvinceList(CacheContainer.getProvinceList());

        // 设置热门医院列表
        this.setHotHospitalList(CacheContainer.getHotHospitalList());

        // 设置名医列表
        this.setFamousDoctorList(CacheContainer.getFamousDoctorList());

        if (this.getParams() == null) {
            this.setParams(new HashMap<String, String>());
        }
        this.getParams().put("currentPage", "appointmentRegister");
        return "appointmentRegister";
    }

    /**
     * @description 根据城市id获取医院
     * @return
     */
    public String getHospitalByCityId() {
        int cityId = Integer.parseInt(this.getParams().get("cityId"));
        if (cityId == 0) {
            this.setHotHospitalList(CacheContainer.getHotHospitalList());
        } else {
            this.setCityHospitalList(CacheContainer.getCityHospitalMap().get(cityId));
        }
        return "hospitalList";
    }

    public List<CityDto> getCityList_1() {
        return cityList_1;
    }
    public void setCityList_1(List<CityDto> cityList_1) {
        this.cityList_1 = cityList_1;
    }

    public List<DepartmentDto> getOneLevelDepartmentList() {
        return oneLevelDepartmentList;
    }

    public void setOneLevelDepartmentList(List<DepartmentDto> oneLevelDepartmentList) {
        this.oneLevelDepartmentList = oneLevelDepartmentList;
    }

    public List<ProvinceDto> getProvinceList() {
        return provinceList;
    }

    public void setProvinceList(List<ProvinceDto> provinceList) {
        this.provinceList = provinceList;
    }

    public List<HospitalDto> getHotHospitalList() {
        return hotHospitalList;
    }

    public void setHotHospitalList(List<HospitalDto> hotHospitalList) {
        this.hotHospitalList = hotHospitalList;
    }

    public List<HospitalDto> getCityHospitalList() {
        return cityHospitalList;
    }

    public void setCityHospitalList(List<HospitalDto> cityHospitalList) {
        this.cityHospitalList = cityHospitalList;
    }

    public List<DoctorDto> getFamousDoctorList() {
        return famousDoctorList;
    }

    public void setFamousDoctorList(List<DoctorDto> famousDoctorList) {
        this.famousDoctorList = famousDoctorList;
    }
}