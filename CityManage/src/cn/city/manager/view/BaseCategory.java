package cn.city.manager.view;

import java.util.List;

import cn.city.manager.model.CategoryMeta;

public interface BaseCategory {
	public List<CategoryMeta> getCategorys();
	public CategoryMeta getCategoryMeta(int location);
}
