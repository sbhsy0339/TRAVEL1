package com.naver.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MDeleteCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		if(session!=null) {
			LoginDTO loginDTO = (LoginDTO)session.getAttribute("login");
			
			if(loginDTO != null) {
				String id = request.getParameter("id");
				
				if(loginDTO.getId().equals(id)) {
					
					MemberDAO dao = new MemberDAO();
					dao.mdelete(id);
					
					session.invalidate();
					return new CommandAction(true, "mselect.bo");
					
				}
			}
		}
		return new CommandAction(true, "loginui.bo");
	}

}
