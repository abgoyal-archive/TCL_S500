
#ifndef CUSTOM_USER_AGENT_H
#define CUSTOM_USER_AGENT_H

//define user agent for http streaming
//  example:
//  #define STR_HTTP_USER_AGENT "MTK Linux/3.0.13 Android/4.0 Release/02.15.2012 Browser/AppleWebKit534.30 Mobile Safari/534.30 MBBMS/2.2"    

//define wap profile for http streaming
//  example:
//  #define STR_HTTP_WAP_PROFILE  "http http://218.249.47.94/Xianghe/MTK_Athens15_UAProfile.xml"

//define user agent for rtsp streaming
//  example:
//  #define STR_RTSP_USER_AGENT "rtsp: Athens15_TD/V2 Linux/3.0.13 Android/4.0 Release/02.15.2012 Browser/AppleWebKit534.30 Mobile Safari/534.30 MBBMS/2.2"    
//define wap profile for rtsp streaming
//  example:
//  #define STR_RTSP_WAP_PROFILE  "rtsp: http://218.249.47.94/Xianghe/MTK_Athens15_UAProfile.xml"

//add by chengyun.wu@jrdcom.com for PR 293962 about RTSP streaming UA and UAP abnormal	
#define STR_RTSP_USER_AGENT "stagefright/1.1 (Linux;Android 4.0.4;MT6577/IMM76D)"	
#define STR_RTSP_WAP_PROFILE "http://www-ccpp.tcl-ta.com/files/MT6577_UAProfile.xml" 


#endif
