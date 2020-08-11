extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	#Asigno las vidas a los jugadores
	$Player1/Vida_j1.text = str(Global.vidas_j1)
	$Player2/Vida_j2.text = str(Global.vidas_j2)
	
	#Asigno el puntaje a los jugadores
	$Player1/Puntaje_j1.text = str(Global.puntaje_j1)
	$Player2/Puntaje_j2.text = str(Global.puntaje_j2)
	
	#asignamos el puntaje maximo dependiendo del nivel elegido
	if (Global.nivel_seleccionado == Global.game1_string):
		$Maximo_puntaje/Puntaje_max.text = str(Global.puntaje_max_nivel1)
	elif (Global.nivel_seleccionado == Global.game2_string):
		$Maximo_puntaje/Puntaje_max.text = str(Global.puntaje_max_nivel2)
	elif(Global.nivel_seleccionado == Global.game3_string):
		$Maximo_puntaje/Puntaje_max.text = str(Global.puntaje_max_nivel3)
	#pregunto cuantos jugadore estan jugando para mostrar uno o dos carteles
	if (!Global.multijugador):
		$Player2.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#Para que se vayan actualizando las vidas de los jugadores
	$Player1/Vida_j1.text = str(Global.vidas_j1)
	$Player2/Vida_j2.text = str(Global.vidas_j2)
	#Asigno el puntaje a los jugadores en cada frame del juego
	$Player1/Puntaje_j1.text = str(Global.puntaje_j1)
	$Player2/Puntaje_j2.text = str(Global.puntaje_j2)
	pass
