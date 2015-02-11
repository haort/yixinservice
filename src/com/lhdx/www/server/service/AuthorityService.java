package com.lhdx.www.server.service;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

@Service("authorityService")
public class AuthorityService {
//	private SaeMemcache mc;
	private Map mc;

	public AuthorityService() {
//		mc = new SaeMemcache();
//		mc.init();
		mc = new HashMap<String,String>();
	}

//	public String getToken() {
//		String token = mc.get("access_token");
//		if (token == null || "".equals(token)) {
//			token = getAccessToken();
//			mc.set("access_token", token, 60);
//		}
//		return token;
//	}

	public String getToken() {
		String token = (String) mc.get("access_token");
		if (token == null || "".equals(token)) {
			token = getAccessToken();
			mc.put("access_token", token);
		}
		return token;
	}
	
	private String getAccessToken() {
		System.out.println(System.currentTimeMillis()+"\n获取token");
		String APPID = "wx3f8b40498989b267";
		String APPSECRET = "29a373a60ca885161f1bfaab4422ea25";
		String url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid="
				+ APPID + "&secret=" + APPSECRET;
		String accessToken = null;
		try {
			URL urlGet = new URL(url);
			HttpURLConnection http = (HttpURLConnection) urlGet
					.openConnection();

			http.setRequestMethod("GET"); // 必须是get方式请求
			http.setRequestProperty("Content-Type",
					"application/x-www-form-urlencoded");
			http.setDoOutput(true);
			http.setDoInput(true);
			System.setProperty("sun.net.client.defaultConnectTimeout", "30000");// 连接超时30秒
			System.setProperty("sun.net.client.defaultReadTimeout", "30000"); // 读取超时30秒
			http.connect();

			InputStream is = http.getInputStream();
			int size = is.available();
			byte[] jsonBytes = new byte[size];
			is.read(jsonBytes);
			String message = new String(jsonBytes, "UTF-8");

			JSONObject demoJson = new JSONObject(message);
			accessToken = demoJson.getString("access_token");

			System.out.println(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return accessToken;
	}
	
	public static void main(String[] args){
		System.out.println(System.currentTimeMillis()+"\n获取token");
		String APPID = "wxf10bdb22db196716";
		String APPSECRET = "1b725d6920eb37adcf5df5845a2976d8";
		String url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid="
				+ APPID + "&secret=" + APPSECRET;
		String accessToken = null;
		try {
			URL urlGet = new URL(url);
			HttpURLConnection http = (HttpURLConnection) urlGet
					.openConnection();

			http.setRequestMethod("GET"); // 必须是get方式请求
			http.setRequestProperty("Content-Type",
					"application/x-www-form-urlencoded");
			http.setDoOutput(true);
			http.setDoInput(true);
			System.setProperty("sun.net.client.defaultConnectTimeout", "30000");// 连接超时30秒
			System.setProperty("sun.net.client.defaultReadTimeout", "30000"); // 读取超时30秒
			http.connect();

			InputStream is = http.getInputStream();
			int size = is.available();
			byte[] jsonBytes = new byte[size];
			is.read(jsonBytes);
			String message = new String(jsonBytes, "UTF-8");

			JSONObject demoJson = new JSONObject(message);
			accessToken = demoJson.getString("access_token");

			System.out.println(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(accessToken); 
	}
	
	public void  action_PostProcessHttpClient(String posturl,StringBuffer jsonsb) throws Exception {
		DefaultHttpClient httpClient = new DefaultHttpClient();
		HttpPost httpPost = new HttpPost(posturl);
		//设置内容类型为application/json
		        httpPost.addHeader("content-type", "application/json");
		        //将JSON进行UTF-8编码,以便传输中文
		        StringEntity se = new StringEntity(jsonsb.toString(),"UTF-8");
		        //设置内容类型
		        se.setContentType("text/json");
		        se.setContentEncoding(new BasicHeader("content-type", "application/json"));
		        httpPost.setEntity(se);
		        HttpResponse response = httpClient.execute(httpPost);
		        //System.out.println("getStatusLine = "+response.getStatusLine());
		}
}
