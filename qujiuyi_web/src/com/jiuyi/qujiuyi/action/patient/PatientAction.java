package com.jiuyi.qujiuyi.action.patient;

import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;

import com.google.gson.JsonObject;
import com.jiuyi.qujiuyi.action.BaseAction;
import com.jiuyi.qujiuyi.common.Constants;
import com.jiuyi.qujiuyi.common.SysCfg;
import com.jiuyi.qujiuyi.common.VerifyCodeUtil;
import com.jiuyi.qujiuyi.dto.BaseDto;
import com.jiuyi.qujiuyi.dto.patient.PatientDto;

/**
 * @description patient action
 * @author zhb
 * @createTime 2015年10月9日
 */
public class PatientAction extends BaseAction {
    /** serialVersionUID. */
    private static final long serialVersionUID = 3543014091557346442L;

    /**
     * @description 患者登录页面
     * @return
     */
    public String login() {
        return "login";
    }

    /**
     * @description 患者登录
     * @return
     */
    public String doLogin() {
        // 校验验证码
        String verifyCode = this.getRequest().getSession().getAttribute("verifyCode") != null ? this.getRequest().getSession().getAttribute("verifyCode")
                .toString() : "";
        if (!verifyCode.equalsIgnoreCase(this.getParams().get("verifyCode"))) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("resultCode", 1);
            map.put("resultDesc", "验证码不对");
            this.print(Constants.gson.toJson(map));
            return null;
        }

        // 登录
		String result = this.getReqResult("signIn", PatientDto.class, SysCfg.getString("qujiuyi.patientUrl"));
        JsonObject json = Constants.jsonParser.parse(result).getAsJsonObject();
        if (json.has("resultCode") && "0".equals(json.get("resultCode").getAsString())) {
            // 保存session
            this.getRequest().getSession().setAttribute("patient", this.getDataObj());
            PatientDto patient = (PatientDto) this.getDataObj();

            // 保存cookie
            String autoLogin = this.getParams().get("autoLogin");
            if ("1".equals(autoLogin)) {
                Cookie phone = new Cookie("phone", this.getParams().get("phone"));
                phone.setMaxAge(7 * 24 * 3600);
                this.getResponse().addCookie(phone);
                Cookie password = new Cookie("password", this.getParams().get("password"));
                password.setMaxAge(7 * 24 * 3600);
                this.getResponse().addCookie(password);
            }

			// 同步
			this.getParams().put("channelId", "");
            this.getParams().put("userId", patient.getId().toString());
            this.getParams().put("token", patient.getToken());
			this.getParams().put("userType", "2");
            this.getParams().put("deviceType", "3");
			this.getParams().put("online", "0");
			this.getReqResult("syncUserInfoToServer", Object.class, SysCfg.getString("qujiuyi.chatUrl"));

        }
        this.print(result);

        return null;
    }

	/**
     * @description 登出
     * @return
     */
    public String signOut() {
        Cookie signOut = new Cookie("signOut", "1");
        signOut.setMaxAge(-1);
        this.getResponse().addCookie(signOut);
        this.printData("signOut");
        this.getRequest().getSession().invalidate();
        return null;
    }

    /**
     * @description 注册页面
     * @return
     */
    public String register() {
        return "register";
    }

    /**
     * @description 注册
     * @return
     */
    public String doRegister() {
        // 校验验证码
        String result = this.packageData("checkVerificationCode", BaseDto.class);
        JsonObject json = Constants.jsonParser.parse(result).getAsJsonObject();
        if (!json.has("resultCode") || !"0".equals(json.get("resultCode").getAsString())) {
            this.print(result);
            return null;
        }

        // 注册
        this.printData("register");
        return null;
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
     * @description 重置密码界面
     * @return
     */
    public String resetPassword() {
        return "resetPassword";
    }

    /**
     * @description 重置密码
     * @return
     */
    public String doResetPassword() {
        this.printData("resetPassword");
        return "resetPassword";
    }

    /**
     * @description 获取验证码
     * @return
     * @throws IOException
     */
    public String verifyCode() {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setHeader("cache-control", "no-cache");
        response.setHeader("pragma", "no-cache");
        response.setHeader("expires", "0");

        String verifyCode = VerifyCodeUtil.getVerifyCode(4);
        this.getRequest().getSession().setAttribute("verifyCode", verifyCode);

        OutputStream out = null;
        try {
            out = response.getOutputStream();
            int width = Integer.parseInt(this.getParams().get("width"));
            int height = Integer.parseInt(this.getParams().get("height"));
            int left = Integer.parseInt(this.getParams().get("left"));
            int top = Integer.parseInt(this.getParams().get("top"));
            int size = Integer.parseInt(this.getParams().get("size"));
            ImageIO.write(VerifyCodeUtil.getVerifyCodeImage(width, height, left, top, size, verifyCode), "JPEG", out);
        } catch (IOException e) {

        } finally {
            if (out != null) {
                try {
                    out.flush();
                    out.close();
                } catch (IOException e) {

                }
            }
        }
        return null;
    }
}