package com.naver.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.naver.member.ListCommand;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.bo")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("html/text;charset=utf-8");
		
		String uri = request.getRequestURI();
		String ctxp = request.getContextPath();
		String sp = uri.substring(ctxp.length());
		
		Command com = null;
		
		if(sp.equalsIgnoreCase("/mselect.bo")) {
			com = new MSelectCommand();
		}else if(sp.equalsIgnoreCase("/minsertui.bo")) {
			com = new MInsertUICommand();
		}else if(sp.equalsIgnoreCase("/minsert.bo")) {
			com = new MInsertCommand();
		}else if(sp.equalsIgnoreCase("/mselectById.bo")) {
			com = new MSelectByIdCommand();
		}else if(sp.equalsIgnoreCase("/mupdateui.bo")) {
			com = new MUpdateUICommand();
		}else if(sp.equalsIgnoreCase("/mupdate.bo")) {
			com = new MUpdateCommand();
		}else if(sp.equalsIgnoreCase("/loginui.bo")) {
			com = new LoginUICommand();
		}else if(sp.equalsIgnoreCase("/login.bo")) {
			com = new LoginCommand();
		}else if(sp.equalsIgnoreCase("/logout.bo")) {
			com = new LogoutCommand();
		}else if(sp.equalsIgnoreCase("/mdelete.bo")) {
			com = new MDeleteCommand();
		}else if(sp.equalsIgnoreCase("/list.bo")) { //게시판
		 /*	com = new ListCommand(); */
			com = new ListPageCommand();
		}else if(sp.equalsIgnoreCase("/insertui.bo")) {
			com = new InsertUICommand();
		}else if(sp.equalsIgnoreCase("/insert.bo")) {
			com = new InsertCommand();
		}else if(sp.equalsIgnoreCase("/read.bo")) {
			com = new ReadCommand();
		}else if(sp.equalsIgnoreCase("/updateui.bo")) {
			com = new UpdateUICommand();
		}else if(sp.equalsIgnoreCase("/update.bo")) {
			com = new UpdateCommand();
		}else if(sp.equalsIgnoreCase("/delete.bo")) {
			com = new DeleteCommand();
		}else if(sp.equalsIgnoreCase("/replyui.bo")) {
			com = new ReplyUICommand();
		}else if(sp.equalsIgnoreCase("/reply.bo")) {
			com = new ReplyCommand();
		}
		else {
			System.out.println("제공하지 않는 서비스입니다.");
		}
		
		if(com!=null) {
			CommandAction action = com.execute(request, response);
			if(action.isRedirect()) {
				response.sendRedirect(action.getWhere());
			} else {
				request.getRequestDispatcher(action.getWhere()).forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
