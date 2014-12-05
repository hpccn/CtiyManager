package cn.city.manager.model;

public class CategoryMeta {
	private String name, template;
	private int drawableId;
	private int newEvent;
	private int unsolvedEvent;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getDrawableId() {
		return drawableId;
	}

	public void setDrawableId(int drawableId) {
		this.drawableId = drawableId;
	}

	public String getTemplate() {
		return template;
	}

	public void setTemplate(String template) {
		this.template = template;
	}

	public int getNewEvent() {
		return newEvent;
	}

	public void setNewEvent(int newEvent) {
		this.newEvent = newEvent;
	}

	public int getUnsolvedEvent() {
		return unsolvedEvent;
	}

	public void setUnsolvedEvent(int unsolvedEvent) {
		this.unsolvedEvent = unsolvedEvent;
	}

}
