package test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MapTest {
	public static void main(String[] args) {
		List<Map<String, String>> pList = new ArrayList<>();
		for(int i=1;i<=10;i++) {
			Map<String,String> p = new HashMap<>();
			p.put("name","이름" + i);
			p.put("age", i+"");
			pList.add(p);
		}
		
		for(int i=0;i<10;i++) {
			Map<String,String> p = pList.get(i);
			System.out.println("이름 : "+ p.get("name"));
			System.out.println("나이 : "+ p.get("age"));
		}
	}
}
