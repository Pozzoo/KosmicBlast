//Inicializa as variveis do placar
global.points = 0;
pointsHigh = 0;
//Inicializa a variavel de lançamento do foguete
rocketWasShot = false;
//Inicializa as variaveis de incremento do spawn das pedras
numPedras = 3;
numPedrasG = 1;

//Função de incremento do numero de pedras que vão spawnar
_incrementarPedras = function(){
	numPedras += 2;
	numPedrasG += 1;
}
call_later(20, time_source_units_seconds, _incrementarPedras, true);
