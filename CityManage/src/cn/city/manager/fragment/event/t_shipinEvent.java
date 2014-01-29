package cn.city.manager.fragment.event;

/**
 * 事件管理-05-食品安全
 * @author hpc
 *
 */
public class t_shipinEvent extends CommonEvent {

	
	protected String s_yinhuandanwei;//	食品单位名称	no
	protected String s_yinhuanaddress;//	营业地点	no
	protected String s_license;//	是否有营业执照	no					下拉列表，单选：是，否
	protected String s_weishengxuke;//	是否有卫生许可证	no		下拉列表，单选：是，否
	protected String s_yinhuanren;//	隐患单位负责人	yes
	protected String s_yinhuanlianluo;//	隐患单位电话	yes

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

	public String getS_license() {
		return s_license;
	}

	public void setS_license(String s_license) {
		this.s_license = s_license;
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

}
