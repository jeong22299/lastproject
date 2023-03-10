<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>

<!-- Bootstrap css-->
<link  id="style" href="/resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
<!-- Icons css-->
<link href="/resources/assets/plugins/web-fonts/icons.css" rel="stylesheet" />
<link href="/resources/assets/plugins/web-fonts/font-awesome/font-awesome.min.css" rel="stylesheet">
<link href="/resources/assets/plugins/web-fonts/plugin.css" rel="stylesheet" />
<!-- Style css-->
<link href="/resources/assets/css/style.css" rel="stylesheet">
<!--Bootstrap-datepicker css-->
<link rel="stylesheet" href="/resources/assets/plugins/bootstrap-datepicker/bootstrap-datepicker.css">
<!-- Internal Datetimepicker-slider css -->
<link href="/resources/assets/plugins/amazeui-datetimepicker/css/amazeui.datetimepicker.css" rel="stylesheet">
<!-- Internal Specturm-color picker css-->
<link href="/resources/assets/plugins/spectrum-colorpicker/spectrum.css" rel="stylesheet">
<!-- Jstree -->
<script src="/resources/js/jstree.min.js"></script>
<link rel="stylesheet" href="/resources/css/jstreeStyle.min.css" />

<head>
<title>vacationform</title>
<style type="text/css">
        body {margin:0;padding-left:0;padding-right:0;padding-bottom:0;padding-top:2mm;}
.hce {margin:0;padding:0;position:absolute;overflow:hidden;}
.hme {margin:0;padding:0;position:absolute;}
.hhe {margin:0;padding:0;position:relative;}
.hhi {display:inline-block;margin:0;padding:0;position:relative;background-size:contain;}
.hls {margin:0;padding:0;position:absolute;}
.hfS {margin:0;padding:0;position:absolute;}
.hcD {margin:0;padding:0;position:absolute;}
.hcI {margin:0;padding:0;position:absolute;}
.hcS {margin:0;padding:0;position:absolute;}
.hfN {margin:0;padding:0;position:relative;}
.hmB {margin:0;padding:0;position:absolute;}
.hmO {margin:0;padding:0;position:absolute;}
.hmT {margin:0;padding:0;position:absolute;}
.hpN {display:inline-block;margin:0;padding:0;position:relative;white-space:nowrap;}
.htC {display:inline-block;margin:0;padding:0;position:relative;vertical-align:top;overflow:hidden;}
.haN {display:inline-block;margin:0;padding:0;position:relative;}
.hdu {margin:0;padding:0;position:relative;}
.hdS {margin:0;padding:0;position:absolute;}
.hsC {margin:0;padding:0;position:absolute;}
.hsR {margin:0;padding:0;position:absolute;}
.hsG {margin:0;padding:0;position:absolute;}
.hsL {margin:0;padding:0;position:absolute;}
.hsT {margin:0;padding:0;position:absolute;overflow:hidden;}
.hsE {margin:0;padding:0;position:absolute;overflow:hidden;}
.hsA {margin:0;padding:0;position:absolute;overflow:hidden;}
.hsP {margin:0;padding:0;position:absolute;overflow:hidden;}
.hsV {margin:0;padding:0;position:absolute;overflow:hidden;}
.hsO {margin:0;padding:0;position:absolute;}
.hsU {margin:0;padding:0;position:absolute;overflow:hidden;}
.hpi {margin:0;padding:0;position:absolute;}
.hch {margin:0;padding:0;position:absolute;}
.hcG {margin:0;padding:0;position:absolute;}
.heq {margin:0;padding:0;position:absolute;}
.heG {margin:0;padding:0;position:absolute;}
.htA {margin:0;padding:0;position:absolute;}
.hvi {margin:0;padding:0;position:absolute;}
.htb {margin:0;padding:0;position:absolute;}
.htG {margin:0;padding:0;position:absolute;}
.hfJ {margin:0;padding:0;position:absolute;}
.hfG {margin:0;padding:0;position:absolute;}
.hfB {margin:0;padding:0;position:absolute;}
.hfR {margin:0;padding:0;position:absolute;}
.hfC {margin:0;padding:0;position:absolute;}
.hfO {margin:0;padding:0;position:absolute;}
.hfL {margin:0;padding:0;position:absolute;}
.hfM {margin:0;padding:0;position:absolute;}
.hfE {margin:0;padding:0;position:absolute;}
.hpl {margin:0;padding:0;position:absolute;}
.hs {margin:0;padding:0;position:absolute;overflow:visible;}
.hpa {position:relative;padding:0;overflow:hidden;margin-left:2mm;margin-right:0mm;margin-bottom:2mm;margin-top:0mm;border:1px black solid;box-shadow:1mm 1mm 0 #AAAAAA;}
.hpa::after {content:'';position:absolute;margin:0;padding:0;left:0;right:0;top:0;bottom:0;background-color:white;z-index:-2;}
.hrt {display:inline-block;margin:0;padding:0;position:relative;white-space:inherit;vertical-align:middle;line-height:1.1;}
.hco {display:inline-block;margin:0;padding:0;position:relative;white-space:inherit;}
.hcc {margin:0;padding:0;position:absolute;}
.hls {clear:both;}
[onclick] {cursor:pointer;}
.cs0 {font-size:10pt;color:#000000;font-family:"???????????????";}
.cs1 {font-size:10pt;color:#000000;font-family:"???????????????";}
.cs2 {font-size:9pt;color:#000000;font-family:"???????????????";}
.cs3 {font-size:9pt;color:#000000;font-family:"???????????????";}
.cs4 {font-size:9pt;color:#000000;font-family:"???????????????";letter-spacing:-0.03em;}
.cs5 {font-size:20pt;color:#000000;font-family:"???????????????";font-weight:bold;}
.cs6 {font-size:12pt;color:#000000;font-family:"???????????????";font-weight:bold;}
.cs7 {font-size:11pt;color:#000000;font-family:"??????";}
.cs8 {font-size:20pt;color:#000000;font-family:"?????????";font-weight:bold;}
.ps0 {text-align:justify;}
.ps1 {text-align:left;}
.ps2 {text-align:justify;}
.ps3 {text-align:justify;}
.ps4 {text-align:justify;}
.ps5 {text-align:justify;}
.ps6 {text-align:justify;}
.ps7 {text-align:justify;}
.ps8 {text-align:justify;}
.ps9 {text-align:justify;}
.ps10 {text-align:justify;}
.ps11 {text-align:justify;}
.ps12 {text-align:center;}
.ps13 {text-align:justify;}
.ps14 {text-align:center;}
@media print {
.hpa {margin:0;border:0 black none;box-shadow:none;}
body {padding:0;}

/* ?????? css */

}
    </style>
</head>

<body>

<!-- 	<a class="btn ripple btn-primary" data-bs-target="#modaldemo1"  id="modal" data-bs-toggle="modal" href="">?????????</a> -->
    <div class="hpa" style="width:210mm;height:297mm;">
                <input id="depCd" type="hidden" value="<sec:authentication property="principal.employeeVO.depCd" />">
                <input id="empCode1" type="hidden" value="<sec:authentication property="principal.employeeVO.empCd" />">
                <input id="empCode2" type="hidden" value="">
                <input id="empCode3" type="hidden" value="">
                <input id="empCode4" type="hidden" value="">
        <div class="hcD" style="left:10mm;top:24.99mm;">
            <div class="hcI">
                <div class="hls ps0"
                    style="line-height:2.79mm;white-space:nowrap;left:0mm;top:-0.18mm;height:3.53mm;width:0mm;"></div>
            </div>
        </div>
        <div class="htb" style="left:11mm;width:190.02mm;top:25.99mm;height:252.12mm;"><svg class="hs"
                viewBox="-2.50 -2.50 195.02 257.11" style="left:-2.50mm;top:-2.50mm;width:195.02mm;height:257.11mm;">
                <defs>
                    <pattern id="w_00" width="10" height="10" patternUnits="userSpaceOnUse">
                        <rect width="10" height="10" fill="rgb(223,230,247)" />
                    </pattern>
                </defs>
                <path fill="url(#w_00)" d="M0,28.01L32.10,28.01L32.10,42.52L0,42.52L0,28.01Z "></path>
                <defs>
                    <pattern id="w_01" width="10" height="10" patternUnits="userSpaceOnUse">
                        <rect width="10" height="10" fill="rgb(223,230,247)" />
                    </pattern>
                </defs>
                <path fill="url(#w_01)" d="M91.06,28.01L129.06,28.01L129.06,42.52L91.06,42.52L91.06,28.01Z "></path>
                <path fill="url(#w_00)" d="M0,42.52L32.10,42.52L32.10,57.03L0,57.03L0,42.52Z "></path>
                <path fill="url(#w_01)" d="M91.06,42.52L129.06,42.52L129.06,57.03L91.06,57.03L91.06,42.52Z "></path>
                <path fill="url(#w_00)" d="M0,57.03L32.10,57.03L32.10,71.53L0,71.53L0,57.03Z "></path>
                <path fill="url(#w_00)" d="M0,71.53L32.10,71.53L32.10,86.04L0,86.04L0,71.53Z "></path>
                <path fill="url(#w_00)" d="M0,86.04L32.10,86.04L32.10,138.68L0,138.68L0,86.04Z "></path>
                <path d="M0,0 L0,28.02" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M0,28.01 L0,250.12" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                <path d="M32.10,28.01 L32.10,86.04" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M32.10,86.04 L32.10,138.68" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;">
                </path>
                <path d="M91.06,28.01 L91.06,57.03" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M129.06,28.01 L129.06,57.03" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M188.02,0 L188.02,28.02" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M188.02,28.01 L188.02,250.12" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;">
                </path>
                <path d="M-0.06,0 L188.08,0" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M-0.06,28.01 L188.22,28.01" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M-0.20,42.52 L188.22,42.52" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M-0.20,57.03 L188.22,57.03" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M-0.20,71.53 L188.22,71.53" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M-0.20,86.04 L188.22,86.04" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;">
                </path>
                <path d="M-0.20,138.68 L188.22,138.68" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;">
                </path>
                <path d="M-0.20,250.12 L188.22,250.12" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;">
                </path>
                <path d="M188.02,0 L188.02,28.02" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M188.02,28.01 L188.02,250.12" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;">
                </path>
                <path d="M0,28.01 L0,250.12" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                <path d="M0,0 L0,28.02" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                <path d="M-0.20,250.12 L188.22,250.12" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;">
                </path>
                <path d="M-0.06,0 L188.08,0" style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
            </svg>
            <div class="hce" style="left:0mm;top:0mm;width:188.02mm;height:28.01mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:3.79mm;">
                        <div class="hls ps12"
                            style="line-height:19.45mm;white-space:nowrap;left:0mm;top:0mm;height:19.45mm;width:184.42mm;">
                            <div class="htb"
                                style="left:0.49mm;width:169.46mm;top:0.49mm;height:19.45mm;display:inline-block;position:relative;vertical-align:middle;">
                                <svg class="hs" viewBox="-2.50 -2.50 174.46 24.44"
                                    style="left:-2.50mm;top:-2.50mm;width:174.46mm;height:24.44mm;">
                                    <path d="M93.05,0 L93.05,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M101.94,0 L101.94,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                                    <path d="M118.56,0 L118.56,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                                    <path d="M135.20,0 L135.20,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                                    <path d="M151.84,0 L151.84,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                                    <path d="M168.47,0 L168.47,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M92.85,0 L168.68,0"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M101.88,6.15 L168.68,6.15"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.12;"></path>
                                    <path d="M92.85,18.46 L168.68,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M168.47,0 L168.47,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M93.05,0 L93.05,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M92.85,18.46 L168.68,18.46"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                    <path d="M92.85,0 L168.68,0"
                                        style="stroke:#000000;stroke-linecap:butt;stroke-width:0.40;"></path>
                                </svg>
                                <div class="hce" style="left:0mm;top:0mm;width:93.05mm;height:18.46mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:5.21mm;">
                                            <div class="hls ps14"
                                                style="line-height:6.28mm;white-space:nowrap;left:0mm;top:-0.35mm;height:7.06mm;width:92.06mm;">
                                                <span class="hrt cs8" id="tit">?????????????????????</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:93.05mm;top:0mm;width:8.89mm;height:18.46mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:2.14mm;">
                                            <div class="hls ps14"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:7.90mm;">
                                                <span class="hrt cs7">???</span></div>
                                            <div class="hls ps14"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:4.46mm;height:3.88mm;width:7.90mm;">
                                            </div>
                                            <div class="hls ps14"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:9.12mm;height:3.88mm;width:7.90mm;">
                                                <span class="hrt cs7">???</span></div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div class="hce" style="left:101.94mm;top:0mm;width:16.62mm;height:6.15mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:0.64mm;">
                                            <div class="hls ps14" name="linePO1" id="linePO1"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:15.64mm;">
                                             <p style="font-size:12px; text-align: center;"> ${empInfo[0].posiCd} ${empInfo[0].empNm}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:118.56mm;top:0mm;width:16.64mm;height:6.15mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:0.64mm;">
                                            <div class="hls ps14" name="linePO2" id="linePO2"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:15.65mm;">
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:135.20mm;top:0mm;width:16.64mm;height:6.15mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:0.64mm;">
                                            <div class="hls ps14" name="linePO3" id="linePO3"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:15.65mm;">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:151.84mm;top:0mm;width:16.64mm;height:6.15mm;">
                                    <div class="hcD" style="left:0.49mm;top:0.49mm;">
                                        <div class="hcI" style="top:0.64mm;">
                                            <div class="hls ps14" name="linePO4" id="linePO4"
                                                style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:15.65mm;">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hce" style="left:101.94mm;top:6.15mm;width:16.62mm;height:12.30mm;">
									<div class="hls ps14" name="lineNm1" id="lineNm1"
									    style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:15.64mm;">
									    <img alt="" src="/resources/profileSign/${empInfo[0].sign}">
									</div>
                                </div>
                                <div class="hce" style="left:118.56mm;top:6.15mm;width:16.64mm;height:12.30mm;">
	                                <div class="hls ps14" name="lineNm2" id="lineNm2"
	                                    style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:15.65mm;">
	                                </div>
                                </div>
                                <div class="hce" style="left:135.20mm;top:6.15mm;width:16.64mm;height:12.30mm;">
	                                <div class="hls ps14" name="lineNm3" id="lineNm3"
	                                    style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:15.65mm;">
	                                </div>
                                </div>
                                <div class="hce" style="left:151.84mm;top:6.15mm;width:16.64mm;height:12.30mm;">
	                                <div class="hls ps14" name="lineNm4" id="lineNm4"
	                                    style="line-height:3.10mm;white-space:nowrap;left:0mm;top:-0.19mm;height:3.88mm;width:15.65mm;">
	                                </div>
                                </div>
                            </div>
                                <a class="btn ripple btn-primary btn-sm" data-bs-target="#modaldemo1"  id="modal" data-bs-toggle="modal" href="">?????????</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:0mm;top:28.01mm;width:32.10mm;height:14.51mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:4.64mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:28.50mm;">
                            <span class="hrt cs6">??? &nbsp;&nbsp;&nbsp;???</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:32.10mm;top:28.01mm;width:58.96mm;height:14.51mm;">
                <div class="col-lg mg-t-20" ><p style="text-align: center;" id="depNm">${empInfo[0].depCd}</p>
                </div>
            </div>
            <div class="hce" style="left:91.06mm;top:28.01mm;width:37.99mm;height:14.51mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:4.64mm;">
                        <div class="hls ps13"
                            style="line-height:3.43mm;white-space:nowrap;left:6.25mm;top:-0.21mm;height:4.23mm;width:28.14mm;">
                            <span class="hrt cs6">??? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:129.06mm;top:28.01mm;width:58.96mm;height:14.51mm;">
                <div class="col-lg mg-t-20""><p style="text-align: center; ">${empInfo[0].posiCd}</p>
                </div>
            </div>
            <div class="hce" style="left:0mm;top:42.52mm;width:32.10mm;height:14.51mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:4.64mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:28.50mm;">
                            <span class="hrt cs6">??? &nbsp;&nbsp;&nbsp;???</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:32.10mm;top:42.52mm;width:58.96mm;height:14.51mm;">
                <div class="col-lg mg-t-20""><p style="text-align: center;">${empInfo[0].empNm}</p>
                </div>
            </div>
            <div class="hce" style="left:91.06mm;top:42.52mm;width:37.99mm;height:14.51mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:4.64mm;">
                        <div class="hls ps13"
                            style="line-height:3.43mm;white-space:nowrap;left:6.25mm;top:-0.21mm;height:4.23mm;width:28.14mm;">
                            <span class="hrt cs6">??? &nbsp;??? &nbsp;???</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:129.06mm;top:42.52mm;width:58.96mm;height:14.51mm;">
                <div class="col-lg mg-t-20""><p style="text-align: center;">${empInfo[0].empTel}</p>
                </div>
            </div>
            <div class="hce" style="left:0mm;top:57.03mm;width:32.10mm;height:14.51mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:4.64mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:28.50mm;">
                            <span class="hrt cs6">?????? ??????</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:32.10mm;top:57.03mm;width:155.92mm;height:14.51mm; margin-top: 15px; margin-left: 10px;">
				<div class="selectgroup selectgroup-pills">
					<label class="selectgroup-item ">
						<input type="checkbox" id="check" name="check" value="??????" class="selectgroup-input" checked="">
						<span class="selectgroup-button">??????</span>
					</label>
					<label class="selectgroup-item">
						<input type="checkbox" id="check" name="check" value="??????" class="selectgroup-input">
						<span class="selectgroup-button">??????</span>
					</label>
					<label class="selectgroup-item">
						<input type="checkbox" id="check" name="check" value="??????" class="selectgroup-input">
						<span class="selectgroup-button">??????</span>
					</label>
					<label class="selectgroup-item">
						<input type="checkbox" id="check" name="check" value="??????" class="selectgroup-input">
						<span class="selectgroup-button">??????</span>
					</label>
				</div>
            </div>
            <div class="hce" style="left:0mm;top:71.53mm;width:32.10mm;height:14.51mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:4.64mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:28.50mm;">
                            <span class="hrt cs6">??? &nbsp;&nbsp;???</span><span class="tx-danger"> *</span></div>
                    </div>
                </div>
            </div>
            <div class="hce row" style="left:32.10mm;top:71.53mm;width:155.92mm;height:14.51mm;">
				<div class="col-sm-6">
					<div class="mg-t-8">
						<div class="input-group" >
							<div class="input-group-text border-end-0">
								<i class="fe fe-calendar lh--9 op-6"></i>
							</div>
							<input class="form-control " placeholder="MM/DD/YYYY" type="text" id="sdate" required="required">
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="mg-t-8">
						<div class="input-group">
							<div class="input-group-text border-end-0">
								<i class="fe fe-calendar lh--9 op-6"></i>
							</div>
							<input class="form-control"   placeholder="MM/DD/YYYY" type="text" id="edate" required="required">
						</div>
					</div>
				</div>
			</div>
            <div class="hce" style="left:0mm;top:86.04mm;width:32.10mm;height:52.64mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:23.71mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:28.50mm;">
                            <span class="hrt cs6">??????</span><span class="tx-danger"> *</span></div>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:32.10mm;top:86.04mm;width:155.92mm;height:52.64mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="col-lg" style="margin-top: 12px;">
                        <textarea class="form-control" name="con" id="con" placeholder="????????? ???????????????" rows="8" cols="78" style="color: black;" required="required"></textarea>
                    </div>
                </div>
            </div>
            <div class="hce" style="left:0mm;top:138.68mm;width:188.02mm;height:111.44mm;">
                <div class="hcD" style="left:1.80mm;top:0.50mm;">
                    <div class="hcI" style="top:36.17mm;">
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:-0.21mm;height:4.23mm;width:184.42mm;">
                            <span class="hrt cs6">?????? ?????? ????????? ??????????????? ???????????? ????????? ????????????.</span></div>
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:6.56mm;height:4.23mm;width:184.42mm;">
                        </div>
                        <div class="hls ps12" style="line-height:3.43mm;white-space:nowrap;left:0mm;top:13.33mm;height:4.23mm;width:184.42mm;">
                            <input class="form-control" type="text"
                                style="color: #000000; width: 100px; position: absolute; margin-top: 12px; margin-left: 5px; left: 250px; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"
                                value="?????????">
                            <input class="form-control" type="text"
                                style="color: #000000; width: 180px; position: absolute; left: 210px; margin-top: 12px; left: 320px; border:none;"
                                name="regDt" id="regDt" value="">
                        </div>
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:20.11mm;height:4.23mm;width:184.42mm;">
                        </div>
                        <div class="hls ps12"
                            style="line-height:3.43mm;white-space:nowrap;left:0mm;top:26.88mm;height:4.23mm;width:184.42mm;">
                            <input class="form-control" type="text"
                            style="color: #000000; width: 100px; position: absolute; margin-top: 12px; margin-left: 5px; left: 250px; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"
                            value="?????????">
                        <input class="form-control" type="text"
                            style="color: #000000; width: 180px; position: absolute; left: 210px; margin-top: 12px; left: 320px; border: none;"
                            name="empNm" id="empNm" value="${empInfo[0].empNm}">
                        </div>
                    </div>
                </div>
            </div>
            <!-- ?????? -->
            <!--  -->
			<button class="btn ripple btn-primary" id="btnVac" 
				type="button" style="position: absolute; top: 100%;">????????????</button>
			<button class="btn ripple btn-dark" id="vacCancle" 
				type="button" style="position: absolute; top: 100%; left: 12%;">????????????</button>
		</div>
</div>

<!-- Basic modal -->
<div class="modal" id="modaldemo1" style="display: none;" aria-modal="true" role="dialog">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content modal-content-demo">
			<div class="modal-header">
				<h6 class="modal-title">?????????</h6>
				<input type="hidden" id="nodeId2" value="<sec:authentication property="principal.employeeVO.empCd" />"/>
				<button aria-label="Close" class="btn-close btn=-sm" data-bs-dismiss="modal" type="button"></button>
			</div>
			<div class="modal-body"  >
				<div style="text-align: right;">
					<input type="text" value="" style="box-shadow:inset 0 0 4px #eee; width:120px; border-radius:4px; border:1px solid silver; font-size:1.1em; color: black; " id="search" placeholder="Search">
				</div>
				<div class="row">
					<div id="tree1" class="col"  style=" overflow:auto; border: 1px solid silver;' width: 300px; ">
					</div>
					<div class="col appl" >
						<p>?????????</p>
						<table  class="table text-nowrap text-md-nowrap table-bordered mg-b-0 col">
							
							<tr>
								<td>??????</td>
								<td>
									<input type="text" value="" name="lineName1" style=" border: none;" readonly="readonly" >
									<button class="btn ripple btn-main-primary" id="select1">??????</button>
								</td>
							</tr>
							
							<tr>
								<td>?????? ?????????</td>
								<td><input type="text" value="" name="lineName2"
									style=" border: none;" readonly="readonly">
									<button class="btn ripple btn-main-primary" id="select2">??????</button>
								</td>
							</tr>
							<tr>
							<td>????????? ?????????</td>
								<td><input type="text" value="" name="lineName3"
									style=" border: none;" readonly="readonly">
									<button class="btn ripple btn-main-primary" id="select3">??????</button>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
				
			<div class="modal-footer">
				<button class="btn ripple btn-primary" type="button" id="btnSave">??????</button>
		
			</div>
		</div>
	</div>
</div>
<!-- Basic modal//////end///// -->

</body>
<script type="text/javascript">   // ?????? ??????....
// ?????? ?????? ???????????? ??????
let nodeId2 = $("#nodeId2").val();
console.log("nodeId2" + nodeId2);

var to = false;
$(function() {
	$('#tree1').jstree(true);
	$('.btn-close,#btnClose').on("click",function() {
		$("#empCode2").val("");
		$("#empCode3").val("");
		$("#empCode4").val("");
		$('input[name="lineName1"]').val("");
		$('input[name="lineName2"]').val("");
		$('input[name="lineName3"]').val("");
	});

	
	$('#tree1').jstree({
		'core' : {
			'data' : {
				"url" : "/tree/jsonData",
				"dataType" : "json"
			}
		},

		'types' : {
			'default' : {
				"icon" : "/resources/css/person.png"
			}
		},
		'plugins' : [ "types",, "wholerow", "search" ]
	}).on("ready.jstree", function(e, data) {
		$('#tree1').jstree('select_node', nodeId2);
		
		writerName = $(".jstree-clicked").text();
		
		
	});
	$("#search").on("keyup", function() {
		if (to) {
			clearTimeout(to);
		}
		to = setTimeout(function() {
			var v = $('#search').val();
			$('#tree1').jstree(true).search(v);
		}, 250);

	});
	
	// ????????? ????????????
	let writerSubstringId = (nodeId2.substring(0,9));
	$('input[name=line0]').val(writerSubstringId);
		
	// ????????????
	let writerDepNm = $(".jstree-wholerow-clicked").val();
	writerName = $(".jstree-wholerow-clicked").text();
	console.log("?????? " + $(".jstree-wholerow-clicked").val(writerName));
	
	console.log("????????? ??????.");
	
	
	// ????????? ????????????
	// ?????? ?????????
	$("#select1").on("click", function(e) {
		
		let Aline1 = $("input[name=line1]").val();
		let Aline2 = $("input[name=line2]").val();
		let Aline3 = $("input[name=line3]").val();
		
			let id = $(".jstree-clicked").attr("id");
			let substringId = (id.substring(0,9));
			console.log("substringId : " + substringId);
			let name = $(".jstree-clicked").text();
			console.log("name" + name);
			
			if($(".jstree-clicked").attr("aria-level") == 4){
				
				if(nodeId2 != substringId && Aline1 != substringId && Aline2 != substringId && Aline3 != substringId){
					console.log("?????????");
					let Aline1 = $('#empCode2').val(substringId);
					let AlineN1 =$('input[name=lineName1]').val(name);
				}else{
					if(nodeId2 == substringId){
						alert("?????? ????????? ????????? ??? ????????????.");
					}else{
						alert("?????? ????????? ???????????? ???????????????.")
					}
				}
			}else{
				alert("????????? ???????????????.")
			}	
	});
	
	$("#select2").on("click", function() {
		let Aline1 = $("input[name=line1]").val();
		let Aline2 = $("input[name=line2]").val();
		let Aline3 = $("input[name=line3]").val();
		
		
		let id = $(".jstree-clicked").attr("id");
		//????????????
		let substringId = (id.substring(0,9));
		console.log("substringId : " + substringId);
		//?????????
		let name = $(".jstree-clicked").text();
		console.log("name" + name);
		console.log("level : " + $(".jstree-clicked").attr("aria-level"));
		if($(".jstree-clicked").attr("aria-level") == 4){
			//nodeId2 : ???????????? ???????????? 
			//substringId : ????????? ????????????
			if(nodeId2 != substringId && Aline1 != substringId && Aline2 != substringId && Aline3 != substringId){
				console.log("?????????");
				let Aline1 = $('#empCode3').val(substringId);
				let AlineN1 =$('input[name=lineName2]').val(name);
			}else{
				if(nodeId2 == substringId){
					alert("?????? ????????? ????????? ??? ????????????.");
				}else{
					alert("?????? ????????? ???????????? ???????????????.")
				}
			}
		}else{
			alert("????????? ???????????????.")
		}
	
});
	
	$("#select3").on("click", function() {
		
		let Aline1 = $("input[name=line1]").val();
		let Aline2 = $("input[name=line2]").val();
		let Aline3 = $("input[name=line3]").val();
		
		
		let id = $(".jstree-clicked").attr("id");
		//????????????
		let substringId = (id.substring(0,9));
		console.log("substringId : " + substringId);
		//?????????
		let name = $(".jstree-clicked").text();
		console.log("name" + name);
		console.log("level : " + $(".jstree-clicked").attr("aria-level"));
		if($(".jstree-clicked").attr("aria-level") == 4){
			//nodeId2 : ???????????? ???????????? 
			//substringId : ????????? ????????????
			if(nodeId2 != substringId && Aline1 != substringId && Aline2 != substringId && Aline3 != substringId){
				console.log("?????????");
				let Aline1 = $('#empCode4').val(substringId);
				let AlineN1 =$('input[name=lineName3]').val(name);
			}else{
				if(nodeId2 == substringId){
					alert("?????? ????????? ????????? ??? ????????????.");
				}else{
					alert("?????? ????????? ???????????? ???????????????.")
				}
			}
		}else{
			alert("????????? ???????????????.")
		}
	});

	
	$("#btnSave").on("click",function(){
		let AlineName1 = $("input[name=lineName1]").val();
		let AlineName2 = $("input[name=lineName2]").val();
		let AlineName3 = $("input[name=lineName3]").val();
		
		$("#linePO2").append("<p style='font-size:12px; text-align: center;''>"+AlineName1+"</p>");
		$("#linePO3").append("<p style='font-size:12px; text-align: center;''>"+AlineName2+"</p>");
		$("#linePO4").append("<p style='font-size:12px; text-align: center;''>"+AlineName3+"</p>");
		
		if(AlineName2 == "" || AlineName1 == "" || AlineName3 == ""){
			alert("???????????? ?????? ???????????? ???????????????.");
			return
		}
		$("#modaldemo1").modal("hide");

	});
});
</script>

<script>
$(function(){
	// ???????????? ????????? ??????????????????@	
	$('input[type="checkbox"][name="check"]').click(function(){
		if($(this).prop('checked')){
			$('input[type="checkbox"][name="check"]').prop('checked',false);
			$(this).prop('checked',true);
		}
	});

// ??????????????? ?????? ?????? ????????????!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	
	let empCd = $("#empCode1").val();
	let data = {"empCd":empCd};

	//?????? ?????? ??????
	let vacCount; 
	
	// ?????? ?????? ?????? ?????? ??????!!
	function vacation(){	
		$.ajax({
			async: false, 
			url:"/attendance/yearCheck",
			contentType:"application/json;charset=utf-8",
			data:JSON.stringify(data),
			type:"post",
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:function(result){
				console.log("vacation" + result);
				vacCount = result[0].vacationList[0].yearCnt;
			
			}	// success end//
		}) // ajax end//
		return vacCount;
	}
	vacation()
	console.log("vacCount2 : ",vacCount);

	// ?????? ????????????!!
	    $( "#sdate,#edate" ).datepicker();
		$.datepicker.setDefaults({
		    dateFormat: 'yy-mm-dd',
		    prevText: '?????? ???',
		    nextText: '?????? ???',
		    monthNames: ['1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???', '9???', '10???', '11???', '12???'],
		    monthNamesShort: ['1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???', '9???', '10???', '11???', '12???'],
		    dayNames: ['???', '???', '???', '???', '???', '???', '???'],
		    dayNamesShort: ['???', '???', '???', '???', '???', '???', '???'],
		    dayNamesMin: ['???', '???', '???', '???', '???', '???', '???'],
		    showMonthAfterYear: true,
		    yearSuffix: '???',
		    minDate: "+0D",
		    beforeShowDay: function(date){
				var day = date.getDay();
				return [(day != 0 && day != 6)];
			}		
		}); 
  	 
		 $('#sdate').datepicker("option", "onClose", function (selectedDate) {
			 console.log(selectedDate," ser");
			$("#edate").datepicker("option", "minDate", selectedDate);
			$("#edate").datepicker("option", "maxDate", vacCount);
			console.log(vacCount);
		});    	 

		// ????????? ?????? ???????????? // 2022??? 12??? 31???
		function getFormatDate(date){
		    var year = date.getFullYear();              //yyyy
		    var month = (1 + date.getMonth());          //M
		    month = month >= 10 ? month : '0' + month;  //month ???????????? ??????
		    var day = date.getDate();                   //d
		    day = day >= 10 ? day : '0' + day;          //day ???????????? ??????
		    return  year + '??? ' + month + '??? ' + day +"???"; 
		}
		
		let regDate = new Date();
		regDate = getFormatDate(regDate);
		$("#regDt").val(regDate);

// ????????????.... APPR_NO, APPR_TIT, REG_DT, FORM_CON, EMP_CD, FORM_NO, APPR_SIT_CD, DEP_CD, DEP_NM
	$("#btnVac").on("click",function(){
		let apprTit = $("#tit").text();
		let depCd = $("#depCd").val();
		let depNm = $("#depNm").text();
		let checked = $('input[type="checkbox"][name="check"]:checked').val();
		let staDate = $("#sdate").val();
		let endDate = $("#edate").val();
		let con = $("#con").val();
		let formCon = checked + "," + staDate+ ","+endDate + ","+ con;
		let empCd2 = $("#empCode2").val();
		let empCd3 = $("#empCode3").val();
		let empCd4 = $("#empCode4").val();
		let empCode = empCd2 +","+ empCd3 +","+ empCd4; 
		console.log("empCode",empCode);
		let data = {"appTit":apprTit, "depCd":depCd, "depNm":depNm, "empCd": empCd, "formCon":formCon, "empCode":empCode};
		
		if(endDate==""||staDate==""||con==""){
			alert("??????????????? ?????? ???????????????");
			return
		}
		
		$.ajax({
			async:false,
			url:"./vacationInsert2",
			contentType:"application/json;charset=utf-8",
			data:JSON.stringify(data),
			type:"post",
			beforeSend:function(xhr){
				xhr.setRequestHeader(header, token);
			},
			success:function(result){
				if(result < 1){
					console.log("?????????!!@@!!");
				}
					console.log(result,"??????!!@@!!");
					window.close();
			}
		}); 

	});
	
	
	// ???????????? ????????? ??? ??????!!@@
	$("#vacCancle").on("click",function(){
		window.close();
	})
		 
}); // $(function) end//



</script>

<!-- Bootstrap js-->
<script src="/resources/assets/plugins/bootstrap/js/popper.min.js"></script>
<script src="/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- Internal Jquery-Ui js-->
<script src="/resources/assets/plugins/jquery-ui/ui/widgets/datepicker.js"></script>
<!-- Internal Jquery.maskedinput js-->
<script src="/resources/assets/plugins/jquery.maskedinput/jquery.maskedinput.js"></script>
<!-- Internal Specturm-colorpicker js-->
<script src="/resources/assets/plugins/spectrum-colorpicker/spectrum.js"></script>
<!--Bootstrap-datepicker js-->
<script src="/resources/assets/plugins/bootstrap-datepicker/bootstrap-datepicker.js"></script>
<!-- Color Theme js -->
<script src="/resources/assets/js/themeColors.js"></script>
<!-- Internal Sweet-Alert js -->
<script src="/resources/assets/plugins/sweet-alert/sweetalert.min.js"></script>
<script src="/resources/assets/plugins/sweet-alert/jquery.sweet-alert.js"></script>