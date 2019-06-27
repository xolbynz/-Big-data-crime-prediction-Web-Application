package af;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/**
 * Servlet implementation class Weather
 */
@WebServlet("/Weather")
public class Weather extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "https://www.google.com/search?q=%EB%89%B4%EC%9A%95+%EB%82%A0%EC%8B%9C&oq=%EB%89%B4%EC%9A%95+%EB%82%A0%EC%8B%9C+&aqs=chrome..69i57j69i60j0l4.2935j0j7&sourceid=chrome&ie=UTF-8";
		Document doc = null;

		
		try {
			doc = Jsoup.connect(url).get();

			Elements element = doc.select("#wob_dc");


			HttpSession session = request.getSession();
			
			session.setAttribute("weather", element);
			
			
			
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

}
