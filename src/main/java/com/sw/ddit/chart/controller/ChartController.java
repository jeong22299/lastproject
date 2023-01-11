package com.sw.ddit.chart.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sw.ddit.chart.service.ChartService;
import com.sw.ddit.department.vo.DepartmentVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/chart")
@Controller
public class ChartController {
	
	@Autowired
	ChartService chartService;
	
	//부서별 결재량 차트
	@GetMapping("/departmentChart")
	public String departmentChart(Model model) {
		List<Map<String, Object>> depapprcnt = this.chartService.depApprCnt();
		List<Map<String, Object>> depapprcntlast = this.chartService.depApprCntLast();
		log.info("depapprcnt: " + depapprcnt);
		model.addAttribute("depapprcnt",depapprcnt);
		model.addAttribute("depapprcntlast",depapprcntlast);
		return "chart/departmentChart";
	}
	//회의실 예약수 차트
	@GetMapping("/meetChart")
	public String meetChart(Model model) {
		List<Map<String, Object>>  meetcnt = this.chartService.meetCnt();
		List<Map<String, Object>>  meetcntlast = this.chartService.meetCntLast();
		log.info("meetcnt: " + meetcnt);
		model.addAttribute("meetcnt",meetcnt);
		model.addAttribute("meetcntlast",meetcntlast);
		return "chart/meetChart";
	}
	//년별 입/퇴사자 수 차트
	@GetMapping("/employeeChart")
	public String employeeChart(Model model) {
		int signempcnt = this.chartService.signEmpCnt();
		int leaveempcnt = this.chartService.leaveEmpCnt();
		model.addAttribute("signempcnt",signempcnt);
		model.addAttribute("leaveempcnt",leaveempcnt);
	
		return "chart/employeeChart";
	}
	//부서별 지출결의서 결제금액 차트
	@GetMapping("/depExpenseChart")
	public String depExpenseChart(Model model) {
		List<Map<String, Object>>  depExpense = this.chartService.depExpense();
		log.info("depExpense: " + depExpense);
		
		int sum = 0;
		for(Map<String, Object> map : depExpense) {
			sum += Integer.parseInt(String.valueOf(map.get("PRICE")));
		}
		
		int avg = (int)(sum / depExpense.size());
		log.info("size? " + depExpense.size());
		
		log.info("avg" + avg);
		model.addAttribute("depExpense",depExpense);
		model.addAttribute("avg",avg);
		return "chart/depExpenseChart";
	}
}
