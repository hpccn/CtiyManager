package cn.city.manager.view;

import java.util.HashSet;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;

import cn.city.manager.R;
import cn.city.manager.fragment.t_netbaseinfo;
import cn.city.manager.fragment.t_netbaseinfoGrid;




public class ViewSingletonFactory {
//	private final static String TAG = ViewSingletonFactory.class.getSimpleName();
    private static class SingletonInstance {
        private static final ViewSingletonFactory instance = new ViewSingletonFactory();
    }

    public static ViewSingletonFactory getInstance() {
        return SingletonInstance.instance;
    }

    
    private ViewSingletonFactory(){
    	init();
//    	init2();
    }
    

	
	/**
	 * 没有新增事件的类
	 */
	final private HashSet<String> cannotAddEvent = new HashSet<String>();

	
	private void init(){

		
		cannotAddEvent.add(t_netbaseinfo.class.getSimpleName());
		cannotAddEvent.add(t_netbaseinfoGrid.class.getSimpleName());
		
	}



	public boolean canNewEvent(final String category){
		return !cannotAddEvent.contains(category);
	}
	
	
	
	private ProgressDialog progressDialog;
	public void hideProcessDialog(){
		if (null != progressDialog)
			progressDialog.dismiss();
	}
	public void showProcessDialog(Context context, String title, String message){
		progressDialog = new ProgressDialog(context);
		progressDialog.setTitle(title); 
		progressDialog.setMessage(message); 
		progressDialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);
		progressDialog.setIndeterminate(true);
//		progressDialog.setCancelable(false);
		progressDialog.setCanceledOnTouchOutside(false);
		
	    progressDialog.show();
	}
	
	public interface OnChangedListener{
		public void onChanged(int id, String value);
	}	
	
	public void showSingleChoiceItems(Context context, final String []items, final OnChangedListener listener) {
	    AlertDialog.Builder builder = new AlertDialog.Builder(context);
	    builder.setIcon(R.drawable.ic_logo);
	    builder.setCancelable(true);
	    
	    builder.setSingleChoiceItems(items, 0, new DialogInterface.OnClickListener(){

			@Override
			public void onClick(DialogInterface dialog, int which) {

				listener.onChanged(which, items[which]);
				dialog.dismiss();
	    }});
	    
	    AlertDialog ad = builder.create();  
		ad.show();
	}
}
