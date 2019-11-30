package com.github.websier.sier.app.utils;

import static com.github.websier.sier.app.utils.GlobalConstants.ERRO_CONFIRMAR_SENHA;
import static com.github.websier.sier.app.utils.GlobalConstants.ERRO_EMAIL;
import static com.github.websier.sier.app.utils.GlobalConstants.FORCA_DA_CRIPTOGRAFIA_NA_SENHA;

import java.util.List;
import java.util.Optional;

import com.github.websier.sier.app.domain.dtos.TipoColetaDTO;
import com.github.websier.sier.app.domain.repositories.UsuarioRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.web.server.ResponseStatusException;

/**
 * FormUtils
 */
@Component
public class FormUtils {

    private static UsuarioRepository repository;

    @Autowired
    public FormUtils(UsuarioRepository repository) {
        FormUtils.repository = repository;
    }

    public static List<TipoColetaDTO> tipos() {
        return List.of(
            new TipoColetaDTO("Internet", "INTERNET"),
            new TipoColetaDTO("Portaria", "PORTARIA"),
            new TipoColetaDTO("Jornal", "JORNAL"),
            new TipoColetaDTO("Prefeitura", "PREFEITURA"),
            new TipoColetaDTO("ACIL", "ACIL"),
            new TipoColetaDTO("Sinduscon", "SINDUSCON"),
            new TipoColetaDTO("Lista telefonica", "LISTA_TELEFONICA")
        );
    }

    public static void confirmarSenha(
        BindingResult result,
        Optional<String> optionalConfirmacao,
        Optional<String> optionalSenha
    ) {
        var econder = new BCryptPasswordEncoder(FORCA_DA_CRIPTOGRAFIA_NA_SENHA);
        if (optionalSenha.isPresent() && optionalConfirmacao.isPresent()) {
            var confirmacao = optionalConfirmacao.get();
            var senha = optionalSenha.get();

            if (!econder.matches(confirmacao, senha)) {
                result.addError(ERRO_CONFIRMAR_SENHA);
            }
        }
    }

    public static void validarUnicidadeDoEmail(
        BindingResult result,
        Optional<String> email,
        Optional<Long> id
    ) {
        if (
            id.isEmpty() &&
            email.isPresent() &&
            repository.existsByEmail(email.get())
        ) {
            result.addError(ERRO_EMAIL);
        }

        if (id.isPresent() && email.isPresent()) {
            var usuario = repository.findById(id.get())
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));

            if (!usuario.getEmail().equals(email.get())) {
                result.addError(ERRO_EMAIL);
            }
        }
    }
}