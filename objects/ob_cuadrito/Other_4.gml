/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


image_xscale=Generador.tamano/100;
image_yscale=image_xscale;

alrededor=0;

var arreglo_alrededor_x=[Generador.tamano, 0, -Generador.tamano];
var arreglo_alrededor_y=[Generador.tamano, 0, -Generador.tamano];

for(var aux=0; aux<array_length_1d(arreglo_alrededor_x); aux++){
	for(var auy=0; auy<array_length_1d(arreglo_alrededor_y); auy++){
		if(place_meeting(x+arreglo_alrededor_x[aux], y+arreglo_alrededor_y[auy], ob_bomba)){
			alrededor++;
		}
	}
}


casilla_superior=instance_create_depth(x, y, depth-1, ob_piso_oculto);
casilla_superior.image_xscale=image_xscale;
casilla_superior.image_yscale=image_yscale;
casilla_superior.pos_x_mapa=pos_x_mapa;
casilla_superior.pos_y_mapa=pos_y_mapa;
casilla_superior.casilla_paralela=self;