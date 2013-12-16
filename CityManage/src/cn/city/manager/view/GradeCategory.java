package cn.city.manager.view;

import java.util.ArrayList;
import java.util.List;

import cn.city.manager.R;
import cn.city.manager.model.CategoryMeta;



public class GradeCategory implements BaseCategory{
	final private String[] gradeCategory = {"按村庄查看", "按网格查看"};
	final private int[] gradeCategoryIconId = {R.drawable.ic_village, R.drawable.ic_cell};

	final private List <CategoryMeta> gradeCategorys = new ArrayList <CategoryMeta>();
	
	public GradeCategory(){
		init();
	}
	
	private void init(){
		for (int i = 0, length = gradeCategory.length; i < length; ++i){
			CategoryMeta c = new CategoryMeta();
			c.setName(gradeCategory[i]);
			c.setDrawableId(gradeCategoryIconId[i]);
			gradeCategorys.add(c);
		}
	}

	public List<CategoryMeta> getCategorys() {
		return gradeCategorys;
	}

	public CategoryMeta getCategoryMeta(int location){
		if (location > -1 && location < gradeCategory.length){
			return gradeCategorys.get(location);
		}
		return null;
	}
}
