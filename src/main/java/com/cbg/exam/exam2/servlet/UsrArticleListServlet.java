package com.cbg.exam.exam2.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cbg.exam.exam2.dto.Article;
import com.cbg.mysqlutil.MysqlUtil;
import com.cbg.mysqlutil.SecSql;

@WebServlet("/usr/article/list")
public class UsrArticleListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		MysqlUtil.setDBInfo("localhost", "sbsst", "sbs123414", "test_sql");
		MysqlUtil.setDevMode(true);
		
		SecSql sql = new SecSql();
		sql.append("SELECT *");
		sql.append("FROM article AS A");
		sql.append("ORDER BY A.id DESC");
		List<Article> articles = MysqlUtil.selectRows(sql, Article.class);
		
		request.setAttribute("articles", articles);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/usr/article/list.jsp");
		requestDispatcher.forward(request, response);
		
		MysqlUtil.closeConnection();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
