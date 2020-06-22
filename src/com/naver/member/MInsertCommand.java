package com.naver.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MInsertCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
        String pw = request.getParameter("pw");
        String sAge = request.getParameter("age");
        int age = 0;
        if(sAge!=null) {
        	age = Integer.parseInt(sAge);
        }
		
        MemberDAO dao = new MemberDAO();
        dao.minsert(new MemberDTO(id, name, age, pw));
        
		return new CommandAction(true, "mselect.bo");
	}

}
