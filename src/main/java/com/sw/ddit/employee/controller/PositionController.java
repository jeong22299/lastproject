package com.sw.ddit.employee.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sw.ddit.attendance.vo.VacationVO;
import com.sw.ddit.common.vo.CommonVO;
import com.sw.ddit.department.vo.DepartmentVO;
import com.sw.ddit.employee.service.PositionService;
import com.sw.ddit.employee.vo.AuthVO;
import com.sw.ddit.employee.vo.EmployeeVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/employee")
@Controller
public class PositionController {
	
	@Autowired
	PositionService positionService;

	@GetMapping("/position")
	public String position(Model model) {
		
		List<EmployeeVO> notPosiList = this.positionService.notPosiList();
		List<CommonVO> positionList = this.positionService.positionList();
		List<EmployeeVO> allList = this.positionService.allList();
		List<DepartmentVO> departmentList = this.positionService.departmentList();
		List<CommonVO> list = this.positionService.workList();
		
		model.addAttribute("list", notPosiList);
		model.addAttribute("posiList", positionList);
		model.addAttribute("allList", allList);
		model.addAttribute("depList", departmentList);
		model.addAttribute("workList", list);
		
		log.info("notPosiList : " + notPosiList);
		
		return "employee/position";
	}

	@ResponseBody
	@GetMapping("/depList")
	public List<DepartmentVO> depList() {
		List<DepartmentVO> departmentList = this.positionService.departmentList();
		log.info("depList : " + departmentList);
		
		return departmentList;
	}
	
	@ResponseBody
	@GetMapping("/workList")
	public List<CommonVO> workList() {
		List<CommonVO> workList = this.positionService.workList();
		log.info("workList : " + workList);
		
		return workList;
	}
	
	@ResponseBody
	@GetMapping("/authList")
	public List<CommonVO> authList() {
		List<CommonVO> authList = this.positionService.authList();
		log.info("authList : " + authList);
		
		return authList;
	}
	
	// ?????? ?????? ????????????
	@ResponseBody
	@PostMapping("/empUpdate")
	public int empUpdate(@RequestBody EmployeeVO employeeVO) {

			int result = this.positionService.empUpdate(employeeVO);
		
		return result;
	}
	
	// ?????? ????????????
	@ResponseBody
	@PostMapping("/authInsert")
	public int authInsert(@RequestBody AuthVO authVO) {
		int result = this.positionService.authInsert(authVO);
		
		log.info("authVO  : " + authVO);
		
		return result;
	}


	// ???????????? ????????????
	@ResponseBody
	@PostMapping("/empDelete")
	public int empDelete(@RequestBody EmployeeVO employeeVO) {
		int result = this.positionService.empDelete(employeeVO);
		
		log.info("result : " + result);
		
		return result;
	}
	
	// ???????????? ??????
	@ResponseBody
	@PostMapping("/empDetail")
	public List<EmployeeVO> empDetail(@RequestBody EmployeeVO employeeVO) {
	
		List<EmployeeVO> empDetail = this.positionService.empDetail(employeeVO);
		
		log.info("empDetail : " + empDetail);
		
		return empDetail;
	}
	
	
	// ?????? ???????????? ??????
	@ResponseBody
	@PostMapping("/empModify")
	public int empModify(@RequestBody EmployeeVO empVO) {
		
		int result = this.positionService.empModify(empVO);
		
		log.info("empModify result : " + result);
		
		return result;
	}

	// ?????? ?????? ?????????
	@ResponseBody
	@PostMapping("/uploadProfile")
	public EmployeeVO uploadProfile(@ModelAttribute EmployeeVO empVO
			, MultipartFile uploadFile, HttpServletRequest request, String empCd) {
		
		empVO.setEmpCd(empCd);
		// ????????? ?????? ??????
		String uploadFolder = "D:\\A_TeachingMaterial\\7.LastProject\\workspace\\Starworks\\src\\main\\webapp\\resources\\profileImg";
		// nodejs folder
		String nodeFolder = "D:\\A_TeachingMaterial\\7.LastProject\\chat_node\\img\\profilePic";

		log.info("???????????? : " +  uploadFolder);
		// ?????? ?????????
		String uploadFileName = "";
		MultipartFile multipartFile = uploadFile;
		
		uploadFileName = multipartFile.getOriginalFilename();
		
		UUID uuid = UUID.randomUUID();
		uploadFileName = uuid.toString() + "_" + uploadFileName;
		
		File saveFile = new File(uploadFolder, uploadFileName);
		File nodeFile = new File(nodeFolder, uploadFileName);
		
		try {
			multipartFile.transferTo(saveFile);
			multipartFile.transferTo(nodeFile);
			
			empVO.setProfile(uploadFileName);
			
			int result = this.positionService.uploadProfile(empVO);
			
			return empVO;
			
		} catch (IllegalStateException e) {
			e.printStackTrace();
			return null;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	

	
	@GetMapping("/test")
	public String test(Model model) {
		
		model.addAttribute("title", "???????????????");
		
		log.info("file : " + "?????????");
		return "employee/test";
	}
	
	@ResponseBody
	@PostMapping("/uploadProfile2")
	public EmployeeVO uploadProfile2(@ModelAttribute EmployeeVO empVO
			, MultipartFile uploadFile,  String empCd) {
	
		empVO.setEmpCd(empCd);
		log.info("employeeVO : " + empVO);
		// ????????? ?????? ??????
		String uploadFolder = "D:\\A_TeachingMaterial\\7.LastProject\\workspace\\Starworks\\src\\main\\webapp\\resources\\profileImg";
		log.info("???????????? : " +  uploadFolder);
		log.info("multipartFile : " + uploadFile);
		// ?????? ?????????
		String uploadFileName = "";
		MultipartFile multipartFile = uploadFile;
		uploadFileName = multipartFile.getOriginalFilename();
		
		UUID uuid = UUID.randomUUID();
		uploadFileName = uuid.toString() + "_" + uploadFileName;
		
		File saveFile = new File(uploadFolder, uploadFileName);
		
		try {
			multipartFile.transferTo(saveFile);
			
			empVO.setProfile(uploadFileName);
			
			int result = this.positionService.uploadProfile(empVO);
			
			return empVO;
			
		} catch (IllegalStateException e) {
			e.printStackTrace();
			return null;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
		
	}
}
