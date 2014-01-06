package cn.city.manager.view;

import java.text.SimpleDateFormat;
import java.util.Date;

import cn.city.manager.fragment.event.BaseEvent;

import android.content.Context;
import android.widget.TextView;

public class DateTimeChanger {

	private TextView timeView;
	private Context context;
	private BaseEvent baseContent;
	public DateTimeChanger(Context context, TextView timeView, BaseEvent baseContent){
		this.context = context;
		this.timeView = timeView;
		this.baseContent = baseContent;
		setDateTime();
	}
	
	final protected DateTimePickerDialog.OnDateTimeChangedListener listener = new DateTimePickerDialog.OnDateTimeChangedListener() {

		@Override
		public void onDateTimeChanged(long millisecond) {
			// TODO Auto-generated method stub
			Date date = new Date(millisecond);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String dateTime = sdf.format(date);
			timeView.setText(dateTime);
			baseContent.setTime(millisecond);
		}

	};

	private void setDateTime() {
		DateTimePickerDialog dateTimePicKDialog = new DateTimePickerDialog(context);
		dateTimePicKDialog.dateTimePicKDialog(listener, baseContent.getTime());
		
	}
}
