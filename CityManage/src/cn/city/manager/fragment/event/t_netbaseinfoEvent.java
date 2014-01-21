package cn.city.manager.fragment.event;

import org.json.JSONObject;

import com.google.gson.Gson;

import android.graphics.drawable.Drawable;

public class t_netbaseinfoEvent extends BaseEvent {
	public final static String category = t_netbaseinfoEvent.class.getSimpleName();
	private String s_netid;// 网格ID",
	private String s_villageid;// 村ID",
	private String s_villagename;// 村名称",
	private String s_netname;// 网格名称",
	private int i_nethushu;// 100, 常驻户数
	private int i_netrenkou;// 500, 常驻人口数
	private int i_liudongzong;// 600, 流动人口总数
	private int i_youzanzhu;// 400, 流动人口数（已办暂住证）
	private int i_wuzanzhuzong;// 200, 流动人口数（未办暂住证总数）
	private int i_wuzanzhu16shang;// 100, 流动人口数（未办暂住证，16周岁以上）
	private int i_wuzanzhu16xia;// 50, 流动人口数（未办暂住证，16周岁以下）
	private int i_liudongbusiness;// 700, 流动人口个体经商户数
	private int i_liudongwork;// 1000 流动人口从业人员数
	private int i_liudongemployee;// 2000, 招用流动人口数
	private int i_newcomer;// 80, 新来京人员数量
	private int i_liudongleave;// 90, 已离开流动人口数量
	private int i_chuzuhuzong;// 899, 出租房屋总户数
	private int i_chuzujianzong;// 888, 出租房屋总间数
	private int i_chuzuyuanzong;// 323, 出租大院户数
	private int i_zuzhurenshu;// 1000,租住人员数
	private int i_chuzuyiranyibao;// 88, 利用出租房屋存放易燃易爆危险化学品
	private int i_chuzuwuzhao;// 666, 利用出租房屋无照经营
	private int i_chuzufeifabanxue;// 2, 利用出租房屋非法办学
	private int i_chuzufeipinshougou;// 345, 利用出租房屋收购废品
	private int i_chuzuqunzu;// 234, 利用出租房屋群租
	private int i_wuye;// 789, 无业人员数
	private int i_yuling;// 988, 育龄妇女数
	private int i_qiyeshu;// 20, 企业数
	private int i_mendianshu;// 22, 门店数
	private int i_feipinzhan;// 20, 废品收购站数
	private int i_youyuanpeixun;// 8, 幼儿园或培训机构数
	private int i_zhongyangzhidi;// 9, 种养殖地数
	private int i_lujuqunuan;// 876, 炉具取暖户数
	private String s_infouploadname;// 最近更新人",
	private String t_inforuploaddate;// 1380962998588, 更新日期
	private String s_netleadername;// 格长姓名"
	private String s_netleadertel;// 格长电话"
	private String s_villageleadername;// 村治保主任姓名"
	private String s_villageleadertel;// 村治保主任电话"
	private String s_remark;// 备注"




//	final private Type listType = new TypeToken<VillageEvent>(){}.getType();
//	final private Gson gson = new Gson();
	

	@Override
	public BaseEvent fromJSONObject(JSONObject jObj) throws Exception {
		if (null == jObj)
			return null;
//		Type listType = new TypeToken<VillageEvent>(){}.getType();
		Gson gson = new Gson();
//		VillageEvent event = gson.fromJson(jObj.toString(), listType);

		t_netbaseinfoEvent event = gson.fromJson(jObj.toString(), this.getClass());//listType);

		return event;
	}

	@Override
	public String getContent() {

		return null;
	}

	@Override
	public String getVillage() {

		return s_villagename;
	}

	@Override
	public String getNetGridId() {

		return s_netid;
	}



	@Override
	public void setAddress(String address) {


	}

	@Override
	public void setL_latitude(double latitude) {


	}

	@Override
	public void setD_longitude(double longitude) {


	}

	public String getS_netid() {
		return s_netid;
	}

	public void setS_netid(String netid) {
		this.s_netid = netid;
	}

	public String getS_villageid() {
		return s_villageid;
	}

	public void setS_villageid(String villageid) {
		this.s_villageid = villageid;
	}

	public String getS_villagename() {
		return s_villagename;
	}

	public void setS_villagename(String villagename) {
		this.s_villagename = villagename;
	}

	public String getS_netname() {
		return s_netname;
	}

	public void setS_netname(String netname) {
		this.s_netname = netname;
	}

	public int getI_nethushu() {
		return i_nethushu;
	}

	public void setI_nethushu(int nethushu) {
		this.i_nethushu = nethushu;
	}

	public int getI_netrenkou() {
		return i_netrenkou;
	}

	public void setI_netrenkou(int netrenkou) {
		this.i_netrenkou = netrenkou;
	}

	public int getI_liudongzong() {
		return i_liudongzong;
	}

	public void setI_liudongzong(int liudongzong) {
		this.i_liudongzong = liudongzong;
	}

	public int getI_youzanzhu() {
		return i_youzanzhu;
	}

	public void setI_youzanzhu(int youzanzhu) {
		this.i_youzanzhu = youzanzhu;
	}

	public int getI_wuzanzhuzong() {
		return i_wuzanzhuzong;
	}

	public void setI_wuzanzhuzong(int wuzanzhuzong) {
		this.i_wuzanzhuzong = wuzanzhuzong;
	}

	public int getI_wuzanzhu16shang() {
		return i_wuzanzhu16shang;
	}

	public void setI_wuzanzhu16shang(int wuzanzhu16shang) {
		this.i_wuzanzhu16shang = wuzanzhu16shang;
	}

	public int getI_wuzanzhu16xia() {
		return i_wuzanzhu16xia;
	}

	public void setI_wuzanzhu16xia(int wuzanzhu16xia) {
		this.i_wuzanzhu16xia = wuzanzhu16xia;
	}

	public int getI_liudongbusiness() {
		return i_liudongbusiness;
	}

	public void setI_liudongbusiness(int liudongbusiness) {
		this.i_liudongbusiness = liudongbusiness;
	}

	public int getI_liudongwork() {
		return i_liudongwork;
	}

	public void setI_liudongwork(int liudongwork) {
		this.i_liudongwork = liudongwork;
	}

	public int getI_liudongemployee() {
		return i_liudongemployee;
	}

	public void setI_liudongemployee(int liudongemployee) {
		this.i_liudongemployee = liudongemployee;
	}

	public int getI_newcomer() {
		return i_newcomer;
	}

	public void setI_newcomer(int newcomer) {
		this.i_newcomer = newcomer;
	}

	public int getI_liudongleave() {
		return i_liudongleave;
	}

	public void setI_liudongleave(int liudongleave) {
		this.i_liudongleave = liudongleave;
	}

	public int geti_chuzuhuzong() {
		return i_chuzuhuzong;
	}

	public void setI_chuzuhuzong(int chuzuhuzong) {
		this.i_chuzuhuzong = chuzuhuzong;
	}

	public int getI_chuzujianzong() {
		return i_chuzujianzong;
	}

	public void setI_chuzujianzong(int chuzujianzong) {
		this.i_chuzujianzong = chuzujianzong;
	}

	public int getI_chuzuyuanzong() {
		return i_chuzuyuanzong;
	}

	public void setI_chuzuyuanzong(int chuzuyuanzong) {
		this.i_chuzuyuanzong = chuzuyuanzong;
	}

	public int getI_zuzhurenshu() {
		return i_zuzhurenshu;
	}

	public void setI_zuzhurenshu(int zuzhurenshu) {
		this.i_zuzhurenshu = zuzhurenshu;
	}

	public int getI_chuzuyiranyibao() {
		return i_chuzuyiranyibao;
	}

	public void setI_chuzuyiranyibao(int chuzuyiranyibao) {
		this.i_chuzuyiranyibao = chuzuyiranyibao;
	}

	public int getI_chuzuwuzhao() {
		return i_chuzuwuzhao;
	}

	public void setI_chuzuwuzhao(int chuzuwuzhao) {
		this.i_chuzuwuzhao = chuzuwuzhao;
	}

	public int getI_chuzufeifabanxue() {
		return i_chuzufeifabanxue;
	}

	public void setI_chuzufeifabanxue(int chuzufeifabanxue) {
		this.i_chuzufeifabanxue = chuzufeifabanxue;
	}

	public int getI_chuzufeipinshougou() {
		return i_chuzufeipinshougou;
	}

	public void setI_chuzufeipinshougou(int chuzufeipinshougou) {
		this.i_chuzufeipinshougou = chuzufeipinshougou;
	}

	public int getI_chuzuqunzu() {
		return i_chuzuqunzu;
	}

	public void setI_chuzuqunzu(int chuzuqunzu) {
		this.i_chuzuqunzu = chuzuqunzu;
	}

	public int getI_wuye() {
		return i_wuye;
	}

	public void setI_wuye(int wuye) {
		this.i_wuye = wuye;
	}

	public int getI_yuling() {
		return i_yuling;
	}

	public void setI_yuling(int yuling) {
		this.i_yuling = yuling;
	}

	public int getI_qiyeshu() {
		return i_qiyeshu;
	}

	public void setI_qiyeshu(int qiyeshu) {
		this.i_qiyeshu = qiyeshu;
	}

	public int getI_mendianshu() {
		return i_mendianshu;
	}

	public void setI_mendianshu(int mendianshu) {
		this.i_mendianshu = mendianshu;
	}

	public int getI_feipinzhan() {
		return i_feipinzhan;
	}

	public void setI_feipinzhan(int feipinzhan) {
		this.i_feipinzhan = feipinzhan;
	}

	public int getI_youyuanpeixun() {
		return i_youyuanpeixun;
	}

	public void setI_youyuanpeixun(int youyuanpeixun) {
		this.i_youyuanpeixun = youyuanpeixun;
	}

	public int getI_zhongyangzhidi() {
		return i_zhongyangzhidi;
	}

	public void setI_zhongyangzhidi(int zhongyangzhidi) {
		this.i_zhongyangzhidi = zhongyangzhidi;
	}

	public int getI_lujuqunuan() {
		return i_lujuqunuan;
	}

	public void setI_lujuqunuan(int lujuqunuan) {
		this.i_lujuqunuan = lujuqunuan;
	}

	public String getS_infouploadname() {
		return s_infouploadname;
	}

	public void setS_infouploadname(String infouploadname) {
		this.s_infouploadname = infouploadname;
	}

	public String getS_inforuploaddate() {
		return t_inforuploaddate;
	}

	public void setS_inforuploaddate(String inforuploaddate) {
		this.t_inforuploaddate = inforuploaddate;
	}

	public String getS_netleadername() {
		return s_netleadername;
	}

	public void setS_netleadername(String netleadername) {
		this.s_netleadername = netleadername;
	}

	public String getS_netleadertel() {
		return s_netleadertel;
	}

	public void setS_netleadertel(String netleadertel) {
		this.s_netleadertel = netleadertel;
	}

	public String getS_villageleadername() {
		return s_villageleadername;
	}

	public void setS_villageleadername(String villageleadername) {
		this.s_villageleadername = villageleadername;
	}

	public String getS_villageleadertel() {
		return s_villageleadertel;
	}

	public void setS_villageleadertel(String villageleadertel) {
		this.s_villageleadertel = villageleadertel;
	}

	public String getS_remark() {
		return s_remark;
	}

	public void setS_remark(String remark) {
		this.s_remark = remark;
	}

	@Override
	public String getS_photo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setS_photo(String photo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getS_video() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setS_video(String video) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getSortValue() {
		// TODO Auto-generated method stub
		return s_netid;
	}

	@Override
	public String getVillageId() {
		// TODO Auto-generated method stub
		return s_villageid;
	}

	@Override
	public String getYearMonth() {
		// TODO Auto-generated method stub
		return t_inforuploaddate;
	}

	@Override
	public double getD_latitude() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public double getD_longitude() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String getS_solvestatus() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getT_updatetime() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getAddress() {
		// TODO Auto-generated method stub
		return null;
	}

}
