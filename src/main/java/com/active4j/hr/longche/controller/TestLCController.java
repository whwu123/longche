package com.active4j.hr.longche.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j

/**
 * 
 * @Package: com.active4j.hr.longche.controller 
 * @author wuchunhui
 * @date: 2020年11月23日 下午3:24:14
 */
@RequestMapping("/lc")
public class TestLCController {

	

	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String console(Model model) {
		return "longche/index";
	}
}
