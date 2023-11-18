package com.registro.registroPersonas.controller;

import com.registro.registroPersonas.model.Usuario;
import com.registro.registroPersonas.model.data.DBGenerator;
import com.registro.registroPersonas.model.data.dao.UsuarioDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@WebServlet(name = "listaUsuarioServlet", value = "/mostrarUsuarios")
public class ListaUsuarioServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        try {
            DBGenerator.iniciarBD("UsuariosBD");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setAttribute("usuarios",agregarUsuariosEjemplo());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        RequestDispatcher respuesta = req.getRequestDispatcher("/mostrarUsuarios.jsp");
        respuesta.forward(req,resp);
    }
    private List agregarUsuariosEjemplo() throws ClassNotFoundException {
        List<Usuario> usuarios = new ArrayList<>();
        usuarios = UsuarioDAO.obtenerUsuarios(DBGenerator.conectarBD("Usuario"));
        return usuarios;
    }
}