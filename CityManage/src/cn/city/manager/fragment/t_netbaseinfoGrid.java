package cn.city.manager.fragment;

import org.json.JSONObject;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import cn.city.manager.R;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.fragment.event.t_netbaseinfoEvent;

/**
 * 按网格查看
 * @author hpc
 *
 */
public class t_netbaseinfoGrid extends BaseFragment {
	public static final String ARG_SECTION_NUMBER = "section_number";
	
	protected View parent, rootView;
	protected Context context;
	protected t_netbaseinfoEvent content;
	@Override
	public View getView(Context context, ViewGroup parent) {
		this.context = context;
		this.parent= parent;
		View rootView = View.inflate(context, R.layout.detail_village_basic_information,
				null);
		
		return rootView;
	}



	@Override
	public String getTitle() {
		return context.getResources().getString(R.string.village_basic_information_title);
	}



	@Override
	public void setJsonData(String jsonData) {
		this.jsonData = jsonData;
		if (null == jsonData) {
			content = new t_netbaseinfoEvent();
			return;
		}
		JSONObject js = null;
		try {
			js = new JSONObject(jsonData);
		} catch (Exception e) {
			e.printStackTrace();
		}
		t_netbaseinfoEvent event = new t_netbaseinfoEvent();//(js);
		try {
			content = (t_netbaseinfoEvent) event.fromJSONObject(js);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}



	@Override
	public BaseEvent getBaseContent() {
		// TODO Auto-generated method stub
		return content;
	}



	@Override
	public String getSubTitle() {
		return context.getResources().getString(R.string.village_basic_information_sub_title);
	}



	@Override
	public void updateView(View rootView) {
		// TODO Auto-generated method stub
		this.rootView = rootView;
		if (null == rootView) return;
//		
		
		((EditText)rootView.findViewById(R.id.et_netid)).setText(content.getS_netid());
		((EditText)rootView.findViewById(R.id.et_villagename)).setText(content.getS_villagename());
		((EditText)rootView.findViewById(R.id.et_netname)).setText(content.getS_netname());
		((EditText)rootView.findViewById(R.id.et_nethushu)).setText("" + content.getI_nethushu());
		((EditText)rootView.findViewById(R.id.et_netrenkou)).setText("" + content.getI_netrenkou());
		((EditText)rootView.findViewById(R.id.et_liudongzong)).setText("" + content.getI_liudongzong());
		((EditText)rootView.findViewById(R.id.et_youzanzhu)).setText("" + content.getI_youzanzhu());
		((EditText)rootView.findViewById(R.id.et_wuzanzhuzong)).setText("" + content.getI_wuzanzhuzong());
		((EditText)rootView.findViewById(R.id.et_wuzanzhu16shang)).setText("" + content.getI_wuzanzhu16shang());
		((EditText)rootView.findViewById(R.id.et_wuzanzhu16xia)).setText("" + content.getI_wuzanzhu16xia());
		((EditText)rootView.findViewById(R.id.et_liudongbusiness)).setText("" + content.getI_liudongbusiness());
		((EditText)rootView.findViewById(R.id.et_liudongwork)).setText("" + content.getI_liudongwork());
		((EditText)rootView.findViewById(R.id.et_liudongemployee)).setText("" + content.getI_liudongemployee());
		
		((EditText)rootView.findViewById(R.id.et_chuzuhuzong)).setText("" + content.geti_chuzuhuzong());
		((EditText)rootView.findViewById(R.id.et_chuzujianzong)).setText("" + content.getI_chuzujianzong());
		((EditText)rootView.findViewById(R.id.et_chuzuyuanzong)).setText("" + content.getI_chuzuyuanzong());
		((EditText)rootView.findViewById(R.id.et_zuzhurenshu)).setText("" + content.getI_zuzhurenshu());
		((EditText)rootView.findViewById(R.id.et_chuzuyiranyibao)).setText("" + content.getI_chuzuyiranyibao());
		((EditText)rootView.findViewById(R.id.et_chuzuwuzhao)).setText("" + content.getI_chuzuwuzhao());
		((EditText)rootView.findViewById(R.id.et_chuzufeifabanxue)).setText("" + content.getI_chuzufeifabanxue());
		((EditText)rootView.findViewById(R.id.et_chuzufeipinshougou)).setText("" + content.getI_chuzufeipinshougou());
		((EditText)rootView.findViewById(R.id.et_chuzuqunzu)).setText("" + content.getI_chuzuqunzu());
		
		
		((EditText)rootView.findViewById(R.id.et_wuye)).setText("" + content.getI_wuye());
		((EditText)rootView.findViewById(R.id.et_yuling)).setText("" + content.getI_yuling());
		((EditText)rootView.findViewById(R.id.et_qiyeshu)).setText("" + content.getI_qiyeshu());
		((EditText)rootView.findViewById(R.id.et_mendianshu)).setText("" + content.getI_mendianshu());
		((EditText)rootView.findViewById(R.id.et_feipinzhan)).setText("" + content.getI_feipinzhan());
		((EditText)rootView.findViewById(R.id.et_youyuanpeixun)).setText("" + content.getI_youyuanpeixun());
		((EditText)rootView.findViewById(R.id.et_zhongyangzhidi)).setText("" + content.getI_zhongyangzhidi());
		((EditText)rootView.findViewById(R.id.et_lujuqunuan)).setText("" + content.getI_lujuqunuan());
		
		
		
		((EditText)rootView.findViewById(R.id.et_infouploadname)).setText(content.getS_infouploadname());
		((EditText)rootView.findViewById(R.id.et_inforuploaddate)).setText(content.getS_inforuploaddate());
		((EditText)rootView.findViewById(R.id.et_netleadername)).setText(content.getS_netleadername());
		((EditText)rootView.findViewById(R.id.et_netleadertel)).setText(content.getS_netleadertel());
		((EditText)rootView.findViewById(R.id.et_villageleadername)).setText(content.getS_villageleadername());
		((EditText)rootView.findViewById(R.id.et_villageleadertel)).setText(content.getS_villageleadertel());
		((EditText)rootView.findViewById(R.id.et_remark)).setText(content.getS_remark());

	}



	@Override
	public void updateData(View rootView) {
		// TODO Auto-generated method stub
		
	}





}
