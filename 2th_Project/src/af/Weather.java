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

public class Weather  {

	public void crw2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url_newyork = "https://www.google.com/search?q=%EB%89%B4%EC%9A%95+%EB%82%A0%EC%94%A8&oq=%EB%89%B4%EC%9A%95+%EB%82%A0%EC%94%A8+&aqs=chrome..69i57j35i39j0l2j69i61j0.7944j1j4&sourceid=chrome&ie=UTF-8";
		String url_Manhattan = "https://www.google.com/search?ei=_qYUXfHQArTLmAW1pq_gCw&q=%EB%A7%A8%ED%95%B4%ED%8A%BC+%EB%82%A0%EC%94%A8&oq=%EB%A7%A8%ED%95%B4%ED%8A%BC+%EB%82%A0%EC%94%A8&gs_l=psy-ab.3..35i39i285i70i256j0i30j0i8i30l2j0i5i10i30j0i5i30l2j0i8i10i30.13546.16626..16867...8.0..7.523.3416.1j20j0j1j0j1......0....1..gws-wiz.....10..35i39i285j35i39j0i67j0i131j0j0i20i263j0i10.840f1Bi55TM";
		String url_Brooklyn = "https://www.google.com/search?ei=G6cUXYrKPNKLr7wP8_-aoA0&q=%EB%B8%8C%EB%A3%A8%ED%81%B4%EB%A6%B0+%EB%82%A0%EC%94%A8&oq=%EB%B8%8C%EB%A3%A8%ED%81%B4%EB%A6%B0+%EB%82%A0%EC%94%A8&gs_l=psy-ab.3..0i7i30l10.2204.4708..4798...6.0..2.467.2234.0j14j4-1......0....1..gws-wiz.......0i8i13i30j0i7i10i30i42j35i39i285i70i256j35i39j0i131j0i131i20i263.oCbjskxlADo";
		String url_Queens = "https://www.google.com/search?ei=G6cUXYrKPNKLr7wP8_-aoA0&q=%ED%80%B8%EC%8A%A4+%EB%82%A0%EC%94%A8&oq=%ED%80%B8%EC%8A%A4+%EB%82%A0%EC%94%A8&gs_l=psy-ab.3...8573.9405..9500...0.0..0.368.1128.0j6j0j1......0....1..gws-wiz.oQDYHq2EyeE";
		String url_Bronx = "https://www.google.com/search?ei=G6cUXYrKPNKLr7wP8_-aoA0&q=%EB%B8%8C%EB%A1%B1%ED%81%AC%EC%8A%A4%EB%82%A0%EC%94%A8&oq=%EB%B8%8C%EB%A1%B1%ED%81%AC%EC%8A%A4%EB%82%A0%EC%94%A8&gs_l=psy-ab.3...13415.14745..14871...2.0..3.408.1361.0j8j4-1......0....1..gws-wiz.......0i7i30.bT8usbk6Fe8";
		String url_Staten = "https://www.google.com/search?q=%EC%8A%A4%ED%83%9C%ED%8A%BC%EC%95%84%EC%9D%BC%EB%9E%9C%EB%93%9C+%EB%82%A0%EC%94%A8&oq=%EC%8A%A4%ED%83%9C%ED%8A%BC%EC%95%84%EC%9D%BC%EB%9E%9C%EB%93%9C+%EB%82%A0%EC%94%A8&aqs=chrome..69i57j0l2.2681j0j4&sourceid=chrome&ie=UTF-8";
		
		Document doc = null;

		
		try {
			doc = Jsoup.connect(url_newyork).get();

			Elements element = doc.select("#wob_dc");


			HttpSession session = request.getSession();
			
			session.setAttribute("weather", element);
			
			
			
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

}
