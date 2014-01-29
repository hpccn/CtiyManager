package cn.city.manager.fragment.event;

/**
 * 事件管理-07-卫生所检查
 * @author hpc
 *
 */
public class t_weishengsuoEvent extends CommonEvent {

	protected String t_jianchadate;//	datetime	检查时间	no	事件专属字段。
	protected String s_healthcertificate;//	从业人员是否有健康证	no	事件专属字段。下拉列表，单选：是，否
	protected String s_outofbusiness;//	是否超范围经营冷荤凉菜	no	事件专属字段。下拉列表，单选：是，否
	protected String s_handlingroomclean;//	操作间环境是否干净整洁	no	事件专属字段。下拉列表，单选：是，否
	
	protected String s_yinhuandanwei;//	隐患单位名称	no	事件专属字段。
	protected String s_yinhuanaddress;//	具体地址	no	事件专属字段。
	protected String s_weishengxuke;//	是否有卫生许可证	no	事件专属字段。下拉列表，单选：是，否
	protected String s_yinhuanren;//	隐患单位负责人	yes	事件专属字段。
	protected String s_yinhuanlianluo;//	隐患单位电话	yes	事件专属字段。
 



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

	public String getS_yinhuandanwei() {
		return s_yinhuandanwei;
	}

	public void setS_yinhuandanwei(String s_yinhuandanwei) {
		this.s_yinhuandanwei = s_yinhuandanwei;
	}

	public String getS_yinhuanaddress() {
		return s_yinhuanaddress;
	}

	public void setS_yinhuanaddress(String s_yinhuanaddress) {
		this.s_yinhuanaddress = s_yinhuanaddress;
	}


	public String getS_weishengxuke() {
		return s_weishengxuke;
	}

	public void setS_weishengxuke(String s_weishengxuke) {
		this.s_weishengxuke = s_weishengxuke;
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

	public String getS_healthcertificate() {
		return s_healthcertificate;
	}

	public void setS_healthcertificate(String s_healthcertificate) {
		this.s_healthcertificate = s_healthcertificate;
	}

	public String getS_outofbusiness() {
		return s_outofbusiness;
	}

	public void setS_outofbusiness(String s_outofbusiness) {
		this.s_outofbusiness = s_outofbusiness;
	}

	public String getS_handlingroomclean() {
		return s_handlingroomclean;
	}

	public void setS_handlingroomclean(String s_handlingroomclean) {
		this.s_handlingroomclean = s_handlingroomclean;
	}

}
