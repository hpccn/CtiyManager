package cn.city.manage.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cn.city.manage.model.BaseContent;
import cn.city.manage.model.BaseFragment;
import cn.city.manager.R;
/**
 * 环境卫生,环境、垃圾隐患
 * @author hpc
 *
 */
public class SanitationFragment extends BaseFragment {
	public static final String ARG_SECTION_NUMBER = "section_number";
	
	@Override
	public View getView(Context context) {
		View rootView = View.inflate(context, R.layout.fragment_sanitation,
				null);
		
		return rootView;
	}



	@Override
	public String getTitle() {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public void setJsonData(String jsonData) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public BaseContent getBaseContent() {
		// TODO Auto-generated method stub
		return null;
	}

}
