package com.nxy.favorite.web;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/")
public class IndexController {
	@Value("${backServerUrl}")
	private String backServerUrl;
	
	@RequestMapping(value = "")
	public String index(ModelMap map) {
		map.put("backServerUrl", backServerUrl);
		return "index"; // 开头不要加上/，linux下面会出错
	}
	@RequestMapping(value = "upload")
	public String upload(ModelMap map) {
		map.put("backServerUrl", backServerUrl);
		return "upload"; // 开头不要加上/，linux下面会出错
	}
}
