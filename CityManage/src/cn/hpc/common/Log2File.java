package cn.hpc.common;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;



public class Log2File {
    private static class SingletonInstance {
        private static final Log2File instance = new Log2File();
    }

    public static Log2File getInstance() {
        return SingletonInstance.instance;
    }
    
	private final List<String> logs = new ArrayList<String>();
	private final java.text.DateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	private Log2File(){}
	
	public void out(String log) {
		
        String t = dateFormat.format(new Date());
		logs.add(t + ", " + log);
	}

	
	public void save(String filepath) throws IOException {

		File file = new File(filepath);
		File dir = file.getParentFile();
		if (dir != null) {
			if (!dir.exists()) {
				dir.mkdirs();
			}
		}

		FileWriter writer = new FileWriter(file, true);
		for (String log : logs) {
			writer.write(log);
			writer.write('\n');
		}
		logs.clear();
		
		writer.close();
		
	}
}
