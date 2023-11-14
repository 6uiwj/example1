package com.momo.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieManager {

	public CookieManager() {
	}

	public static void makeCookie(String name, String value, 
			HttpServletResponse response, int time) {
		Cookie cookie = new Cookie(name, value);
		cookie.setMaxAge(time);
		response.addCookie(cookie);
		
	}
	public static String readCookie(String name, HttpServletRequest request) {
		String cookieValue = "";
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie : cookies) {
			String cookieName = cookie.getName();
			
			if(cookieName.equals(name)) {
				cookieValue=cookieName;
				break;
			}
		}
		return cookieValue;
	}
	public static void  deleteCookie(HttpServletResponse response, String name,String value) {
		makeCookie(name, value, response, 0);
	}
}
