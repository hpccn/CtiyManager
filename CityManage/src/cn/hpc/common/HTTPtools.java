package cn.hpc.common;

/** 
 * 与服务器通信交互类 
 */  
import java.io.BufferedReader;  
import java.io.InputStreamReader;  
import java.util.List;  
  
import org.apache.http.HttpEntity;  
import org.apache.http.HttpResponse;  
import org.apache.http.NameValuePair;  
import org.apache.http.client.CookieStore;  
import org.apache.http.client.entity.UrlEncodedFormEntity;  
import org.apache.http.client.methods.HttpPost;  
import org.apache.http.impl.client.AbstractHttpClient;  
import org.apache.http.impl.client.DefaultHttpClient;  

  
import android.util.Log;  
  
public abstract class HTTPtools {  
    private final static String TAG = "HttpTools";  
    private final static String SERVER_URL = "http://192.168.1.254:8080/Brtx/";//访问地址  
    private static CookieStore cookieStore;//定义一个Cookie来保存session  
/** 
 * 向服务器发送URL请求  获得返回数据 
 * @param doUrl stauts的类名 
 * @param actionName 方法名 
 * @param params 传递的参数 
 * @return 获得返回的JSON结果 
 */  
    public static Object invoke(String doUrl,String actionName, List<NameValuePair> params) {  
        Log.e("error connect", "--------------");  
        String result = null;  
//        ActionValue value=null;  
        Object value = null;
        try {  
            String url = SERVER_URL + doUrl+".do?action="+actionName;  
            Log.d(TAG, "url is" + url);  
            HttpPost httpPost = new HttpPost(url);  
            if (params != null && params.size() > 0) {  
                  
                HttpEntity entity = new UrlEncodedFormEntity(params, "UTF-8");  
                  
                httpPost.setEntity(entity);  
            }  
            httpPost.addHeader("Content-Type","application/x-www-form-urlencoded; charset=\"UTF-8\"");    
            DefaultHttpClient httpClient = new DefaultHttpClient();  
            // 添加Cookie  
            if (cookieStore != null) {  
                httpClient.setCookieStore(cookieStore);               
            }  
            HttpResponse httpResponse = httpClient.execute(httpPost);  
            StringBuilder builder = new StringBuilder();  
            BufferedReader reader = new BufferedReader(new InputStreamReader(  
                    httpResponse.getEntity().getContent()));  
            for (String s = reader.readLine(); s != null; s = reader.readLine()) {  
                builder.append(s);  
            }  
            result = builder.toString();  
              
//            value=GSONTOOLS.getGson().fromJson(result, ActionValue.class);  
              
//          MUser user = GSONTOOLS.getGson().fromJson(value.getVALUE(), MUser.class);  
            Log.d(TAG, "result is ( " + result + " )");  
            // 保存Cookie  
            cookieStore = ((AbstractHttpClient) httpClient).getCookieStore();  
        } catch (Exception e) {  
            Log.e(TAG, e.toString());  
        }  
        Log.d(TAG, "over");  
        return value;  
    }  
  
}  