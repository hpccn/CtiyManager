package cn.city.manager.fragment.event;

/**
 * 事件管理-09-无照经营
 * @author hpc
 *
 */
public class t_wuzhaojingyingEvent extends CommonEvent {

	
	protected String s_yinhuanren;//	经营者姓名	no	事件专属字段。
	protected String s_yinhuanaddress;//	具体地址	no	事件专属字段。
	protected String s_houseowner;//	房东姓名	no	事件专属字段。
	protected String s_businessitems;//	经营项目	no	事件专属字段。
	protected String s_yinhuanlianluo;//	经营者电话	yes	事件专属字段。

	
	
	@Override
	public String getContent() {
		// TODO Auto-generated method stub
		return s_yinhuanren + "  " + s_businessitems;
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


	public String getS_yinhuanren() {
		return s_yinhuanren;
	}

	public void setS_yinhuanren(String s_yinhuanren) {
		this.s_yinhuanren = s_yinhuanren;
	}

	public String getS_houseowner() {
		return s_houseowner;
	}

	public void setS_houseowner(String s_houseowner) {
		this.s_houseowner = s_houseowner;
	}

	public String getS_businessitems() {
		return s_businessitems;
	}

	public void setS_businessitems(String s_businessitems) {
		this.s_businessitems = s_businessitems;
	}

	public String getS_yinhuanlianluo() {
		return s_yinhuanlianluo;
	}

	public void setS_yinhuanlianluo(String s_yinhuanlianluo) {
		this.s_yinhuanlianluo = s_yinhuanlianluo;
	}


}
