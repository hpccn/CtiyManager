package cn.city.manager.model.food;

import org.json.JSONObject;

import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.fragment.event.FoodEvent;
import cn.city.manager.model.BaseContentDecoder;

public class FoodDecoder implements BaseContentDecoder {

	@Override
	public BaseEvent decode(JSONObject json) {
		// TODO Auto-generated method stub
		return parse(json);
	}

	public BaseEvent parse(JSONObject json){
		BaseEvent ev = new FoodEvent();
		return ev;
	}
}
