package sdnu;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProvinceServlet extends HttpServlet {
	Map<String,String[]> provinceMap=new HashMap<String,String[]>();
	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		System.out.println("ProvinceServlet==destroy=="); // Just puts "destroy" string in log
		
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("ProvinceServlet=doGet==");
	     response.setContentType("text/html;charset=utf-8");
	     String province=request.getParameter("province");
	     String citys[]=provinceMap.get(province);
	     String resultStr="";
	     for (int i = 0; i < citys.length; i++) {
	    	 if(i==citys.length-1){
	    		 resultStr+=citys[i]; 
	    	 }else {
	    	 resultStr+=citys[i]+",";
	    		}
		}
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
		    out.write(resultStr);
			out.flush();
			out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		System.out.println("ProvinceServlet=init===");
		String[] sd_citys={"济南","青岛","聊城","曲阜","威海"};
		provinceMap.put("sd", sd_citys);
		String[] js_citys={"南京","苏州","常熟","扬州","无锡"};
		provinceMap.put("js", js_citys);
		
	}

}
