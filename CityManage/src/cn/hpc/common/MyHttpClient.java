package cn.hpc.common;

import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.NameValuePair;
import org.apache.http.client.CookieStore;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;

public class MyHttpClient  {
    private DefaultHttpClient httpClient;
    private HttpPost httpPost;
    private HttpEntity httpEntity;
    private HttpResponse httpResponse;
    public static String PHPSESSID = null;

    private static String BASEPATH = "http://127.0.0.1:8000/";
    public String executeRequest(String path, List<NameValuePair> params) {
        String ret = "none";
        try {
            this.httpPost = new HttpPost(BASEPATH + path);
            httpEntity = new UrlEncodedFormEntity(params, HTTP.UTF_8);
            httpPost.setEntity(httpEntity);
            //第一次一般是还未被赋值，若有值则将SessionId发给服务器
            if(null != PHPSESSID){
                httpPost.setHeader("Cookie", "PHPSESSID=" + PHPSESSID);
            }            
            httpClient = new DefaultHttpClient();
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        try {
            httpResponse = httpClient.execute(httpPost);
            if (httpResponse.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {
                HttpEntity entity = httpResponse.getEntity();
                ret = EntityUtils.toString(entity);
                CookieStore mCookieStore = httpClient.getCookieStore();
                List<Cookie> cookies = mCookieStore.getCookies();
                for (int i = 0; i < cookies.size(); i++) {
                    //这里是读取Cookie['PHPSESSID']的值存在静态变量中，保证每次都是同一个值
                    if ("PHPSESSID".equals(cookies.get(i).getName())) {
                        PHPSESSID = cookies.get(i).getValue();
                        break;
                    }

                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return ret;
    }
}