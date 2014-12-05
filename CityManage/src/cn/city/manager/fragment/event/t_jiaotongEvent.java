package cn.city.manager.fragment.event;

public class t_jiaotongEvent extends  CommonEvent {
	
	protected String s_yinhuanren;//	涉案人
	protected String s_yinhuanaddress;//	事件地点
	protected String s_yinhuanxiangqing;//	详情描述
	protected String s_yinhuanlianluo;//	涉案人联系方式

	protected String s_cheliangtype;//	nvarchar(50)	违法车辆类型	no	事件专属字段。下拉列表，单选。分为：小客车、小货车、农用车、摩托车、其他
	protected String s_cheliangsuoyou;//	nvarchar(50)	违法车辆所有人（单位）	no	事件专属字段。
	protected String s_weifaxingwei;//	nvarchar(50)	违法行为	no	事件专属字段。下拉列表，单选。分为：无证驾驶、无牌行驶、超载超员、酒后驾驶、遮挡号牌、其他

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

	public String getS_yinhuanaddress() {
		return s_yinhuanaddress;
	}

	public void setS_yinhuanaddress(String s_yinhuanaddress) {
		this.s_yinhuanaddress = s_yinhuanaddress;
	}

	public String getS_yinhuanxiangqing() {
		return s_yinhuanxiangqing;
	}

	public void setS_yinhuanxiangqing(String s_yinhuanxiangqing) {
		this.s_yinhuanxiangqing = s_yinhuanxiangqing;
	}



	public String getS_yinhuanlianluo() {
		return s_yinhuanlianluo;
	}

	public void setS_yinhuanlianluo(String s_yinhuanlianluo) {
		this.s_yinhuanlianluo = s_yinhuanlianluo;
	}

	public String getS_yinhuanren() {
		return s_yinhuanren;
	}

	public void setS_yinhuanren(String s_yinhuanren) {
		this.s_yinhuanren = s_yinhuanren;
	}
	
	public String getS_cheliangtype() {
		return s_cheliangtype;
	}
	public void setS_cheliangtype(String s_cheliangtype) {
		this.s_cheliangtype = s_cheliangtype;
	}
	public String getS_cheliangsuoyou() {
		return s_cheliangsuoyou;
	}
	public void setS_cheliangsuoyou(String s_cheliangsuoyou) {
		this.s_cheliangsuoyou = s_cheliangsuoyou;
	}
	public String getS_weifaxingwei() {
		return s_weifaxingwei;
	}
	public void setS_weifaxingwei(String s_weifaxingwei) {
		this.s_weifaxingwei = s_weifaxingwei;
	}

}
