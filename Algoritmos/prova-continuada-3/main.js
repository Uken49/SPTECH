var missoes = []
var mensagem = ""
var maiorMissao = {
    nome: "",
    tempo: "",
    ano: "",
    viagem: ""
}
var numeroMissao = 0

function cadastrar() {
    var viagem = {
        tripulante: inp_nome.value,
        dia: Number(inp_dia.value),
        hora: Number(inp_hora.value),
        minuto: Number(inp_minuto.value),
        tempo: Number(inp_tempo.value),
        anosTerra: 0,
        imagem: ""
    }

    validar(viagem)

    if (mensagem.length > 0) {
        alert(mensagem)
        return
    }

    numeroMissao++

    // Cadastrando viagem no vetor
    calcularTempo(viagem)

    missoes.push(viagem)

    // Check visual de que deu certo
    embarcando.style.width = "100%"
    setTimeout(() => { embarcando.style.opacity = "0" }, 2000);
    setTimeout(() => { embarcando.style.width = "0" }, 4000);
}

function validar(viagem) {
    mensagem = ""

    if (viagem.dia < 0 || viagem.hora < 0 || viagem.minuto < 0 || viagem.tempo < 0) {
        mensagem = "Informe um tempo de viagem válido!"
        return
    }

    if (viagem.dia == 0 && viagem.hora == 0 && viagem.minuto == 0 && viagem.tempo == 0) {

        mensagem = "Informe um tempo de viagem válido!"
        return
    }

    if (viagem.hora > 23) {
        mensagem = 'Horas não podem ser mais que 23'
        return
    }

    if (viagem.minuto > 59) {
        mensagem = 'Minutos não podem ser mais que 59'
        return
    }
}

function relatorio() {
    var texto = ""

    div_relatorio.innerHTML = texto
    for (var i = 0; i < missoes.length; i++) {
        texto += `
                    <p>
                        Viagem ${i + 1}: <br>
                        Astronauta ${missoes[i].tripulante} ficou fora por pelo menos ${missoes[i].anosTerra} anos no tempo da Terra.
                        Quando ele chegou seus amigos estavam assim: <br> 
                        <img src="${missoes[i].imagem}" style="width: 100px;">
                    </p>`
    }

    texto += `
                <p>
                    O astronauta que passou mais tempo foi o ${maiorMissao.nome}, que ficou pelo menos ${maiorMissao.ano} anos no tempo da Terra viajando. Essa foi a ${maiorMissao.viagem}ª viagem registrada.                
                </p>`

    div_relatorio.innerHTML = texto
}

function calcularTempo(viagem) {
    var minuto = viagem.minuto
    var hora = viagem.hora * 120
    var dia = viagem.dia * 1440
    var anosTerra = ((minuto + hora + dia) * 60) / 525600

    viagem.anosTerra = parseInt(anosTerra)

    if (parseInt(anosTerra) <= 3) {
        viagem.imagem = "bart-jovem.png"

    } else {
        if (parseInt(anosTerra) > 3 && parseInt(anosTerra) <= 8) {
            viagem.imagem = "bart-jovem-adulto.png"

        } else {
            if (parseInt(anosTerra) > 8 && parseInt(anosTerra) <= 35) {
                viagem.imagem = "bart-adulto.png"

            } else {
                if (parseInt(anosTerra) > 35 && parseInt(anosTerra) <= 95) {
                    viagem.imagem = "bart-idoso.png"
                } else {
                    viagem.imagem = "bart-esqueleto.png"
                }
            }
        }
    }

    if (anosTerra > maiorMissao.ano) {
        maiorMissao.nome = viagem.tripulante
        maiorMissao.tempo = viagem.tempo
        maiorMissao.ano = numeroMissao
    }
}