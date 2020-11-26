package com.active4j.hr.longche.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.active4j.hr.longche.entity.SalesReturnEntity;
import com.active4j.hr.longche.service.SalesReturnService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
/**
 * 
 * @Package: com.active4j.hr.longche.controller 
 * @author wuchunhui
 * @date: 2020年11月23日 下午3:24:14
 */
@RequestMapping("/sales")
public class SalesReturnController {

	@Autowired
	private SalesReturnService salesReturnService;

	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String console(Model model) {
		/*
		 * SalesReturnEntity salesReturnEntity = new SalesReturnEntity();
		 * salesReturnEntity.setName("111"); salesReturnEntity.setPhone("18655222222");
		 * salesReturnEntity.setReturnAddress("地址");
		 * salesReturnService.save(salesReturnEntity);
		 */
		
		SalesReturnEntity salesReturnEntity = salesReturnService.getById("1");
		System.out.println(salesReturnEntity.toString());
		return "longche/index";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(Model model) {
		
		return "longche/index";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(Model model) {
		
		return "longche/index";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(Model model) {
		
		return "longche/index";
	}
	
	@RequestMapping(value = "/getById", method = RequestMethod.GET)
	public String getById(Model model) {
		
		return "longche/index";
	}
}
