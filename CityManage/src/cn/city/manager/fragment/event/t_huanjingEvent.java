package cn.city.manager.fragment.event;

/**
 * 事件管理-04-环境安全
 * @author hpc
 *
 */
public class t_huanjingEvent extends CommonEvent {

	


	protected String s_yinhuanaddress;//	nvarchar(50)	垃圾所在地点	no	事件专属字段。
	protected String s_yinhuanxiangqing;//	nvarchar(50)	详情描述	no	事件专属字段。
	protected String s_garbagetype;//	nvarchar(50)	垃圾种类	no	事件专属字段。下拉列表，单选：生活垃圾，建筑垃圾
	protected double d_garbagequantity;//		decimal	垃圾数量（吨）	no	事件专属字段。
	
	
	@Override
	public String getContent() {
		// TODO Auto-generated method stub
		return s_garbagetype + " , " + s_yinhuanxiangqing;
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

	public String getS_garbagetype() {
		return s_garbagetype;
	}

	public void setS_garbagetype(String s_garbagetype) {
		this.s_garbagetype = s_garbagetype;
	}

	public double getD_garbagequantity() {
		return d_garbagequantity;
	}

	public void setD_garbagequantity(double d_garbagequantity) {
		this.d_garbagequantity = d_garbagequantity;
	}


}
