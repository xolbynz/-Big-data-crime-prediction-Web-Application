package af;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Test01 {

	
	
	public void crw(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		String url = "https://www.bbc.co.uk/search?q=murder&filter=news&suggid=";
		Document doc = null;
		ArrayList<String> list = new ArrayList<String>();
		
		try {
			doc = Jsoup.connect(url).get();

			Elements element = doc.select("div h1 a");

			for (Element el : element) {
				list.add(el.text());
			}
				
	
			int len = (int)(Math.random()*list.size());
			
			String s = list.get(len);
			
			
			
			HttpSession session = request.getSession();
			
			session.setAttribute("list_len", list.get(0));
			session.setAttribute("list_len1", list.get(1));
			session.setAttribute("list_len2", list.get(2));
			session.setAttribute("list_len3", list.get(3));
			
			
		} catch (Exception e) {

			e.printStackTrace();
		}
		
	}
	
	

}
