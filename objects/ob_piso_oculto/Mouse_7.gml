/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if(casilla_paralela!="bomba"){
	if(casilla_paralela.alrededor==0 && estado==0){
		estado=1;
		//revelar casillas alrededor
		//Generador.cantidad_x/y
		for(var aux=-1; aux<2; aux++){
			for(var auy=-1; auy<2; auy++){
				if(casilla_paralela.pos_x_mapa+aux>=0 && casilla_paralela.pos_x_mapa+aux<Generador.cantidad_x &&
				   casilla_paralela.pos_y_mapa+auy>=0 && casilla_paralela.pos_y_mapa+auy<Generador.cantidad_y){
					with (arreglo[casilla_paralela.pos_x_mapa+aux, 
					casilla_paralela.pos_y_mapa+auy].casilla_superior){
						//show_message("x:"+string(pos_x_mapa)+"    y:"+string(pos_y_mapa));
						if(estado==0)
							//event_perform(ev_mouse, ev_left_release);
							alarm[0]=4;
					}
				}
			}
		}
	}
	instance_destroy();
}else{
	show_message("Has perdido :c");	
	game_restart();
}