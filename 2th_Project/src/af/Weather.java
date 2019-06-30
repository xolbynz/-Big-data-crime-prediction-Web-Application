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

public class Weather {

	public void newyork(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "https://www.google.com/search?hl=en&source=hp&ei=RH4YXbCEM_-Ur7wP_aO-oAw&q=new+york+weather&oq=new+york+weather&gs_l=psy-ab.3..0i70i256j0l9.6283.12737..13129...3.0..2.404.3291.1j17j1j2j1......0....1..gws-wiz.....0..0i10.lZcapVYybwI";

		Document doc = null;

		try {

			doc = Jsoup.connect(url).get();

			
			Elements weat_text = doc.select("#wob_dc");
			Elements weat_img = doc.select("#wob_tci");
			Elements tm = doc.select("#wob_tm");
			Elements hm = doc.select("#wob_hm");
			Elements ws = doc.select("#wob_ws");

			HttpSession session = request.getSession();

			
			session.setAttribute("weat_text", weat_text);
			session.setAttribute("weat_img", weat_img);
			session.setAttribute("tm", tm);
			session.setAttribute("hm", hm);
			session.setAttribute("ws", ws);

		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	public void manhattan(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url = "https://www.google.com/search?ei=_qYUXfHQArTLmAW1pq_gCw&q=%EB%A7%A8%ED%95%B4%ED%8A%BC+%EB%82%A0%EC%94%A8&oq=%EB%A7%A8%ED%95%B4%ED%8A%BC+%EB%82%A0%EC%94%A8&gs_l=psy-ab.3..35i39i285i70i256j0i30j0i8i30l2j0i5i10i30j0i5i30l2j0i8i10i30.13546.16626..16867...8.0..7.523.3416.1j20j0j1j0j1......0....1..gws-wiz.....10..35i39i285j35i39j0i67j0i131j0j0i20i263j0i10.840f1Bi55TM";

		Document doc = null;

		try {

			doc = Jsoup.connect(url).get();

			Elements time = doc.select("#wob_dts");
			Elements weat_text = doc.select("#wob_dc");
			Elements weat_img = doc.select("#wob_tci");
			Elements tm = doc.select("#wob_tm");
			Elements hm = doc.select("#wob_hm");
			Elements ws = doc.select("#wob_ws");

			HttpSession session = request.getSession();
			session.setAttribute("city", "¸ÇÇÏÆ°");
			session.setAttribute("time", time);
			session.setAttribute("weat_text", weat_text);
			session.setAttribute("weat_img", weat_img);
			session.setAttribute("tm", tm);
			session.setAttribute("hm", hm);
			session.setAttribute("ws", ws);

		} catch (

		Exception e) {

			e.printStackTrace();
		}
	}

	public void Brooklyn(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url = "https://www.google.com/search?ei=G6cUXYrKPNKLr7wP8_-aoA0&q=%EB%B8%8C%EB%A3%A8%ED%81%B4%EB%A6%B0+%EB%82%A0%EC%94%A8&oq=%EB%B8%8C%EB%A3%A8%ED%81%B4%EB%A6%B0+%EB%82%A0%EC%94%A8&gs_l=psy-ab.3..0i7i30l10.2204.4708..4798...6.0..2.467.2234.0j14j4-1......0....1..gws-wiz.......0i8i13i30j0i7i10i30i42j35i39i285i70i256j35i39j0i131j0i131i20i263.oCbjskxlADo";
		Document doc = null;

		try {

			doc = Jsoup.connect(url).get();

			Elements time = doc.select("#wob_dts");
			Elements weat_text = doc.select("#wob_dc");
			Elements weat_img = doc.select("#wob_tci");
			Elements tm = doc.select("#wob_tm");
			Elements hm = doc.select("#wob_hm");
			Elements ws = doc.select("#wob_ws");

			HttpSession session = request.getSession();
			session.setAttribute("city", "ºê·èÅ¬¸°");
			session.setAttribute("time", time);
			session.setAttribute("weat_text", weat_text);
			session.setAttribute("weat_img", weat_img);
			session.setAttribute("tm", tm);
			session.setAttribute("hm", hm);
			session.setAttribute("ws", ws);

		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	public void Queens(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "https://www.google.com/search?ei=G6cUXYrKPNKLr7wP8_-aoA0&q=%ED%80%B8%EC%8A%A4+%EB%82%A0%EC%94%A8&oq=%ED%80%B8%EC%8A%A4+%EB%82%A0%EC%94%A8&gs_l=psy-ab.3...8573.9405..9500...0.0..0.368.1128.0j6j0j1......0....1..gws-wiz.oQDYHq2EyeE";
		Document doc = null;

		try {

			doc = Jsoup.connect(url).get();

			Elements time = doc.select("#wob_dts");
			Elements weat_text = doc.select("#wob_dc");
			Elements weat_img = doc.select("#wob_tci");
			Elements tm = doc.select("#wob_tm");
			Elements hm = doc.select("#wob_hm");
			Elements ws = doc.select("#wob_ws");

			HttpSession session = request.getSession();
			session.setAttribute("city", "Äý½º");
			session.setAttribute("time", time);
			session.setAttribute("weat_text", weat_text);
			session.setAttribute("weat_img", weat_img);
			session.setAttribute("tm", tm);
			session.setAttribute("hm", hm);
			session.setAttribute("ws", ws);

		} catch (

		Exception e) {

			e.printStackTrace();
		}
	}

	public void Bronx(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "https://www.google.com/search?ei=G6cUXYrKPNKLr7wP8_-aoA0&q=%EB%B8%8C%EB%A1%B1%ED%81%AC%EC%8A%A4%EB%82%A0%EC%94%A8&oq=%EB%B8%8C%EB%A1%B1%ED%81%AC%EC%8A%A4%EB%82%A0%EC%94%A8&gs_l=psy-ab.3...13415.14745..14871...2.0..3.408.1361.0j8j4-1......0....1..gws-wiz.......0i7i30.bT8usbk6Fe8";

		Document doc = null;

		try {
			doc = Jsoup.connect(url).get();

			Elements time = doc.select("#wob_dts");
			Elements weat_text = doc.select("#wob_dc");
			Elements weat_img = doc.select("#wob_tci");
			Elements tm = doc.select("#wob_tm");
			Elements hm = doc.select("#wob_hm");
			Elements ws = doc.select("#wob_ws");

			HttpSession session = request.getSession();
			session.setAttribute("city", "ºê·Õ½º");
			session.setAttribute("time", time);
			session.setAttribute("weat_text", weat_text);
			session.setAttribute("weat_img", weat_img);
			session.setAttribute("tm", tm);
			session.setAttribute("hm", hm);
			session.setAttribute("ws", ws);

		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	public void Staten(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "https://www.google.com/search?q=%EC%8A%A4%ED%83%9C%ED%8A%BC%EC%95%84%EC%9D%BC%EB%9E%9C%EB%93%9C+%EB%82%A0%EC%94%A8&oq=%EC%8A%A4%ED%83%9C%ED%8A%BC%EC%95%84%EC%9D%BC%EB%9E%9C%EB%93%9C+%EB%82%A0%EC%94%A8&aqs=chrome..69i57j0l2.2681j0j4&sourceid=chrome&ie=UTF-8";
		Document doc = null;

		try {

			doc = Jsoup.connect(url).get();

			Elements time = doc.select("#wob_dts");
			Elements weat_text = doc.select("#wob_dc");
			Elements weat_img = doc.select("#wob_tci");
			Elements tm = doc.select("#wob_tm");
			Elements hm = doc.select("#wob_hm");
			Elements ws = doc.select("#wob_ws");

			HttpSession session = request.getSession();
			session.setAttribute("city", "½ºÅÂÆ°");
			session.setAttribute("time", time);
			session.setAttribute("weat_text", weat_text);
			session.setAttribute("weat_img", weat_img);
			session.setAttribute("tm", tm);
			session.setAttribute("hm", hm);
			session.setAttribute("ws", ws);

		} catch (Exception e) {

			e.printStackTrace();
		}
	}

}
