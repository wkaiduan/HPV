package com.tegen.controller;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.tegen.entity.maps;
import com.tegen.service.mapService;

@Controller
public class mapController {

	@Resource(name = "ups")
	private mapService service;

	@RequestMapping("/maps")
	@ResponseBody
	public List<maps> getInfo(maps mp) {
		return service.getInfo();
	}
}
