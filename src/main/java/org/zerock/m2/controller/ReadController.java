package org.zerock.m2.controller;

import lombok.extern.log4j.Log4j2;
import org.zerock.m2.dto.MsgDTO;
import org.zerock.m2.service.MsgService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Log4j2
@WebServlet(name = "ReadController", value = "/msg/read")
public class ReadController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //로그인 체크 로직
        HttpSession session  =request.getSession();
        Object memberObj = session.getAttribute("member");
        //로그인 관련 정보 없음 - 로그인 안한(실패한) 사용자
        if(memberObj == null) {
            response.sendRedirect("/login");
            return;
        }

        log.info("Read controller doGet.................");

        Long mno = Long.parseLong(request.getParameter("mno"));

        MsgDTO msgDTO = MsgService.INSTANCE.read(mno);

        request.setAttribute("dto", msgDTO);

        request.getRequestDispatcher("/WEB-INF/msg/read.jsp").forward(request, response);






    }


}
