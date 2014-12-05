package cn.city.manager.fragment.event;

/**
 * 消防安全
 * @author hpc
 *
 */
public class t_xiaofangEvent extends CommonEvent {
	protected String s_yinhuanaddress;//	被检查单位地址
	protected String s_yinhuanxiangqing;//	详情描述
	protected String s_yinhuandanwei;//	被检查单位
	protected String s_yinhuanren;//	被检查单位负责人
	protected String s_yinhuanlianluo;//	被检查单位电话

	protected String t_jianchadate;//	nvarchar(50)	检查时间	no	事件专属字段。
	protected String s_tongdaoduse;//	nvarchar(50)	车间通道是否堵塞	no	事件专属字段。下拉列表，单选。分为：是、否
	protected String s_qicaisunhuai;//	nvarchar(50)	消防器材是否损坏、过期	no	事件专属字段。下拉列表，单选。分为：是、否
	protected String s_dianxianluanjie;//	nvarchar(50)	电线是否私拉乱接	no	事件专属字段。下拉列表，单选。分为：是、否
	protected String s_shusanbiaoshi;//	nvarchar(50)	未安装疏散警示标识	no	事件专属字段。下拉列表，单选。分为：是、否


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

	public String getS_tongdaoduse() {
		return s_tongdaoduse;
	}

	public void setS_tongdaoduse(String s_tongdaoduse) {
		this.s_tongdaoduse = s_tongdaoduse;
	}

	public String getS_qicaisunhuai() {
		return s_qicaisunhuai;
	}

	public void setS_qicaisunhuai(String s_qicaisunhuai) {
		this.s_qicaisunhuai = s_qicaisunhuai;
	}

	public String getS_dianxianluanjie() {
		return s_dianxianluanjie;
	}

	public void setS_dianxianluanjie(String s_dianxianluanjie) {
		this.s_dianxianluanjie = s_dianxianluanjie;
	}

	public String getS_shusanbiaoshi() {
		return s_shusanbiaoshi;
	}

	public void setS_shusanbiaoshi(String s_shusanbiaoshi) {
		this.s_shusanbiaoshi = s_shusanbiaoshi;
	}

}
