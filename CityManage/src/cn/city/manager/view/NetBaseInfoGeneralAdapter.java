package cn.city.manager.view;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import cn.city.manager.R;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.fragment.event.t_netbaseinfoEvent;

public class NetBaseInfoGeneralAdapter extends BaseAdapter {

	final private Context context;
	final private List <BaseEvent> list;
	private List <String> fields;
	public NetBaseInfoGeneralAdapter(Context context, List <BaseEvent> list, List <String> fields){
		this.context = context;
		this.list = list;
		setFields(fields);
	}
	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return null == list ? 0 : list.size();
	}

	@Override
	public Object getItem(int location) {
		// TODO Auto-generated method stub
		return list.get(location);
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		if (null == convertView) {
			convertView = View.inflate(context, R.layout.netbaseinfo_village_listitem, null);
		}
		t_netbaseinfoEvent ve = null;
		if (list.get(position) instanceof t_netbaseinfoEvent) {
			ve = (t_netbaseinfoEvent) list.get(position);
		} else {
			return convertView;
		}
//		t_netbaseinfoEvent ve = list.get(position);
		
		TextView tv = (TextView) convertView.findViewById(R.id.id_summary_item_1);
		Object obj;
//		try {
//			obj = methodMap.get(fields.get(0)).invoke(ve);
//			if (null != obj)
//				tv.setText(obj.toString());
//			
//			tv = (TextView) convertView.findViewById(R.id.id_summary_item_2);
//			obj = methodMap.get(fields.get(1)).invoke(ve);
//			if (null != obj)
//				tv.setText(obj.toString());
//			
//			tv = (TextView) convertView.findViewById(R.id.id_summary_item_3);
//			obj = methodMap.get(fields.get(2)).invoke(ve);
//			if (null != obj)
//				tv.setText(obj.toString());
//
//			tv = (TextView) convertView.findViewById(R.id.id_summary_item_4);
//			obj = methodMap.get(fields.get(3)).invoke(ve);
//			if (null != obj)
//				tv.setText(obj.toString());
//			
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		for (int i = 0, length = fields.size(); i < length; ++i){
			updateView(convertView, ve, i);
		}
		
		return convertView;
	}

	private void updateView(View convertView, t_netbaseinfoEvent ve, int id){
		TextView tv = (TextView) convertView.findViewById(R.id.id_summary_item_1 + id);
		Object obj = null;
		try {
			obj = methodMap.get(fields.get(id)).invoke(ve);
		} catch (Exception e) {

		}
		if (null != obj)
			tv.setText(obj.toString());

	}
	
	private Map <String, Method> methodMap = new HashMap<String, Method>();
	
	private void init(String classPath){
		methodMap.clear();
		try {
			Class<?> userClass = Class.forName(classPath);// 加载类
			Method[] methods = userClass.getDeclaredMethods();// 获得类的方法集合
			
			// 遍历方法集合
//			System.out.println("=== start traversing getXX methods====");
			for (String field : fields) {
				for (int i = 0; i < methods.length; i++) {
					// 获取所有getXX()的返回值
					// methods[i].getName()方法返回方法名
//					if (methods[i].getName().startsWith("get")) {
//						Object object = methods[i].invoke(o);
//						System.out.println(" " + methods[i].getName() + "() : " + object);
//					}
					if (methods[i].getName().startsWith("get") && methods[i].getName().endsWith(field)) {
						methodMap.put(field, methods[i]);
						break;
//						Object object = methods[i].invoke(o);
//						System.out.println(" " + methods[i].getName() + "() : " + object);
					}
				}
			}
//			System.out.println("=== end ====");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public List<String> getFields() {
		return fields;
	}
	public void setFields(List<String> fields) {
		this.fields = fields;
		init(t_netbaseinfoEvent.class.getName());
	}
}
