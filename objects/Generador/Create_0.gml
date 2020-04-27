/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

randomize();
globalvar arreglo;

tamano=20;//tamaño del lado en el cuadrado
bombas=400;

x_room=room_width;
y_room=room_height;


cantidad_x=floor(x_room/tamano);

cantidad_y=floor(y_room/tamano);

if(cantidad_x*cantidad_y<bombas){
	show_message("Error, demasiadas bombas");
	exit;
}

globalvar ultimo
for (var aux=0; aux<cantidad_x; aux++){
	
	for(var auy=0; auy<cantidad_y; auy++){
		arreglo[aux, auy]=instance_create_depth(aux*tamano,auy*tamano, 1, ob_cuadrito);
		ultimo = arreglo[aux, auy];
		arreglo[aux, auy].pos_x_mapa=aux;
		arreglo[aux, auy].pos_y_mapa=auy;
	}
}

for(var auxiliar=0; auxiliar<bombas; auxiliar++){
	var rand_x=irandom(cantidad_x-1);
	var rand_y=irandom(cantidad_y-1);
	var objeto_bomba_nuevo=instance_create_depth(rand_x*tamano, rand_y*tamano, -1, ob_bomba);
	if(arreglo[rand_x, rand_y]<=ultimo){
		
		instance_destroy(arreglo[rand_x, rand_y]);
		
		arreglo[rand_x, rand_y]=objeto_bomba_nuevo;
	}else{
		instance_destroy(objeto_bomba_nuevo);
		auxiliar--;
	}
	
}

//show_message(string(arreglo));// + "----------" + string(ultimo));

//inicializar texto

draw_set_halign(fa_center);
draw_set_valign(fa_middle);


