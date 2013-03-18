
function calcular_vogais() {
    var frase = document.getElementById("txtFrase").value;
    var qtd_vogais = (frase.match(/[aáàãeéêioóõuú]/gi)||[]).length;
    
    document.getElementById("resposta").innerHTML = "A frase acima possui: " + qtd_vogais + " vogais.";
}

