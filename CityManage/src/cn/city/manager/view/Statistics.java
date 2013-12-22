package cn.city.manager.view;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import cn.city.manager.R;
import cn.city.manager.model.Page;

public class Statistics implements Page{
	private Context context;
	private View view;
	private Button btnCategory;
	
	private String selectBrowseCategoryItems[] = {"常驻人口", "常驻户数", "流动人口总数", "出租屋总户数"};
	private int selectBrowseCategory;
	public Statistics(Context context){
		this.context = context;
		init();
	}
	
	public View getView(){
		if (null == view)
			view = View.inflate(context, R.layout.statistics_main_frame, null);
		
		btnCategory = (Button) view.findViewById(R.id.statistics_category);
		btnCategory.setOnClickListener(onClickListener);
		return view;
	}
	
	final private View.OnClickListener onClickListener = new View.OnClickListener() {
		
		@Override
		public void onClick(View v) {
			switch (v.getId()){
			case R.id.statistics_category:
				showSelectBrowse();
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
	
	private void showSelectBrowse(){

		
	    AlertDialog.Builder builder = new AlertDialog.Builder(context);
	    builder.setIcon(R.drawable.ic_logo);
	    builder.setTitle("请选择查看时间段");
	    builder.setCancelable(true);
	    
	    builder.setSingleChoiceItems(selectBrowseCategoryItems, selectBrowseCategory, new DialogInterface.OnClickListener(){

			@Override
			public void onClick(DialogInterface dialog, int which) {
				// TODO Auto-generated method stub
				Toast.makeText(context, "选择 : " + selectBrowseCategoryItems[which], Toast.LENGTH_SHORT).show();
				selectBrowseCategory = which;
				btnCategory.setText(selectBrowseCategoryItems[which]);
				
				dialog.dismiss();
	    }});
	    
	    AlertDialog ad = builder.create();  
		ad.show();
	}
}
