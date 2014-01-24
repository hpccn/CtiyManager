package cn.city.manager.view;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.city.manager.R;
import cn.city.manager.fragment.t_huanjing;
import cn.city.manager.fragment.t_jiaotong;
import cn.city.manager.fragment.t_meiqizhongdu;
import cn.city.manager.fragment.t_shengchan;
import cn.city.manager.fragment.t_shipin;
import cn.city.manager.fragment.t_weijian;
import cn.city.manager.fragment.t_wuzhaojingying;
import cn.city.manager.fragment.t_xiaofang;
import cn.city.manager.fragment.t_yaopin;
import cn.city.manager.model.CategoryMeta;



public class EventCategory  implements BaseCategory{
	final private String[] eventTitle = {"违章建筑"
			, "生产安全"
			, "消防安全"
			, "煤气中毒"
			, "环境安全"
			, "食品安全"
			, "药品安全"
			, "卫生所检查"//
			, "无照经营"
			, "矛盾排查"
			, "刑事案件"
			, "交通安全"};
	
	final private String[] eventTemplate = {t_weijian.class.getSimpleName()
			, t_shengchan.class.getSimpleName()
			, t_xiaofang.class.getSimpleName()
			, t_meiqizhongdu.class.getSimpleName()
			, t_huanjing.class.getSimpleName()
			, t_shipin.class.getSimpleName()
			, t_yaopin.class.getSimpleName()
			, null//
			, t_wuzhaojingying.class.getSimpleName()
			, null
			, null
			, t_jiaotong.class.getSimpleName()
	};
	
	final private int[] eventIconId = {R.drawable.ic_structure, 
			R.drawable.ic_safe, R.drawable.ic_fire
			, R.drawable.ic_gas_poisoning, R.drawable.ic_environment
			, R.drawable.ic_food, R.drawable.ic_drug
			, R.drawable.ic_clinic
			, R.drawable.ic_vendor, R.drawable.ic_dispute
			, R.drawable.ic_criminal, R.drawable.ic_traffic};

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
}
