package cn.city.manager.view;

import android.app.AlertDialog;
import android.content.Context;
import android.view.View;
import android.widget.Button;
import cn.city.manager.R;
import cn.city.manager.model.Page;

public class More implements Page{
	private Context context;
	private View view;
	private Button btnUpgrade;
	
	public More(Context context){
		this.context = context;
		init();
	}
	
	public View getView(){
		if (null == view)
			view = View.inflate(context, R.layout.more_main_frame, null);
		
		btnUpgrade = (Button) view.findViewById(R.id.btn_upgrade);
		btnUpgrade.setOnClickListener(onClickListener);
		return view;
	}
	
	final private View.OnClickListener onClickListener = new View.OnClickListener() {
		
		@Override
		public void onClick(View v) {
			switch (v.getId()){
			case R.id.btn_upgrade:
				showUpgrade();
				break;
			default:
			}
			
		}
	};
	
	private void init(){
		getView();
		initData();
	}
	
	private void initData(){
		
	}
	
	private void showUpgrade(){

		
	    AlertDialog.Builder builder = new AlertDialog.Builder(context);
	    builder.setIcon(R.drawable.ic_logo);
	    builder.setTitle("检查新版本");
	    builder.setCancelable(true);
	    builder.setMessage("当前是最新版本");
	    builder.setCancelable(true);
	    

	    
	    AlertDialog ad = builder.create();  
	    
		ad.show();
	}
}
