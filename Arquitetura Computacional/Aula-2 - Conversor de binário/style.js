
function converter() {

    var decimal = Number(demo1.value);
    let octal = decimal.toString(8);
    let hexadecimal = decimal.toString(16);
    let binaria = decimal.toString(2);

    // Exibindo no console
    console.log(decimal);
    console.log(octal);
    console.log(hexadecimal);
    console.log(binaria);

    // Verificando se é um número
    if (isNaN(decimal)) {
        demo1.style.borderColor = "red"
        alert('Valor informado inválido')
    } else {
        demo1.style.borderColor = "blue"
    }
    
    // Exibindo no site
    document.getElementById("demo1").innerHTML = ` ${decimal}`;
    document.getElementById("demo2").innerHTML = ` ${octal}`;
    document.getElementById("demo3").innerHTML = ` ${hexadecimal}`;
    document.getElementById("demo4").innerHTML = ` ${binaria}`;
}

function aparecer_bin() {
    if (check4.checked) {
        demo4.style.display = 'block'
    } else {
        demo4.style.display = 'none'
    }
}

function aparecer_hexa() {
    if (check3.checked) {
        demo3.style.display = 'block'
    } else {
        demo3.style.display = 'none'
    }
}

function aparecer_octal() {
    if (check2.checked) {
        demo2.style.display = 'block'

    } else {
        demo2.style.display = 'none'
    }
}