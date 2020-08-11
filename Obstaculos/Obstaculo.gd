extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$Mensaje.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.x -= 3.5
#	pass


func _on_Obstaculo_body_entered(body):
	#controlamos la vida de los jugadores
	#Preguntamos que player choco el obstaculo
	if (body == Global.Jugador1):#si fue el player 1
		#revisamos si tiene vida
		if (Global.vidas_j1 > 0):
			Global.vidas_j1 -=1
	elif(body == Global.Jugador2):#fue el player 2
		if (Global.vidas_j2 > 0):
			Global.vidas_j2 -=1
	pass # Replace with function body.


func _on_Visibilidad_pinche_screen_exited():
	queue_free()#eliminamos el nodo cuando sale de la pantalla
	pass # Replace with function body.
