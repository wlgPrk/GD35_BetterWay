package com.gdj35.betterway.web.trafficGuide.subLineInfo.Service;

/* Java 샘플 코드 */


/* Java 샘플 코드 */


import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.stereotype.Service;

import java.io.BufferedReader;
import java.io.IOException;


@Service
public class APIService {
    public String api(String startX, String startY,String endX,String endY)  throws IOException {
        StringBuilder urlBuilder = new StringBuilder("http://ws.bus.go.kr/api/rest/pathinfo/getPathInfoBySubway"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=cexG3uY6lBddZH4UqdhsVWCJaGgUx%2BjRRCl7qbAZnA17YxlK3sZAtI1er2P7Z78KZdkHVRhO%2FL21j8%2F3LR7CLw%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("startX","UTF-8") + "=" + URLEncoder.encode(startX, "UTF-8")); /*위도 시작위치*/
        urlBuilder.append("&" + URLEncoder.encode("startY","UTF-8") + "=" + URLEncoder.encode(startY, "UTF-8")); /*경도 시작위치*/
        urlBuilder.append("&" + URLEncoder.encode("endX","UTF-8") + "=" + URLEncoder.encode(endX, "UTF-8")); /*위도 끝*/
        urlBuilder.append("&" + URLEncoder.encode("endY","UTF-8") + "=" + URLEncoder.encode(endY, "UTF-8")); /* 경도 끝 */
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/xml");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        return sb.toString();
        
    
    }
}




