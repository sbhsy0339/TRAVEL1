package com.naver.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class MSelectByIdCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		        // 1. 클라이언트가 보내준 데이터 획득/가공
				String id = request.getParameter("id");
				// 2. DAO 객체 만들고 해당 메서드 호툴
				MemberDAO dao = new MemberDAO();
				MemberDTO dto = dao.mselectById(id);
				// 3. 데이터 바인딩 ( PageContext, request, session, application )
				request.setAttribute("dto", dto);
				// 4. 포워딩(dispatcher, redirect)
				return new CommandAction(false, "mselectById.jsp");
	}

}
