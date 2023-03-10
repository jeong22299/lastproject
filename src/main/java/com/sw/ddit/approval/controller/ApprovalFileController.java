/*
 * package com.sw.ddit.approval.controller;
 * 
 * import java.io.UnsupportedEncodingException;
 * 
 * import javax.servlet.http.HttpSession;
 * 
 * import org.springframework.core.io.FileSystemResource; import
 * org.springframework.core.io.Resource; import
 * org.springframework.http.HttpHeaders; import
 * org.springframework.http.HttpStatus; import
 * org.springframework.http.MediaType; import
 * org.springframework.http.ResponseEntity; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.RequestMapping;
 * 
 * 
 * import lombok.extern.slf4j.Slf4j;
 * 
 * @Slf4j
 * 
 * @Controller public class ApprovalFileController {
 * 
 * @RequestMapping(value="/download",produces=MediaType.
 * APPLICATION_OCTET_STREAM_VALUE) public ResponseEntity<Resource>
 * downloadFile(String atchFileNm, HttpSession session){
 * log.info("download file : " + atchFileNm);
 * 
 * String realPath =
 * session.getServletContext().getRealPath("/resources/refeUpload"); //core.io
 * Resource resource = new FileSystemResource( realPath + atchFileNm );
 * log.info("path : " + (realPath + atchFileNm));
 * 
 * String resourceName = resource.getFilename(); log.info("resourceName: " +
 * resourceName);
 * 
 * //springframework.http //헤더를 통해서 파일을 보냄 HttpHeaders headers = new
 * HttpHeaders();
 * 
 * try { //파일명을 한글처리함 headers.add("Content-Disposition", "attachment;filename="
 * + new String(resourceName.getBytes("UTF-8"),"ISO-8859-1")); } catch
 * (UnsupportedEncodingException e) { e.printStackTrace(); } //resource : 파일/
 * header : 파일명 등 정보 / HttpStatus.OK : 상태200(성공) return new
 * ResponseEntity<Resource>(resource,headers,HttpStatus.OK); } }
 */