package com.woniuxy.pojo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DataFZNoPageInfo {
	public static  Map<String, Object> conversion(List<DormInfo> notneed) {

		Map<String, Object> a = new HashMap<String, Object>();

			DormInfo obj=(DormInfo)notneed.get(0);
			a.put("count",obj.getCount());
			a.put("type",obj.getType());
			a.put("saddress",obj.getSaddress());
			a.put("money",obj.getMoney());
			a.put("rtype",obj.getRtype());
			a.put("paytype",obj.getPaytype());
			a.put("master",obj.getMaster());
			a.put("phone",obj.getPhone());
			a.put("rtime",obj.getRtime());
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("errorNo", 0);
		Map<String, Object> res = new HashMap<String, Object>();
		res.put("data", a);
		result.put("results", res);

		return result;

	}
}
