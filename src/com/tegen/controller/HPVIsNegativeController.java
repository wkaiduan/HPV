package com.tegen.controller;

import java.util.HashMap;

import java.util.Map;

import javax.annotation.Resource;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.tegen.entity.HPVIsNegative;
import com.tegen.entity.Page;
import com.tegen.service.HPVIsNegativeService;

@Controller
public class HPVIsNegativeController {
		@Resource(name = "up")
		private HPVIsNegativeService service;
		
		@RequestMapping("/bbb")
		@ResponseBody
		public Map<String, Object> getInfo(Page page, HPVIsNegative hpvis, int mode) {
			hpvis.setPages(page);
		
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("total", service.getCount());
			map.put("rows", service.getInfo(hpvis));
			return map;
		}
		

		
	}


