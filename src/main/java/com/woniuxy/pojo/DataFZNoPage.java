package com.woniuxy.pojo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DataFZNoPage {
	public static  Map<String, Object> conversion(List<Student> notneed) {

		Map<String, Object> a = new HashMap<String, Object>();
		
			Student obj=(Student)notneed.get(0);
			a.put("sname",obj.getSname());
			a.put("cname",obj.getCname());
			a.put("saddress",obj.getSaddress());
			a.put("sex",obj.getSex());
			a.put("iphone",obj.getIphone());
			a.put("livetime",obj.getLivetime());
			a.put("img",obj.getImg());
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("errorNo", 0);
		Map<String, Object> res = new HashMap<String, Object>();
		res.put("data", a);
		result.put("results", res);

		return result;

	}
}
