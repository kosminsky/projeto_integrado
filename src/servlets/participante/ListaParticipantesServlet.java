package servlets.participante;

import models.Participante;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ListaParticipantesServlet", urlPatterns = "/participante/lista")
public class ListaParticipantesServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ArrayList<Participante> participantes = new ArrayList<>();
        boolean sucesso = false;

        try {
            sucesso = (boolean) request.getSession().getAttribute("sucesso");
            request.getSession().invalidate();
        } catch (Exception ignored) { }

        //TODO substituir mock a baixo por busca de usuarios no banco de dados

        //inicio do mock
        participantes.add(new Participante("Vinicius", "000.000.000.00", "rua 1, numero 0, centro, belem", "(91)99999-9999", "vinicius@email.com"));
        participantes.add(new Participante("mikanelson", "000.000.000.00", "rua 1, numero 0, centro, belem", "(91)99999-9999", "mikanelson@email.com"));
        //fim do mock

        request.setAttribute("sucesso", sucesso);
        request.setAttribute("participantes", participantes);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/paginas/participante/ListaParticipantes.jsp");
        dispatcher.forward(request, response);
    }

}
