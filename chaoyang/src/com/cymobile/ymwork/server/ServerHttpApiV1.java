package com.cymobile.ymwork.server;

import android.util.Log;
import com.cymobile.ymwork.server.error.ServerCredentialsException;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.server.error.ServerParseException;
import com.cymobile.ymwork.server.http.AbstractHttpApi;
import com.cymobile.ymwork.server.http.HttpApi;
import com.cymobile.ymwork.server.http.HttpApiWithBasicAuth;
import com.cymobile.ymwork.server.http.HttpApiWithOAuth;
import com.cymobile.ymwork.server.parsers.json.BuildingParser;
import com.cymobile.ymwork.server.parsers.json.BuildingParserReport;
import com.cymobile.ymwork.server.parsers.json.CaseNumberParser;
import com.cymobile.ymwork.server.parsers.json.GroupParser;
import com.cymobile.ymwork.server.parsers.json.ReplyParser;
import com.cymobile.ymwork.server.parsers.json.ResultParser;
import com.cymobile.ymwork.server.parsers.json.SettingsParser;
import com.cymobile.ymwork.server.parsers.json.UserAreaParser;
import com.cymobile.ymwork.server.parsers.json.UserParser;
import com.cymobile.ymwork.server.parsers.json.ZoneParser;
import com.cymobile.ymwork.types.Building;
import com.cymobile.ymwork.types.BuildingReport;
import com.cymobile.ymwork.types.CaseNumber;
import com.cymobile.ymwork.types.CommonResult;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.Reply;
import com.cymobile.ymwork.types.ServerSettings;
import com.cymobile.ymwork.types.User;
import com.cymobile.ymwork.types.UserArea;
import com.cymobile.ymwork.types.Zone;
import com.cymobile.ymwork.utils.Base64Coder;
import com.cymobile.ymwork.utils.JSONUtils;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import org.apache.http.NameValuePair;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

public class ServerHttpApiV1
{
  private static final String DATATYPE = ".json";
  private static final String TAG = "ServerHttpApiV1";
  private static final String URL_API_BUILDING_DETAIL = "/ChaoYangWork/Building_recordsSelect";
  private static final String URL_API_BUILDING_DETAILFullNumber = "/ChaoYangWork/SelectBuildingrecordsnum";
  private static final String URL_API_BUILDING_GROUP = "/ChaoYangWork/ServletBuilding_AllServlet";
  private static final String URL_API_BUILDING_GROUP_Report = "/ChaoYangWork/BuildingAllNumberArea";
  private static final String URL_API_CASENUMBER = "/ChaoYangWork/SelectClassnumServlet";
  private static final String URL_API_CASEREPLYS = "/ChaoYangWork/SelectReplysServlet";
  private static final String URL_API_COMMS = "/ChaoYangWork/CommCnameServlet";
  private static final String URL_API_EMAIL_REGISTER = "/com.jerser.first/Zscy_HttpemailRegister";
  private static final String URL_API_FORGET_PASSWORD = "/ChaoYangWork/Zscy_HttpForgetPasswd";
  private static final String URL_API_LOGIN = "/ChaoYangWork/UsersLoginServlet";
  private static final String URL_API_MOBILE_REGISTER = "/com.jersey.first/Zscy_HttpmobileRegister";
  private static final String URL_API_NEWREPLY = "/ChaoYangWork/SaveReplysServlet";
  private static final String URL_API_NEWUSER = "/ChaoYangWork/SaveUsersServlet";
  private static final String URL_API_SAVE_PROFILE_CHANGES = "/com.jersey.first/Zscy_HttpUsers_update";
  private static final String URL_API_SERVERSETTINGS = "/ChaoYangWork/UpgradeServlet";
  private static final String URL_API_SERVERSETTINGSSuper = "/ChaoYangWork/UpgradeServletSuper";
  private static final String URL_API_SHOPDETAIL = "/com.jersey.first/Zscy_HttpServlet";
  private static final String URL_API_SHOPS = "/com.jersey.first/Zscy_Httpshops";
  private static final String URL_API_USER = "/angel/login.php";
  private static final String URL_API_USERAREA = "/ChaoYangWork/BianjieServlet";
  private static final String URL_API_USERDETAIL = "/ChaoYangWork/UsersAll_mobileServlet";
  private static final String URL_API_USERS = "/ChaoYangWork/UsersAllServlet";
  private static final String URL_API_USERUPDATE = "/ChaoYangWork/Users_updateAllServlet";
  private static final String URL_API_USERUPDATEPasswd = "/ChaoYangWork/UpdateUsersServlet";
  private static final String URL_API_USER_UPDATE = "/user/update";
  private static final String URL_API_ZONES = "/ChaoYangWork/StreetCnameServlet";
  private final String mApiBaseUrl;
  private final AuthScope mAuthScope;
  private HttpApi mHttpApi;
  private final DefaultHttpClient mHttpClient = AbstractHttpApi.createHttpClient();

  public ServerHttpApiV1(String paramString1, String paramString2, boolean paramBoolean, int paramInt)
  {
    if (paramInt != 80);
    for (this.mApiBaseUrl = ("http://" + paramString1 + ":" + paramInt); ; this.mApiBaseUrl = ("http://" + paramString1))
    {
      this.mAuthScope = new AuthScope(paramString1, paramInt);
      if (!paramBoolean)
        break;
      this.mHttpApi = new HttpApiWithOAuth(this.mHttpClient, paramString2);
      return;
    }
    this.mHttpApi = new HttpApiWithBasicAuth(this.mHttpClient, paramString2);
  }

  private String fullUrl(String paramString)
  {
    return this.mApiBaseUrl + paramString;
  }

  UserArea UserAreas(String paramString1, String paramString2)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWork/BianjieServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[2];
    arrayOfNameValuePair[0] = new BasicNameValuePair("UserID", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("code", paramString2);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (UserArea)this.mHttpApi.doHttpRequest(localHttpGet, new UserAreaParser());
  }

  public CommonResult addReply(String paramString1, int paramInt, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWork/SaveReplysServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[8];
    arrayOfNameValuePair[0] = new BasicNameValuePair("caseid", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt);
    arrayOfNameValuePair[2] = new BasicNameValuePair("usermobile", paramString2);
    arrayOfNameValuePair[3] = new BasicNameValuePair("userzoneid", paramString3);
    arrayOfNameValuePair[4] = new BasicNameValuePair("userid", paramString4);
    arrayOfNameValuePair[5] = new BasicNameValuePair("result", paramString5);
    arrayOfNameValuePair[6] = new BasicNameValuePair("detail", paramString6);
    arrayOfNameValuePair[7] = new BasicNameValuePair("desc", paramString7);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (CommonResult)this.mHttpApi.doHttpRequest(localHttpGet, new ResultParser());
  }

  public CommonResult addUser(String paramString1, String paramString2, String paramString3, boolean paramBoolean, String paramString4, String paramString5, String paramString6, Server.Location paramLocation)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str1 = fullUrl("/ChaoYangWork/SaveUsersServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[7];
    arrayOfNameValuePair[0] = new BasicNameValuePair("usermobile", paramString2);
    arrayOfNameValuePair[1] = new BasicNameValuePair("passwd", paramString3);
    arrayOfNameValuePair[2] = new BasicNameValuePair("username", paramString1);
    if (paramBoolean);
    for (String str2 = "1"; ; str2 = "0")
    {
      arrayOfNameValuePair[3] = new BasicNameValuePair("isadmin", str2);
      arrayOfNameValuePair[4] = new BasicNameValuePair("zoneid", paramString4);
      arrayOfNameValuePair[5] = new BasicNameValuePair("zonename", paramString5);
      arrayOfNameValuePair[6] = new BasicNameValuePair("desc", paramString6);
      HttpGet localHttpGet = localHttpApi.createHttpGet(str1, arrayOfNameValuePair);
      return (CommonResult)this.mHttpApi.doHttpRequest(localHttpGet, new ResultParser());
    }
  }

  public Building buildingDetail(String paramString1, String paramString2)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWork/Building_recordsSelect");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[2];
    arrayOfNameValuePair[0] = new BasicNameValuePair("buildingrecordsnum", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("zoneid", paramString2);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (Building)this.mHttpApi.doHttpRequest(localHttpGet, new BuildingParser());
  }

  public Building buildingDetailFullNumber(String paramString1, String paramString2, int paramInt)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWork/SelectBuildingrecordsnum");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[3];
    arrayOfNameValuePair[0] = new BasicNameValuePair("buildingrecordsnum", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("zoneid", paramString2);
    arrayOfNameValuePair[2] = new BasicNameValuePair("classid", paramInt);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (Building)this.mHttpApi.doHttpRequest(localHttpGet, new BuildingParser());
  }

  Group<Building> buildings(int paramInt1, String paramString1, int paramInt2, String paramString2, String paramString3, int paramInt3, int paramInt4, Server.Location paramLocation)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str1 = fullUrl("/ChaoYangWork/ServletBuilding_AllServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[12];
    arrayOfNameValuePair[0] = new BasicNameValuePair("code", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt1);
    arrayOfNameValuePair[2] = new BasicNameValuePair("day", paramInt2);
    arrayOfNameValuePair[3] = new BasicNameValuePair("category", paramString2);
    arrayOfNameValuePair[4] = new BasicNameValuePair("order", paramString3);
    arrayOfNameValuePair[5] = new BasicNameValuePair("startintent", paramInt3);
    arrayOfNameValuePair[6] = new BasicNameValuePair("endnum", paramInt3 + paramInt4);
    String str2;
    String str3;
    label247: String str4;
    label276: String str5;
    if (paramLocation != null)
    {
      str2 = paramLocation.geolat;
      arrayOfNameValuePair[7] = new BasicNameValuePair("geolat", str2);
      if (paramLocation == null)
        break label401;
      str3 = paramLocation.geolong;
      arrayOfNameValuePair[8] = new BasicNameValuePair("geolong", str3);
      if (paramLocation == null)
        break label409;
      str4 = paramLocation.geohacc;
      arrayOfNameValuePair[9] = new BasicNameValuePair("geohacc", str4);
      if (paramLocation == null)
        break label417;
      str5 = paramLocation.geovacc;
      label305: arrayOfNameValuePair[10] = new BasicNameValuePair("geovacc", str5);
      if (paramLocation == null)
        break label425;
    }
    label401: label409: label417: label425: for (String str6 = paramLocation.geoalt; ; str6 = "")
    {
      arrayOfNameValuePair[11] = new BasicNameValuePair("geoalt", str6);
      HttpGet localHttpGet = localHttpApi.createHttpGet(str1, arrayOfNameValuePair);
      return (Group)this.mHttpApi.doHttpRequest(localHttpGet, new GroupParser(new BuildingParser()));
      str2 = "39.11";
      break;
      str3 = "116.111";
      break label247;
      str4 = "";
      break label276;
      str5 = "";
      break label305;
    }
  }

  public BuildingReport buildingsReport(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWork/BuildingAllNumberArea");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[5];
    arrayOfNameValuePair[0] = new BasicNameValuePair("code", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt1);
    arrayOfNameValuePair[2] = new BasicNameValuePair("day", paramInt2);
    arrayOfNameValuePair[3] = new BasicNameValuePair("category", paramString2);
    arrayOfNameValuePair[4] = new BasicNameValuePair("order", paramString3);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (BuildingReport)this.mHttpApi.doHttpRequest(localHttpGet, new BuildingParserReport());
  }

  CommonResult changePasswd(String paramString1, String paramString2, String paramString3, Server.Location paramLocation)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWork/UpdateUsersServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[3];
    arrayOfNameValuePair[0] = new BasicNameValuePair("usermobile", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("passwd", paramString2);
    arrayOfNameValuePair[2] = new BasicNameValuePair("passwdtwo", paramString3);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (CommonResult)this.mHttpApi.doHttpRequest(localHttpGet, new ResultParser());
  }

  public CommonResult forgetPassword(String paramString)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWork/Zscy_HttpForgetPasswd");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[1];
    arrayOfNameValuePair[0] = new BasicNameValuePair("mobieloremail", paramString);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (CommonResult)this.mHttpApi.doHttpRequest(localHttpGet, new ResultParser());
  }

  Group<Zone> getAllComm()
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWork/CommCnameServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[1];
    arrayOfNameValuePair[0] = new BasicNameValuePair("code", "");
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (Group)this.mHttpApi.doHttpRequest(localHttpGet, new GroupParser(new ZoneParser()));
  }

  Group<Reply> getCaseReplys(String paramString, int paramInt)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWork/SelectReplysServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[2];
    arrayOfNameValuePair[0] = new BasicNameValuePair("caseid", paramString);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (Group)this.mHttpApi.doHttpRequest(localHttpGet, new GroupParser(new ReplyParser()));
  }

  Group<Zone> getZone(String paramString)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWork/StreetCnameServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[1];
    arrayOfNameValuePair[0] = new BasicNameValuePair("code", paramString);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (Group)this.mHttpApi.doHttpRequest(localHttpGet, new GroupParser(new ZoneParser()));
  }

  public boolean hasCredentials()
  {
    return this.mHttpClient.getCredentialsProvider().getCredentials(this.mAuthScope) != null;
  }

  public User loginUser(String paramString1, String paramString2, Server.Location paramLocation)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWork/UsersLoginServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[7];
    arrayOfNameValuePair[0] = new BasicNameValuePair("usermobile", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("passwd", paramString2);
    arrayOfNameValuePair[2] = new BasicNameValuePair("geolat", paramLocation.geolat);
    arrayOfNameValuePair[3] = new BasicNameValuePair("geolong", paramLocation.geolong);
    arrayOfNameValuePair[4] = new BasicNameValuePair("geohacc", paramLocation.geohacc);
    arrayOfNameValuePair[5] = new BasicNameValuePair("geovacc", paramLocation.geovacc);
    arrayOfNameValuePair[6] = new BasicNameValuePair("geoalt", paramLocation.geoalt);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (User)this.mHttpApi.doHttpRequest(localHttpGet, new UserParser());
  }

  ServerSettings serverSetting(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
    throws ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWork/UpgradeServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[5];
    arrayOfNameValuePair[0] = new BasicNameValuePair("geolat", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("geolong", paramString2);
    arrayOfNameValuePair[2] = new BasicNameValuePair("geohacc", paramString3);
    arrayOfNameValuePair[3] = new BasicNameValuePair("geovacc", paramString4);
    arrayOfNameValuePair[4] = new BasicNameValuePair("geoalt", paramString5);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (ServerSettings)this.mHttpApi.doHttpRequest(localHttpGet, new SettingsParser());
  }

  void setCredentials(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() == 0) || (paramString2 == null) || (paramString2.length() == 0))
    {
      Log.i("ServerHttpApiV1", "Clearing Credentials");
      this.mHttpClient.getCredentialsProvider().clear();
      return;
    }
    Log.i("ServerHttpApiV1", "Setting Phone/Password: " + paramString1 + "/******");
    this.mHttpClient.getCredentialsProvider().setCredentials(this.mAuthScope, new UsernamePasswordCredentials(paramString1, paramString2));
  }

  CaseNumber userCaseNumber(String paramString)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWork/SelectClassnumServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[1];
    arrayOfNameValuePair[0] = new BasicNameValuePair("zoneid", paramString);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (CaseNumber)this.mHttpApi.doHttpRequest(localHttpGet, new CaseNumberParser());
  }

  User userDetail(String paramString)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWork/UsersAll_mobileServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[1];
    arrayOfNameValuePair[0] = new BasicNameValuePair("usermobile", paramString);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (User)this.mHttpApi.doHttpRequest(localHttpGet, new UserParser());
  }

  CommonResult userUpdate(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, boolean paramBoolean, String paramString7)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str1 = fullUrl("/ChaoYangWork/Users_updateAllServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[7];
    arrayOfNameValuePair[0] = new BasicNameValuePair("username", paramString3);
    arrayOfNameValuePair[1] = new BasicNameValuePair("usermobile", paramString2);
    arrayOfNameValuePair[2] = new BasicNameValuePair("passwd", paramString4);
    arrayOfNameValuePair[3] = new BasicNameValuePair("zoneid", paramString5);
    arrayOfNameValuePair[4] = new BasicNameValuePair("zonename", paramString6);
    if (paramBoolean);
    for (String str2 = "1"; ; str2 = "0")
    {
      arrayOfNameValuePair[5] = new BasicNameValuePair("isadmin", str2);
      arrayOfNameValuePair[6] = new BasicNameValuePair("desc", paramString7);
      HttpGet localHttpGet = localHttpApi.createHttpGet(str1, arrayOfNameValuePair);
      return (CommonResult)this.mHttpApi.doHttpRequest(localHttpGet, new ResultParser());
    }
  }

  public User userUpdate(String paramString1, String paramString2, String paramString3)
    throws SocketTimeoutException, IOException, ServerParseException
  {
    FileInputStream localFileInputStream = new FileInputStream(new File(paramString1));
    URL localURL = new URL(fullUrl("/user/update"));
    HttpURLConnection localHttpURLConnection = this.mHttpApi.createHttpURLConnectionPost(localURL, "------------------319831265358979362846");
    localHttpURLConnection.setRequestProperty("Authorization", "Basic " + Base64Coder.encodeString(new StringBuilder(String.valueOf(paramString2)).append(":").append(paramString3).toString()));
    DataOutputStream localDataOutputStream = new DataOutputStream(localHttpURLConnection.getOutputStream());
    localDataOutputStream.writeBytes("--" + "------------------319831265358979362846" + "\r\n");
    localDataOutputStream.writeBytes("Content-Disposition: form-data; name=\"image,jpeg\";filename=\"image.jpeg\"" + "\r\n");
    localDataOutputStream.writeBytes("Content-Type: image/jpeg" + "\r\n");
    localDataOutputStream.writeBytes("\r\n");
    int i = Math.min(localFileInputStream.available(), 8192);
    byte[] arrayOfByte = new byte[i];
    int j = localFileInputStream.read(arrayOfByte, 0, i);
    int k = j;
    while (true)
    {
      StringBuilder localStringBuilder;
      String str;
      if (j <= 0)
      {
        localDataOutputStream.writeBytes("\r\n");
        localDataOutputStream.writeBytes("--" + "------------------319831265358979362846" + "--" + "\r\n");
        localFileInputStream.close();
        localDataOutputStream.flush();
        localDataOutputStream.close();
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localHttpURLConnection.getInputStream()));
        localStringBuilder = new StringBuilder();
        str = localBufferedReader.readLine();
        if (str != null)
          break label418;
        localBufferedReader.close();
      }
      try
      {
        User localUser = (User)JSONUtils.consume(new UserParser(), localStringBuilder.toString());
        return localUser;
        localDataOutputStream.write(arrayOfByte, 0, i);
        i = Math.min(localFileInputStream.available(), 8192);
        j = localFileInputStream.read(arrayOfByte, 0, i);
        k += j;
        continue;
        label418: localStringBuilder.append(str);
      }
      catch (Exception localException)
      {
      }
    }
    throw new ServerParseException("Error parsing user photo upload response, invalid json.");
  }

  Group<User> users(String paramString)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWork/UsersAllServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[1];
    arrayOfNameValuePair[0] = new BasicNameValuePair("zoneid", paramString);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (Group)this.mHttpApi.doHttpRequest(localHttpGet, new GroupParser(new UserParser()));
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.ServerHttpApiV1
 * JD-Core Version:    0.6.0
 */