extends StaticBody2D
export (int) var velocidad = -50#velocidad con la que queremos que se mueva el piso
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#funcion que hara que se repita el movimiento del piso infinitas veces
	move_local_x(velocidad*delta)
	#si el piso alcanza cierta posicion entonces le decimos cuanto queremos que vuelva respecto a la posicion en x
	if global_position.x <= -704:
		global_position.x = -704 + 704*2
	
	pass
