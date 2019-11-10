/**
 * Javascript responsavel por validar entradas no campo CEP no formulario dos
 * edificios.
 * 
 * @author viacep 
 * @description https://viacep.com.br/exemplo/javascript
 */

function alterarCampoCep(valor) {
    document.getElementById('cep').value = valor;
}

function alterarCampoRua(valor) {
    document.getElementById('rua').innerHTML = valor;
    document.getElementById('inputRua').value = valor;
}

function alterarCampoBairro(valor) {
    document.getElementById('bairro').innerHTML = valor;
    document.getElementById('inputBairro').value = valor;
}

function alterarCampoCidade(valor) {
    document.getElementById('cidade').innerHTML = valor;
    document.getElementById('inputCidade').value = valor;
}

function alterarCampoEstado(valor) {
    document.getElementById('estado').innerHTML = valor;
    document.getElementById('inputEstado').value = valor;
}

function limpa_formulario_cep() {
    alterarCampoCep("");
    alterarCampoRua("");
    alterarCampoBairro("");
    alterarCampoCidade("");
    alterarCampoEstado("");
}

function meu_callback(conteudo) {
    if (!("erro" in conteudo)) {

        /* Removendo a borda vermelha do campo CEP */
        document.getElementById('cep').classList.remove('campo-invalido-input');

        /* Mundando a borda para sucesso */
        document.getElementById('cep').classList.add('campo-sucesso-input');

        /* Atualizando feedback cep */
        document.getElementById('cep-feedback').innerHTML = "";

        /* Atualiza os campos com os valores. */
        alterarCampoCep(getCEP());
        alterarCampoRua(conteudo.logradouro);
        alterarCampoBairro(conteudo.bairro);
        alterarCampoCidade(conteudo.localidade);
        alterarCampoEstado(conteudo.uf);

    } else {

        /* CEP não Encontrado. */
        limpa_formulario_cep();

        /* Mundando a borda do campo cep */
        document.getElementById('cep').classList.remove('campo-sucesso-input');
        document.getElementById('cep').classList.add('campo-invalido-input');

        /* Atualizando feedback cep */
        document.getElementById('cep-feedback').innerHTML = "Cep não encontrado";
    }
}

function getCEP() {

    valor = document.getElementById('cep').value;

    let cep = valor.replace(/\.|\-/g, '');

    return cep;
}

function pesquisacep(valor) {

    /* Nova variavel "cep" somente com di­gitos. */
    let cep = valor.replace(/\D/g, '');

    /* Verifica se campo cep possui valor informado. */
    if (cep != "") {

        /* Expressao regular para validar o CEP. */
        let validacep = /^[0-9]{8}$/;

        /* Valida o formato do CEP. */
        if (validacep.test(cep)) {

            /* Preenche os campos com "..." enquanto consulta webservice. */
            alterarCampoRua("...");
            alterarCampoBairro("...");
            alterarCampoCidade("...");
            alterarCampoEstado("...");

            /* Cria um elemento javascript. */
            let script = document.createElement('script');

            /* Sincroniza com o callback. */
            script.src = 'https://viacep.com.br/ws/' + cep + '/json/?callback=meu_callback';

            /* Insere script no documento e carrega o conteudo. */
            document.body.appendChild(script);

        } else {

            /* cep invalido, limpa formulario */
            limpa_formulario_cep();

            /* Mundando a borda do campo cep */
            document.getElementById('cep').classList.remove('campo-sucesso-input');
            document.getElementById('cep').classList.add('campo-invalido-input');

            /* Atualizando feedback cep */
            document.getElementById('cep-feedback').innerHTML = "Cep invalido!";
        }

    } else {

        /* cep sem valor, limpa formulario. */
        limpa_formulario_cep();

        /* Mundando a borda do campo cep */
        document.getElementById('cep').classList.remove('campo-sucesso-input');
        document.getElementById('cep').classList.add('campo-invalido-input');

        /* Atualizando feedback cep */
        document.getElementById('cep-feedback').innerHTML = "";
    }
}