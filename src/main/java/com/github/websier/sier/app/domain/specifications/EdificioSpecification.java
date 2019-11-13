package com.github.websier.sier.app.domain.specifications;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.persistence.criteria.Predicate;

import com.github.websier.sier.app.domain.enuns.TipoColeta;
import com.github.websier.sier.app.domain.models.Edificio;

import org.springframework.data.jpa.domain.Specification;
import org.springframework.ui.Model;

public class EdificioSpecification {

    public static Specification<Edificio> where(
        Optional<TipoColeta> tipo,
        Optional<String> nome,
        Optional<String> autor,
        Optional<LocalDate> dataColeta,
        Model model
    ) {
        return (edificio, query, builder) -> {
            
            List<Predicate> predicates = new ArrayList<>();

            if (tipo.isPresent()) {
                predicates.add(builder
                    .equal(edificio
                        .get("coleta")
                            .get("fonteColeta"), tipo.get()));
                model.addAttribute("fonteColeta", tipo.get());
            }

            if (nome.isPresent()) {
                predicates.add(builder
                    .like(edificio.get("nomeConhecido"), "%" + nome.get() + "%"));
                model.addAttribute("nome", nome.get());
            }

            if (autor.isPresent()) {
                predicates.add(builder
                    .like(edificio
                        .get("coleta")
                            .get("cadastradoPor")
                                .get("nome"), "%" + autor.get() + "%"));
                model.addAttribute("autor", autor.get());
            }

            if (dataColeta.isPresent()) {
                predicates.add(builder
                    .equal(edificio.get("createdAt"), dataColeta.get()));
                model.addAttribute("dataColeta", dataColeta.get());
            }

            return builder.and(getPredicates(predicates));
        };
    }

    private static Predicate [] getPredicates(List<Predicate> predicates) {
        return predicates.toArray(new Predicate[predicates.size()]);
    }
}