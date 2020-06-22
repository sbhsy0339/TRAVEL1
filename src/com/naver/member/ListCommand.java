package com.naver.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.naver.member.Command;
import com.naver.member.CommandAction;

public class ListCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberDAO dao = new MemberDAO();
		List<BoardDTO> list = dao.list();
		
		request.setAttribute("list", list);
		
		return new CommandAction(false, "list.jsp");
	}

}
