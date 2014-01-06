package cn.city.manager.view;

import java.util.ArrayList;
import java.util.List;

import cn.city.manager.R;
import cn.city.manager.fragment.t_weijian;
import cn.city.manager.model.CategoryMeta;



public class EventCategory  implements BaseCategory{
	final private String[] eventCategory = {"违章建筑", "生产安全", "消防安全"
			, "煤气中毒", "环境安全"
			, "食品安全", "药品安全"
			, "卫生所检查"//
			, "无照经营", "矛盾排查"
			, "刑事案件", "交通安全"};
	
	final private String[] category = {t_weijian.class.getSimpleName(), null, null
			, null, null
			, null, null
			, null//
			, null, null
			, null, null
};
	
	final private int[] eventCategoryIconId = {R.drawable.ic_structure, 
			R.drawable.ic_safe, R.drawable.ic_fire
			, R.drawable.ic_gas_poisoning, R.drawable.ic_environment
			, R.drawable.ic_food, R.drawable.ic_drug
			, R.drawable.ic_clinic
			, R.drawable.ic_vendor, R.drawable.ic_dispute
			, R.drawable.ic_criminal, R.drawable.ic_traffic};

	final private List <CategoryMeta> eventCategorys = new ArrayList <CategoryMeta>();
	
	public EventCategory(){
		init();
	}
	
	private void init(){
		for (int i = 0, length = eventCategory.length; i < length; ++i){
			CategoryMeta c = new CategoryMeta();
			c.setTemplate(category[i]);
			c.setName(eventCategory[i]);
			c.setDrawableId(eventCategoryIconId[i]);
			eventCategorys.add(c);
		}
	}

	public List<CategoryMeta> getCategorys() {
		return eventCategorys;
	}

	public CategoryMeta getCategoryMeta(int location){
		if (location > -1 && location < eventCategory.length){
			return eventCategorys.get(location);
		}
		return null;
	}
}
