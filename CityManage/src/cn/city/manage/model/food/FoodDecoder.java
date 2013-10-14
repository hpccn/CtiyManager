package cn.city.manage.model.food;

import org.json.JSONObject;

import cn.city.manage.model.BaseContent;
import cn.city.manage.model.BaseContentDecoder;

public class FoodDecoder implements BaseContentDecoder {

	@Override
	public BaseContent decode(JSONObject json) {
		// TODO Auto-generated method stub
		return parse(json);
	}

	public BaseContent parse(JSONObject json){
		BaseContent ev = new FoodEvent();
		return null;
	}
}
