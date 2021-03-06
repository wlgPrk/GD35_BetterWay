package com.gdj35.betterway.web.subwayNews.Service;
// 네이버 검색 API 예제 - blog 검색
import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Case;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;
@Service
public class NewsService   {

    public List<HashMap<String, String>> newsApi(String start,int load) throws ParseException {
        String clientId = "mrLDqNvTCwR8fIu2D0b2"; //애플리케이션 클라이언트 아이디값"
        String clientSecret = "p7BZTVCNdp"; //애플리케이션 클라이언트 시크릿값"

        String text = "";
        try {
        	
            text = URLEncoder.encode("지하철", "UTF-8") +"&display="+ load +"&start="+ start +"&sort=date";
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("검색어 인코딩 실패",e);
        }

        String apiURL = "https://openapi.naver.com/v1/search/news?query=" + text;    // json 결과
        //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; // xml 결과

        Map<String, String> requestHeaders = new HashMap<>();
        requestHeaders.put("X-Naver-Client-Id", clientId);
        requestHeaders.put("X-Naver-Client-Secret", clientSecret);
        String responseBody = get(apiURL,requestHeaders);
        
		JSONParser parser = new JSONParser();
		
		JSONObject univ = (JSONObject)parser.parse(responseBody);
		
		JSONArray arr = (JSONArray)univ.get("items");
		
		List<HashMap<String, String>> list = new ArrayList<HashMap<String, String>>();
		for(int i=0;i<arr.size();i++){
			HashMap<String, String> map = new HashMap<String, String>();
			JSONObject tmp = (JSONObject)arr.get(i);//인덱스 번호로 접근해서 가져온다.

			
			
			map.put("title", (String)tmp.get("title"));
			map.put("desc", (String)tmp.get("description"));
			map.put("link", (String)tmp.get("originallink"));
			
			String date =(String)tmp.get("pubDate");
			
			
			int dayFirst = date.indexOf(" ",1);
			int dayLast = date.indexOf(" ", dayFirst +2);
			int monFirst = date.indexOf(" ", dayLast);
			int monLast = date.indexOf(" ", monFirst+2);
			int yearFirst = date.indexOf(" ", monLast);
			int yearLast = date.indexOf(" ", yearFirst+2);
			String day = date.substring(dayFirst, dayLast);
			String mon = date.substring(monFirst, monLast);
			String year = date.substring(yearFirst,yearLast);
	
			switch (mon) {
            case " Jan":  mon = "01";
                     break;
            case " Feb":  mon = "02";
                     break;
            case " Mar":  mon = "03";
                     break;
            case " Apr":  mon = "04";
                     break;
            case " May":  mon = "05";
                     break;
            case " Jun":  mon = "06";
                     break;
            case " Jul":  mon = "07";
                     break;
            case " Aug":  mon = "08";
                     break;
            case " Sept": mon = "09";
                     break;
            case " Oct": mon = "10";
                     break;
            case " Nov": mon = "11";
                     break;
            case " Dec": mon = "12";
                     break;
			}
			
			map.put("date", year+"년 "+mon+"월"+day+"일");
			
			
		
			
			list.add(map);

		}
        
        
        return list;
    }

   

	private static String get(String apiUrl, Map<String, String> requestHeaders){
        HttpURLConnection con = connect(apiUrl);
        try {
            con.setRequestMethod("GET");
            for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
                con.setRequestProperty(header.getKey(), header.getValue());
            }

            int responseCode = con.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
                return readBody(con.getInputStream());
            } else { // 에러 발생
                return readBody(con.getErrorStream());
            }
        } catch (IOException e) {
            throw new RuntimeException("API 요청과 응답 실패", e);
        } finally {
            con.disconnect();
        }
    }

    private static HttpURLConnection connect(String apiUrl){
        try {
            URL url = new URL(apiUrl);
            return (HttpURLConnection)url.openConnection();
        } catch (MalformedURLException e) {
            throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
        } catch (IOException e) {
            throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
        }
    }

    private static String readBody(InputStream body){
        InputStreamReader streamReader = new InputStreamReader(body);

        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
            StringBuilder responseBody = new StringBuilder();

            String line;
            while ((line = lineReader.readLine()) != null) {
                responseBody.append(line);
            }

            return responseBody.toString();
        } catch (IOException e) {
            throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
        }
    }
}
