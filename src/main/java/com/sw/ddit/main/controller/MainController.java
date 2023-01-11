package com.sw.ddit.main.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sw.ddit.employee.service.PositionService;
import com.sw.ddit.employee.vo.EmployeeVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/main")
public class MainController {
	@Autowired
	PositionService positionService;
	
	@GetMapping("/main")
	public String main(Model model) {
		List<EmployeeVO> notPosiList = this.positionService.notPosiList();
		log.info("notPosiList : " + notPosiList);
		List<EmployeeVO> list = new ArrayList<EmployeeVO>();
		for(int i=0; i<5; i++) {
			if(notPosiList.size() <5 ) {
				list.addAll(notPosiList);
			}else {
				list.add(notPosiList.get(i));
			}
		}
		log.info("list : " + list);
		model.addAttribute("notPosiList", list);
		return "main/main/index";
	}
	
}
