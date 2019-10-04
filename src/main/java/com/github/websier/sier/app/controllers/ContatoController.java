package com.github.websier.sier.app.controllers;

import static com.github.websier.sier.app.utils.Templates.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * ContatoController
 */
@Controller
public class ContatoController {

    @ModelAttribute
    public void addAttributes(Model model) {
        model.addAttribute("contato", "active");
    }

    @RequestMapping("/contato")
    public String Index() {
        return CONTATO;
    }

}