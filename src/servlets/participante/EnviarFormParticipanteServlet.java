package servlets.participante;

import helpers.TratadorDeErros;
import models.Participante;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "FormParticipanteServlet", urlPatterns = "/participante/adiciona")
public class EnviarFormParticipanteServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nome;
        String cpf;
        String endereco;
        String telefone;
        String email;

        try {

            //TODO melhorar validação, ex: caracteres minimos para cada campo
            nome = (String) request.getParameter("nome");
            if (nome == null || nome.isEmpty()) {
                TratadorDeErros.tratarErro("nome não pode estar vazio", 400, request, response);
            }

            cpf = (String) request.getParameter("cpf");
            if (cpf == null || cpf.isEmpty()) {
                TratadorDeErros.tratarErro("cpf não pode estar vazio", 400, request, response);
            }

            endereco = (String) request.getParameter("endereco");
            if (endereco == null || endereco.isEmpty()) {
                TratadorDeErros.tratarErro("endereco não pode estar vazio", 400, request, response);
            }

            telefone = (String) request.getParameter("telefone");
            if (telefone == null || telefone.isEmpty()) {
                TratadorDeErros.tratarErro("telefone não pode estar vazio", 400, request, response);
            }

            email = (String) request.getParameter("email");
            if (email == null || email.isEmpty()) {
                TratadorDeErros.tratarErro("email não pode estar vazio", 400, request, response);
            }

            Participante participante;
            participante = new Participante(nome, cpf, endereco, telefone, email);

            //TODO salvar participante no banco de dados

            request.getRequestDispatcher("/participante/lista").forward(request, response);

        } catch (Exception e) {
            TratadorDeErros.tratarErro("erro interno", 500, request, response);
        }
    }

}
