package com.jiuyi.qujiuyi.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.springframework.web.context.support.WebApplicationContextUtils;

import com.jiuyi.qujiuyi.common.CacheContainer;
import com.jiuyi.qujiuyi.common.Constants;
import com.jiuyi.qujiuyi.common.SysCfg;

/**
 * @description initial servlet
 * @author zhb
 * @createTime 2015年10月11日
 */
public class InitServlet extends HttpServlet {
	private static final long serialVersionUID = -5305744701888018846L;

	@Override
	public void init(ServletConfig config) throws ServletException {
        Constants.applicationContext = WebApplicationContextUtils.getWebApplicationContext(config.getServletContext());
        SysCfg.init();
		CacheContainer.init();
	}
}