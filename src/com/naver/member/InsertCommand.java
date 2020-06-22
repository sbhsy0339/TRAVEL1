package com.naver.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");	
		
		MemberDAO dao = new MemberDAO();
		dao.insert(new BoardDTO(-1, writer, title, content, null, 0, 0, 0, 0));
		
//		   for(int i=0;i<100;i++) {w
//	       dao.insert(new BoardDTO(-1, writer, title, content, null, 0, 0, 0, 0));
//	       try {
//	            Thread.sleep(50); //0.05초마다 멈춤. 너무 빠른 속도로 인해 일어나는 에러 방지
//	       } catch (InterruptedException e) {
//	          e.printStackTrace();
//	        }
//	    }
		

		return new CommandAction(true, "list.bo");

	}

}

