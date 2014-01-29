package cn.city.manager.fragment.event;

public class t_maodunpaichaEvent extends CommonEvent {
	protected String s_yinhuanxiangqing;//	纠纷基本情况	no	事件专属字段。
	protected String s_yinhuanaddress;//	排查地点	no	事件专属字段。
	protected String t_paichadate;//	排查时间	no	事件专属字段。
	protected String s_jiufentype;//	纠纷类型	no	事件专属字段。下拉列表，单选：邻里纠纷、婚姻家庭纠纷、损害赔偿纠纷、房屋宅基地纠纷、村务管理纠纷、其他（可在备注标注）。
	protected String s_jiufenren;//	纠纷方名称	no	事件专属字段。允许填写纠纷几方的名称或姓名。
	protected String s_yinhuanlianluo;//	纠纷方电话	yes	事件专属字段。允许填写纠纷几方的名称或姓名。

	@Override
	public String getContent() {
		// TODO Auto-generated method stub
		return s_yinhuanxiangqing;
	}

	@Override
	public String getAddress() {
		// TODO Auto-generated method stub
		return s_yinhuanaddress;
	}

	@Override
	public void setAddress(String address) {
		// TODO Auto-generated method stub
		s_yinhuanaddress = address;
	}

	public String getT_paichadate() {
		return t_paichadate;
	}

	public void setT_paichadate(String t_paichadate) {
		this.t_paichadate = t_paichadate;
	}

	public String getS_yinhuanaddress() {
		return s_yinhuanaddress;
	}

	public void setS_yinhuanaddress(String s_yinhuanaddress) {
		this.s_yinhuanaddress = s_yinhuanaddress;
	}

	public String getS_jiufentype() {
		return s_jiufentype;
	}

	public void setS_jiufentype(String s_jiufentype) {
		this.s_jiufentype = s_jiufentype;
	}

	public String getS_yinhuanxiangqing() {
		return s_yinhuanxiangqing;
	}

	public void setS_yinhuanxiangqing(String s_yinhuanxiangqing) {
		this.s_yinhuanxiangqing = s_yinhuanxiangqing;
	}

	public String getS_jiufenren() {
		return s_jiufenren;
	}

	public void setS_jiufenren(String s_jiufenren) {
		this.s_jiufenren = s_jiufenren;
	}

	public String getS_yinhuanlianluo() {
		return s_yinhuanlianluo;
	}

	public void setS_yinhuanlianluo(String s_yinhuanlianluo) {
		this.s_yinhuanlianluo = s_yinhuanlianluo;
	}

}
