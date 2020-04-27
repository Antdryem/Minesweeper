/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


image_xscale=Generador.tamano/100;
image_yscale=image_xscale;

var nueva_casilla=instance_create_depth(x, y, depth-1, ob_piso_oculto);
nueva_casilla.image_xscale=image_xscale;
nueva_casilla.image_yscale=image_yscale;
nueva_casilla.casilla_paralela="bomba";