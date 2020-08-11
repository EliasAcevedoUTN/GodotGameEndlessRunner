extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Mensaje.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.x -= 8
#	pass

#funcion que se ejecuta cuando sale de la vista la bomba
func _on_Visibilidad_bomba_screen_exited():
	queue_free()#eliminamos nuestro objeto  
	pass # Replace with function body.



#funcion que se ejecuta cuando el personaje toca la bomba
func _on_Bomba_body_entered(body):
	#controlamos la vida de los jugadores
	#Preguntamos que player choco el obstaculo
	if (body == Global.Jugador1):#si fue el player 1
		#revisamos si tiene vida
		if (Global.vidas_j1 > 0):
			Global.vidas_j1 -=1
	elif(body == Global.Jugador2):#fue el player 2
		if (Global.vidas_j2 > 0):
			Global.vidas_j2 -=1
	queue_free()

	pass # Replace with function body.

func player_golpe(body):
	body.animation
