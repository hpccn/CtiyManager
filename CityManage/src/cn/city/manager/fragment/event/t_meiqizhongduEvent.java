package cn.city.manager.fragment.event;
/**
 * -煤气中毒
 * @author hpc
 *
 */
public class t_meiqizhongduEvent extends CommonEvent {

	protected String s_yinhuanaddress;//	取暖户地址
	protected String s_yinhuanxiangqing;//	详情描述
	protected String s_yinhuanlianluo;//	涉案人联系方式

	protected String s_yinhuanren;//	nvarchar(50)	取暖人姓名	no	事件专属字段。
	protected String s_fangwuxingzhi;//	nvarchar(50)	房屋性质	no	事件专属字段。下拉列表，单选。分为：自住房、出租房屋、集体宿舍、工地工棚、街边门店、其他
	protected String s_qunuanluju;//	nvarchar(50)	是否使用安全的取暖炉具	no	事件专属字段。下拉列表，单选。分为：是、否
	protected String s_anzhuangshiyong;//	nvarchar(50)	炉具、烟筒安装使用是否正确	no	事件专属字段。下拉列表，单选。分为：是、否
	protected String s_yantongwantou;//	nvarchar(50)	烟筒是否安装弯头	no	事件专属字段。下拉列表，单选。分为：是、否
	protected String s_yandaoduse;//	nvarchar(50)	烟道是否堵塞	no	事件专属字段。下拉列表，单选。分为：是、否
	protected String s_tongfengsheshi;//	nvarchar(50)	是否安装风斗或有其他通风设施	no	事件专属字段。下拉列表，单选。分为：是、否
	protected String s_xuanchuancailiao;//	nvarchar(50)	是否有宣传材料	no	事件专属字段。下拉列表，单选。分为：是、否
	protected String s_zerenshu;//	nvarchar(50)	是否签订《预防煤气中毒安全责任书》	no	事件专属字段。下拉列表，单选。分为：是、否
	protected String s_baojingqi;//	nvarchar(50)	是否按规定数量安装一氧化碳报警器	no	事件专属字段。下拉列表，单选。分为：是、否

	
	
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

	public String getS_fangwuxingzhi() {
		return s_fangwuxingzhi;
	}

	public void setS_fangwuxingzhi(String s_fangwuxingzhi) {
		this.s_fangwuxingzhi = s_fangwuxingzhi;
	}

	public String getS_qunuanluju() {
		return s_qunuanluju;
	}

	public void setS_qunuanluju(String s_qunuanluju) {
		this.s_qunuanluju = s_qunuanluju;
	}

	public String getS_anzhuangshiyong() {
		return s_anzhuangshiyong;
	}

	public void setS_anzhuangshiyong(String s_anzhuangshiyong) {
		this.s_anzhuangshiyong = s_anzhuangshiyong;
	}

	public String getS_yantongwantou() {
		return s_yantongwantou;
	}

	public void setS_yantongwantou(String s_yantongwantou) {
		this.s_yantongwantou = s_yantongwantou;
	}

	public String getS_yandaoduse() {
		return s_yandaoduse;
	}

	public void setS_yandaoduse(String s_yandaoduse) {
		this.s_yandaoduse = s_yandaoduse;
	}

	public String getS_tongfengsheshi() {
		return s_tongfengsheshi;
	}

	public void setS_tongfengsheshi(String s_tongfengsheshi) {
		this.s_tongfengsheshi = s_tongfengsheshi;
	}

	public String getS_xuanchuancailiao() {
		return s_xuanchuancailiao;
	}

	public void setS_xuanchuancailiao(String s_xuanchuancailiao) {
		this.s_xuanchuancailiao = s_xuanchuancailiao;
	}

	public String getS_zerenshu() {
		return s_zerenshu;
	}

	public void setS_zerenshu(String s_zerenshu) {
		this.s_zerenshu = s_zerenshu;
	}

	public String getS_baojingqi() {
		return s_baojingqi;
	}

	public void setS_baojingqi(String s_baojingqi) {
		this.s_baojingqi = s_baojingqi;
	}

	
}
