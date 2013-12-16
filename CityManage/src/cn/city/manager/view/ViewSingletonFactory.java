package cn.city.manager.view;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.city.manager.fragment.CriminalFragment;
import cn.city.manager.fragment.DisputeFragment;
import cn.city.manager.fragment.FoodDrugFragment;
import cn.city.manager.fragment.GeneralFragment;
import cn.city.manager.fragment.IllegalStructureFragment;
import cn.city.manager.fragment.ImportantPersonFragment;
import cn.city.manager.fragment.LoginFragment;
import cn.city.manager.fragment.MainFragment;
import cn.city.manager.fragment.OutcastFragment;
import cn.city.manager.fragment.RestaurantFragment;
import cn.city.manager.fragment.SanitationFragment;
import cn.city.manager.fragment.TrafficFragment;
import cn.city.manager.fragment.UnlicensedVendorFragment;



public class ViewSingletonFactory {
//	private final static String TAG = ViewSingletonFactory.class.getSimpleName();
    private static class SingletonInstance {
        private static final ViewSingletonFactory instance = new ViewSingletonFactory();
    }

    public static ViewSingletonFactory getInstance() {
        return SingletonInstance.instance;
    }

    
    private ViewSingletonFactory(){
    	init();
    	init2();
    }
    
    private int position;
	final private List<Class<?>> fragments = new ArrayList<Class<?>>();
	final private List <String> titles = new ArrayList<String>();
	final private Map <String, Class<?>> categorys = new HashMap<String, Class<?>>();
	
	final private String[] eventCategory = {"生产安全", "消防安全", "煤气中毒"
			, "环境安全", "食品安全", "药品安全"
			, "违章建筑", "卫生所检查", "无照经营"
			, "矛盾排查", "刑事案件", "交通安全"};
	final private Class<?>[] clzCategorys = {GeneralFragment.class, GeneralFragment.class, GeneralFragment.class
			, SanitationFragment.class, FoodDrugFragment.class, FoodDrugFragment.class
			, IllegalStructureFragment.class, GeneralFragment.class, UnlicensedVendorFragment.class
			, DisputeFragment.class, CriminalFragment.class, TrafficFragment.class};
	final private List <Class<?>> categorysClz = new ArrayList<Class<?>>();
	
	final private List <String> categoryName = new ArrayList<String>();
	private void init(){
		for (String e : eventCategory){
			categoryName.add(e);
		}
		
		for (Class<?> clz : clzCategorys){
			categorysClz.add(clz);
		}
		
		for (int i = 0, length = eventCategory.length; i < length; ++i){
			categorys.put(eventCategory[i], clzCategorys[i]);
		}
	}
	private void init2(){
//		fragments.add(MainFragment.class);
//		fragments.add(LoginFragment.class);
		
		fragments.add(FoodDrugFragment.class);
		fragments.add(RestaurantFragment.class);
		fragments.add(SanitationFragment.class);
		fragments.add(TrafficFragment.class);
		fragments.add(CriminalFragment.class);
		fragments.add(OutcastFragment.class);
		fragments.add(ImportantPersonFragment.class);
		fragments.add(DisputeFragment.class);
		fragments.add(IllegalStructureFragment.class);
		fragments.add(UnlicensedVendorFragment.class);
//		
//		fragments.add(.class);

//		fragments.add(.class);
		titles.clear();
//		for (Class c : fragments) {
//			String tmp = c.getSimpleName().replace("Fragment", "");
//			
//			titles.add(tmp);
//		}
//		titles.add("主菜单");
//		titles.add("登录");
		
		titles.add("食品、药品");
		titles.add("餐饮检查");
		titles.add("环境、垃圾隐患");
		titles.add("交通安全隐患");
		titles.add("刑事案件发案");
		titles.add("流动人口服务管理");
		titles.add("重点人、重点部位管控");
		titles.add("矛盾纠纷排查");
		titles.add("违章建筑");
		titles.add("无照经营");
		

		categorys.put("main", MainFragment.class);
		categorys.put("login", LoginFragment.class);
		
		categorys.put("food", FoodDrugFragment.class);
		categorys.put("restaurant", RestaurantFragment.class);
		categorys.put("sanitation", SanitationFragment.class);
		categorys.put("traffic", TrafficFragment.class);
		categorys.put("criminal", CriminalFragment.class);
		categorys.put("outcast", OutcastFragment.class);
		categorys.put("importantPerson", ImportantPersonFragment.class);
		categorys.put("dispute", DisputeFragment.class);
		categorys.put("illegalStructure", IllegalStructureFragment.class);
		categorys.put("unlicensedVendor", UnlicensedVendorFragment.class);
		position = 0;
	}


//	public List<Class> getFragments() {
//		return fragments;
//	}
//	
//
	public List<String> getTitles() {
		return titles;
	}
	
	public final Class<?> getFragment(int position) {
		return fragments.get(position);
	}
	
	public final String getTitles(int position) {
		return titles.get(position);
	}

	public final Class<?> getFragment() {
		return fragments.get(position);
	}
	
	public int getPosition() {
		return position;
	}


	public void setPosition(int position) {
		this.position = position;
	}


	public Map<String, Class<?>> getCategorys() {
		return categorys;
	}

	public final Class<?> getFragment(final String category) {
		return categorys.get(category);
	}


	public List<String> getEventCategory() {
		return categoryName;
	}

}
