package com.naver.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.naver.member.MemberDAO;
import com.naver.member.BoardDTO;
import com.naver.member.CommandAction;

public class UpdateCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = -1;
		String sNum = request.getParameter("num");
		if (sNum != null) {
			num = Integer.parseInt(sNum);
		}
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		MemberDAO dao = new MemberDAO();
		dao.update(new BoardDTO(num, writer, title, content, null, -1, -1, -1, -1));
		
		return new CommandAction(true, "list.bo");
	}
}
