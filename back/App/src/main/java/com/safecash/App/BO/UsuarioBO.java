package com.safecash.App.BO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safecash.App.Entity.Usuario;
import com.safecash.App.Repository.UsuarioRepository;

@Service
public class UsuarioBO {
    @Autowired
    private UsuarioRepository usuarioRepository;

    public Usuario getUsuario(String login, String senha) {
        try {
            Usuario usuarioRetorno = usuarioRepository.getUsuario(login);
            if (usuarioRetorno != null && usuarioRetorno.getSenha().equals(senha)) {
                return usuarioRetorno;
            } else {
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void setUsuario(Usuario usuario) {
        try {
            usuarioRepository.save(usuario);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
