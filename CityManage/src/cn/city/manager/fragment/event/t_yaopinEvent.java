package cn.city.manager.fragment.event;
//
//
public class t_yaopinEvent extends t_shipinEvent {
	protected String s_yinhuandanweitype;//	nvarchar(50)	隐患单位类型	no	事件专属字段。下拉列表，单选。分为：医疗诊所、药店。

	public String getS_yinhuandanweitype() {
		return s_yinhuandanweitype;
	}

	public void setS_yinhuandanweitype(String s_yinhuandanweitype) {
		this.s_yinhuandanweitype = s_yinhuandanweitype;
	}

}
