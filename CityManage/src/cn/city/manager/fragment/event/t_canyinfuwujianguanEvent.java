package cn.city.manager.fragment.event;
/**
 * 餐饮服务监管（新）
 * @author hpc
 *
 */
public class t_canyinfuwujianguanEvent extends CommonEvent {
	protected String t_jianchadate;//	datetime	检查时间	no	事件专属字段。
	protected String s_yinhuandanwei;//	nvarchar(100)	单位名称	no	事件专属字段。
	protected String s_yinhuanren;//	nvarchar(50)	单位负责人	yes	事件专属字段。
	protected String s_yinhuanaddress;//	ntext	单位经营地址	no	事件专属字段。
	protected String s_yinhuanlianluo;//	nvarchar(100)	单位电话	yes	事件专属字段。
	protected String s_canyinfuwuxukezheng;//	nvarchar(50)	是否有餐饮服务许可证	no	事件专属字段。
	protected String s_youxiaoqi;//	nvarchar(50)	餐饮服务许可证是否在有效期内	no	事件专属字段。
	protected String s_chaofanweijingying;//	nvarchar(50)	是否超范围经营	no	事件专属字段。
	protected String s_lenghunliangcai;//	nvarchar(50)	经营场所是否含冷荤凉菜	no	事件专属字段。
	protected String s_memberjiankangzheng;//	nvarchar(50)	从业人员是否有健康证	no	事件专属字段。
	protected String s_enviornmentclean;//	nvarchar(50)	操作间环境是否干净整洁	no	事件专属字段。



	@Override
	public String getContent() {
		// TODO Auto-generated method stub
		return s_yinhuandanwei;
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

	public String getT_jianchadate() {
		return t_jianchadate;
	}

	public void setT_jianchadate(String t_jianchadate) {
		this.t_jianchadate = t_jianchadate;
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

	public String getS_yinhuanaddress() {
		return s_yinhuanaddress;
	}

	public void setS_yinhuanaddress(String s_yinhuanaddress) {
		this.s_yinhuanaddress = s_yinhuanaddress;
	}

	public String getS_yinhuanlianluo() {
		return s_yinhuanlianluo;
	}

	public void setS_yinhuanlianluo(String s_yinhuanlianluo) {
		this.s_yinhuanlianluo = s_yinhuanlianluo;
	}

	public String getS_canyinfuwuxukezheng() {
		return s_canyinfuwuxukezheng;
	}

	public void setS_canyinfuwuxukezheng(String s_canyinfuwuxukezheng) {
		this.s_canyinfuwuxukezheng = s_canyinfuwuxukezheng;
	}

	public String getS_youxiaoqi() {
		return s_youxiaoqi;
	}

	public void setS_youxiaoqi(String s_youxiaoqi) {
		this.s_youxiaoqi = s_youxiaoqi;
	}

	public String getS_chaofanweijingying() {
		return s_chaofanweijingying;
	}

	public void setS_chaofanweijingying(String s_chaofanweijingying) {
		this.s_chaofanweijingying = s_chaofanweijingying;
	}

	public String getS_lenghunliangcai() {
		return s_lenghunliangcai;
	}

	public void setS_lenghunliangcai(String s_lenghunliangcai) {
		this.s_lenghunliangcai = s_lenghunliangcai;
	}

	public String getS_memberjiankangzheng() {
		return s_memberjiankangzheng;
	}

	public void setS_memberjiankangzheng(String s_memberjiankangzheng) {
		this.s_memberjiankangzheng = s_memberjiankangzheng;
	}

	public String getS_enviornmentclean() {
		return s_enviornmentclean;
	}

	public void setS_enviornmentclean(String s_enviornmentclean) {
		this.s_enviornmentclean = s_enviornmentclean;
	}


}
