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

public class LoginFragment extends BaseFragment {
	public static final String ARG_SECTION_NUMBER = "section_number";
	
	@Override
	public View getView(Context context) {
		View rootView = View.inflate(context, R.layout.fragment_main,
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
