package tools;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class ServletUtil {

	public static void alert(HttpServletResponse response, String msg,String url)
	{
		try {
			PrintWriter out = response.getWriter();

			out.print("<script>alert('" + msg + "');window.location.href='"+url+"';</script>");
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
