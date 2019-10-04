/*
 * Copyright (C) 2019 Renato
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package com.github.websier.sier.app.domain.models;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.github.websier.sier.app.domain.embeddables.Coleta;
import com.github.websier.sier.app.domain.embeddables.Endereco;

/**
 * Classe responsavel por representar um Edificio.
 *
 * @author Renato
 * @since 3.0.0
 */
@Entity
public class Edificio implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nome;

    @Size(min = 1, max = 255, message = "{edificio.nome.fantasia.size}")
    @Column(nullable = false)
    private String nomeConhecido;

    private LocalDateTime dataConstrucao;

    @NotNull(message = "{edificio.andares.notnull}")
    private int numeroAndares;

    @Embedded
    private Endereco endereco;

    @Embedded
    private Coleta coleta;

    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getNomeConhecido() {
        return nomeConhecido;
    }

    public void setNomeConhecido(String nomeConhecido) {
        this.nomeConhecido = nomeConhecido;
    }

    public LocalDateTime getDataConstrucao() {
        return dataConstrucao;
    }

    public void setDataConstrucao(LocalDateTime dataConstrucao) {
        this.dataConstrucao = dataConstrucao;
    }

    public int getNumeroAndares() {
        return numeroAndares;
    }

    public void setNumeroAndares(int numeroAndares) {
        this.numeroAndares = numeroAndares;
    }

    public Coleta getColeta() {
        return coleta;
    }

    public void setColeta(Coleta coleta) {
        this.coleta = coleta;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public LocalDateTime getCadastradoEm() {
        return createdAt;
    }
    
    public LocalDateTime getAtuaizadoEm() {
        return updatedAt;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object == null) {
            return false;
        }
        if (getClass() != object.getClass()) {
            return false;
        }
        final Edificio other = (Edificio) object;
        return Objects.equals(this.id, other.id);
    }

    @PrePersist
    private void created() {
        this.createdAt = LocalDateTime.now();
    }

    @PreUpdate
    private void updated() {
        this.updatedAt = LocalDateTime.now();
    }

    @Override
    public String toString() {
        return this.nomeConhecido;
    }
}
