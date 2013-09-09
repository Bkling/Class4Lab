package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.RectangleArea;

/**
 *
 * @author benja_000
 */
public class AreaRectangleController extends HttpServlet {
        private static final String RESULT_AREA_PAGE = "ResultPage.jsp";
    
        @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
            response.setContentType("text/html");
            
            String length = request.getParameter("length");
            String width = request.getParameter("width");
            
            RectangleArea ra = new RectangleArea();
            
            
            
        RequestDispatcher view = request.getRequestDispatcher(RESULT_AREA_PAGE);
        view.forward(request, response);
    }
}
