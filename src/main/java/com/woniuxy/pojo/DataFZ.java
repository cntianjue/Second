package com.woniuxy.pojo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DataFZ {
/*
 * 封装的超级json返回类型
 */
	public static <T> Map<String, Object> conversion(List<T> notneed) {

		Map<String, Object> c = new HashMap<String, Object>();
		c.put("list", notneed);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("errorNo", 0);
		Map<String, Object> res = new HashMap<String, Object>();
		res.put("data", c);
		result.put("results", res);

		return result;

	}

}
