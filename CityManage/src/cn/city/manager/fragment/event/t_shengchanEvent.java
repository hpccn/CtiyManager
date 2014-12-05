package cn.city.manager.fragment.event;
/**
 * 生产安全
 * @author hpc
 *
 */
public class t_shengchanEvent extends CommonEvent {
//	protected String s_yinhuanaddress;//	隐患地点
//	protected String s_yinhuanxiangqing;//	隐患描述
//	protected String s_yinhuandanwei;//	隐患所在单位
//	protected String s_yinhuanren;//	隐患单位负责人
//	protected String s_yinhuanlianluo;//	隐患单位电话

	protected String s_yinhuanaddress;//	nvarchar(50)	被检查单位地址	no	事件专属字段。
	protected String s_yinhuanxiangqing;//	nvarchar(50)	详情描述	yes	事件专属字段。
	protected String t_jianchadate;//	nvarchar(50)	检查时间	no	事件专属字段。
	protected String s_yinhuandanwei;//	nvarchar(50)	被检查单位	no	事件专属字段。
	protected String s_yinhuanren;//	nvarchar(50)	被检查单位负责人	no	事件专属字段。
	protected String s_yinhuanlianluo;//	nvarchar(50)	被检查单位电话	no	事件专属字段。
	protected String s_wuzhaojingying;//	nvarchar(50)	是否无照经营生产经营	no	事件专属字段。下拉列表，单选。分为：是、否
	protected String s_dianxianluanjie;//	nvarchar(50)	电线是否私拉乱接	no	事件专属字段。下拉列表，单选。分为：是、否
	protected String s_chejianzangluan;//	nvarchar(50)	车间是否脏乱	no	事件专属字段。下拉列表，单选。分为：是、否
	protected String s_jiqiposun;//	nvarchar(50)	机器设备是否破损	no	事件专属字段。下拉列表，单选。分为：是、否
	protected String s_dianzaxiang;//	nvarchar(50)	电闸箱前是否堆放	no	事件专属字段。下拉列表，单选。分为：是、否
	protected String s_huaxuepin;//	nvarchar(50)	是否存放、使用危险化学品	no	事件专属字段。下拉列表，单选。分为：是、否

	
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

	public String getS_yinhuandanwei() {
		return s_yinhuandanwei;
	}

	public void setS_yinhuandanwei(String s_yinhuandanwei) {
		this.s_yinhuandanwei = s_yinhuandanwei;
	}

	public String getS_yinhuanren() {
		return s_yinhuanren;
	}

	public void setS_yinhuanren(String s_yinhuanren) {
		this.s_yinhuanren = s_yinhuanren;
	}

	public String getS_yinhuanlianluo() {
		return s_yinhuanlianluo;
	}

	public void setS_yinhuanlianluo(String s_yinhuanlianluo) {
		this.s_yinhuanlianluo = s_yinhuanlianluo;
	}

	public String getT_jianchadate() {
		return t_jianchadate;
	}

	public void setT_jianchadate(String t_jianchadate) {
		this.t_jianchadate = t_jianchadate;
	}

	public String getS_wuzhaojingying() {
		return s_wuzhaojingying;
	}

	public void setS_wuzhaojingying(String s_wuzhaojingying) {
		this.s_wuzhaojingying = s_wuzhaojingying;
	}

	public String getS_dianxianluanjie() {
		return s_dianxianluanjie;
	}

	public void setS_dianxianluanjie(String s_dianxianluanjie) {
		this.s_dianxianluanjie = s_dianxianluanjie;
	}

	public String getS_chejianzangluan() {
		return s_chejianzangluan;
	}

	public void setS_chejianzangluan(String s_chejianzangluan) {
		this.s_chejianzangluan = s_chejianzangluan;
	}

	public String getS_jiqiposun() {
		return s_jiqiposun;
	}

	public void setS_jiqiposun(String s_jiqiposun) {
		this.s_jiqiposun = s_jiqiposun;
	}

	public String getS_dianzaxiang() {
		return s_dianzaxiang;
	}

	public void setS_dianzaxiang(String s_dianzaxiang) {
		this.s_dianzaxiang = s_dianzaxiang;
	}

	public String getS_huaxuepin() {
		return s_huaxuepin;
	}

	public void setS_huaxuepin(String s_huaxuepin) {
		this.s_huaxuepin = s_huaxuepin;
	}

}
