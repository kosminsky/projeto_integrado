package helpers;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class TratadorDeErros {

    static public void tratarErro(String mensagem, int status, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("status", status);
        request.setAttribute("mensagem", mensagem);
        request.getRequestDispatcher("/paginas/erro.jsp").forward(request, response);
    }

}
