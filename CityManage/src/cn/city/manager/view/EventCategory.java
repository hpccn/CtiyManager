package cn.city.manager.view;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import cn.city.manager.R;
import cn.city.manager.fragment.t_canyinfuwujianguan;
import cn.city.manager.fragment.t_gonggongchangsuoweisheng;
import cn.city.manager.fragment.t_huanjing;
import cn.city.manager.fragment.t_jiaotong;
import cn.city.manager.fragment.t_maodunpaicha;
import cn.city.manager.fragment.t_meiqizhongdu;
import cn.city.manager.fragment.t_shengchan;
import cn.city.manager.fragment.t_shenghuoyinyongshuiweisheng;
import cn.city.manager.fragment.t_shipin;
import cn.city.manager.fragment.t_shipinliutongjianguan;
import cn.city.manager.fragment.t_weijian;
import cn.city.manager.fragment.t_weishengsuo;
import cn.city.manager.fragment.t_wuzhaojingying;
import cn.city.manager.fragment.t_xiaofang;
import cn.city.manager.fragment.t_xingshianjian;
import cn.city.manager.fragment.t_xuexiaoweisheng;
import cn.city.manager.fragment.t_yaodianjianguan;
import cn.city.manager.fragment.t_yaopin;
import cn.city.manager.fragment.t_yiliaojigoujianguan;
import cn.city.manager.fragment.t_yiliaojigouweisheng;
import cn.city.manager.model.CategoryMeta;



public class EventCategory  implements BaseCategory{
	final private String[] eventTitle = {
			"生产安全"
			, "消防安全"
			, "环境安全"
			, "违章建筑"
//			, "食品安全"
//			, "药品安全"
//			, "卫生所检查"//
			, "无照经营"
			, "矛盾排查"
//			, "刑事案件"
			, "煤气中毒"
			, "交通安全"
			, "食品流通监管"
			, "餐饮服务监管"
			, "医疗机构监管"
			, "药店监管"
			, "公共场所卫生监督"
			, "生活饮用水卫生监督"
			, "医疗机构卫生监督"
			, "学校卫生监督"
	};
	
	final private String[] eventTemplate = {
			t_shengchan.class.getSimpleName()
			, t_xiaofang.class.getSimpleName()
			, t_huanjing.class.getSimpleName()
			, t_weijian.class.getSimpleName()
//			, t_shipin.class.getSimpleName()
//			, t_yaopin.class.getSimpleName()
//			, t_weishengsuo.class.getSimpleName()//
			, t_wuzhaojingying.class.getSimpleName()
			, t_maodunpaicha.class.getSimpleName()
//			, t_xingshianjian.class.getSimpleName()
			, t_meiqizhongdu.class.getSimpleName()
			, t_jiaotong.class.getSimpleName()
			, t_shipinliutongjianguan.class.getSimpleName()
			, t_canyinfuwujianguan.class.getSimpleName()
			, t_yiliaojigoujianguan.class.getSimpleName()
			, t_yaodianjianguan.class.getSimpleName()
			, t_gonggongchangsuoweisheng.class.getSimpleName()
			, t_shenghuoyinyongshuiweisheng.class.getSimpleName()
			, t_yiliaojigouweisheng.class.getSimpleName()
			, t_xuexiaoweisheng.class.getSimpleName()
	};
	
	final private int[] eventIconId = {
			R.drawable.ic_shengchan
			, R.drawable.ic_xiaofang
			, R.drawable.ic_huanjing
			, R.drawable.ic_weijian
//			, R.drawable.ic_shipin
//			, R.drawable.ic_yaopin
//			, R.drawable.ic_weishengsuo
			, R.drawable.ic_wuzhaojingying
			, R.drawable.ic_maodunpaicha
//			, R.drawable.ic_xingshianjian
			, R.drawable.ic_meiqizhongdu
			, R.drawable.ic_jiaotong
			, R.drawable.ic_shipinliutongjianguan
			, R.drawable.ic_canyinfuwujianguan
			, R.drawable.ic_yiliaojigoujianguan
			, R.drawable.ic_yaodianjianguan
			, R.drawable.ic_gonggongchangsuoweisheng
			, R.drawable.ic_shenghuoyinshuiweisheng
			, R.drawable.ic_yiliaojigouweisheng
			, R.drawable.ic_xuexiaoweisheng
	};

	final private List <CategoryMeta> eventCategorys = new ArrayList <CategoryMeta>();
	final private Map <String, CategoryMeta> mapEventCategoryMeta = new HashMap <String, CategoryMeta>();
	
	public EventCategory(){
		init();
	}
	
	private void init(){
		for (int i = 0, length = eventTitle.length; i < length; ++i){
			CategoryMeta c = new CategoryMeta();
			c.setTemplate(eventTemplate[i]);
			c.setName(eventTitle[i]);
			c.setDrawableId(eventIconId[i]);
			eventCategorys.add(c);
			
			mapEventCategoryMeta.put(eventTemplate[i], c);
		}
	}

	public List<CategoryMeta> getCategorys() {
		return eventCategorys;
	}

	public CategoryMeta getCategoryMeta(int location){
		if (location > -1 && location < eventTitle.length){
			return eventCategorys.get(location);
		}
		return null;
	}
	
	public String getCategoryTitle(String category){
		CategoryMeta c = mapEventCategoryMeta.get(category);
		if (null != c){
			return c.getName();
		}
		return "事件";
	}
	
	public void updateEventCount(String eventCounts){
		try {
			JSONObject json = new JSONObject(eventCounts);
			if (null == json || !json.has("event")) return;
			JSONObject jsEv = json.getJSONObject("event");
			if (null == jsEv || !jsEv.has("content")) return;
			JSONArray jsArray = jsEv.getJSONArray("content");
			if (null == jsArray) return;
			JSONArray jsArrayNew = jsArray.getJSONArray(0);
			JSONArray jsArrayUnsolved = jsArray.getJSONArray(1);
			
			for (int i = 0, length = eventTemplate.length; i < length; ++i){
				eventCategorys.get(i).setNewEvent(jsArrayNew.getInt(i));
				eventCategorys.get(i).setUnsolvedEvent(jsArrayUnsolved.getInt(i));
			}
			
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
