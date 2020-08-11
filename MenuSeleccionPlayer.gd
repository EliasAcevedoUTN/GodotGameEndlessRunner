extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func ir_a_escena():
	#get_tree().change_scene("res://Game1.tscn")
	get_tree().change_scene("res://Niveles/SeleccionDeNivel.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

######comentarios se repiten para los cuatros personajes en las siguientes funciones#########

#si presionamos el personaje de Ninja
func _on_Ninja_pressed():
	if(!Global.jugador1_elegido):#revisamos si el player 1 ya se eligio
		Global.player_1 = Global.ninja_string #asignamos la direccion de la escena del personaje elegido a la variables que creara el personaje en el Game1
		$Ninja/Imagen_sel.animation = "demo"#mostramos que el personaje haga una animacion 
		yield(get_tree().create_timer(1.0), "timeout") #un tiempo de espera antes que se ejecute la siguiente linea
		$Ninja/Imagen_sel.stop() #paramos la animacion del personaje
		$Ninja/Imagen_sel.scale.x = 0.457 #disminuimos la escala de la imagen en sus
		$Ninja/Imagen_sel.scale.y = 0.359
		$Ninja.disabled = true #desmarcamos para que no pueda volver a elegir al personja
		if (Global.multijugador): #si no selecciono multijugaor entonces ejecutara la siguiente escena
			Global.jugador1_elegido = true
			$Elegir.text = "Player 2"
		else:
			ir_a_escena()
	else: #entra a esta parte del codigo cuando ya se eligio al primer personaje y sigue el mismo proceso que el if antetior solo q esta vez si ejecutara la escena y pasaremos al Game1
		Global.player_2 = Global.ninja_string 
		$Ninja/Imagen_sel.animation = "demo"
		yield(get_tree().create_timer(1.0), "timeout")
		$Ninja/Imagen_sel.stop()
		$Ninja/Imagen_sel.scale.x = 0.457
		$Ninja/Imagen_sel.scale.y = 0.359
		$Ninja.disabled = true
		ir_a_escena()
		

	pass # Replace with function body.




func _on_Caballero_pressed():
	
	if(!Global.jugador1_elegido):
		Global.player_1 = Global.caballero_string
		$Caballero/Imagen_sel.animation = "demo"
		yield(get_tree().create_timer(1.0), "timeout")
		$Caballero/Imagen_sel.stop()
		$Caballero/Imagen_sel.scale.x = 0.277
		$Caballero/Imagen_sel.scale.y = 0.295
		$Caballero.disabled = true
		if (Global.multijugador):
			Global.jugador1_elegido = true
			$Elegir.text = "Player 2"
		else:
			ir_a_escena()
	else:
		Global.player_2 = Global.caballero_string
		$Caballero/Imagen_sel.animation = "demo"
		yield(get_tree().create_timer(1.0), "timeout")
		$Caballero/Imagen_sel.stop()
		$Caballero/Imagen_sel.scale.x = 0.277
		$Caballero/Imagen_sel.scale.y = 0.295
		$Caballero.disabled = true
		ir_a_escena()
	pass # Replace with function body.



func _on_Robot_pressed():
	if(!Global.jugador1_elegido):
		Global.player_1 = Global.robot_string
		$Robot/Imagen_sel.animation = "demo"
		yield(get_tree().create_timer(1.0), "timeout")
		$Robot/Imagen_sel.stop()
		$Robot/Imagen_sel.scale.x = 0.335
		$Robot/Imagen_sel.scale.y = 0.365
		$Robot.disabled = true
		if (Global.multijugador):
			Global.jugador1_elegido = true
			$Elegir.text = "Player 2"
		else:
			ir_a_escena()
	else:
		Global.player_2 = Global.robot_string
		$Robot/Imagen_sel.animation = "demo"
		yield(get_tree().create_timer(2.0), "timeout")
		$Robot/Imagen_sel.stop()
		$Robot/Imagen_sel.scale.x = 0.335
		$Robot/Imagen_sel.scale.y = 0.365
		$Robot.disabled = true
		ir_a_escena()
	pass




func _on_Calabaza_pressed():
	if(!Global.jugador1_elegido):
		Global.player_1 = Global.calabaza_string
		$Calabaza/Imagen_sel.animation = "demo"
		yield(get_tree().create_timer(1.0), "timeout")
		$Calabaza/Imagen_sel.stop()
		$Calabaza/Imagen_sel.scale.x = 0.25
		$Calabaza/Imagen_sel.scale.y = 0.25
		$Calabaza.disabled = true
		if (Global.multijugador):
			Global.jugador1_elegido = true
			$Elegir.text = "Player 2"
		else:
			ir_a_escena()
	else:
		Global.player_2 = Global.calabaza_string
		$Calabaza/Imagen_sel.animation = "demo"
		yield(get_tree().create_timer(1.0), "timeout")
		$Calabaza/Imagen_sel.stop()
		$Calabaza/Imagen_sel.scale.x = 0.25
		$Calabaza/Imagen_sel.scale.y = 0.25
		$Calabaza.disabled = true
		ir_a_escena()
	pass # Replace with function body.



#############las siguientes cuatro funciones son las mismas######################
##########son para agrandar la imagen del personaje que se tenga señalado con el puntero del mouse########
func _on_Ninja_mouse_entered():
	$Ninja/Imagen_sel.play()
	$Ninja/Imagen_sel.scale.x = 0.6
	$Ninja/Imagen_sel.scale.y = 0.6
	pass # Replace with function body.


func _on_Ninja_mouse_exited():
	$Ninja/Imagen_sel.stop()
	$Ninja/Imagen_sel.scale.x = 0.457
	$Ninja/Imagen_sel.scale.y = 0.359
	pass # Replace with function body.


func _on_Caballero_mouse_entered():
	$Caballero/Imagen_sel.play()
	$Caballero/Imagen_sel.scale.x = 0.4
	$Caballero/Imagen_sel.scale.y = 0.4
	pass # Replace with function body.


func _on_Caballero_mouse_exited():
	$Caballero/Imagen_sel.stop()
	$Caballero/Imagen_sel.scale.x = 0.277
	$Caballero/Imagen_sel.scale.y = 0.295
	pass # Replace with function body.


func _on_Robot_mouse_entered():
	$Robot/Imagen_sel.play()
	$Robot/Imagen_sel.scale.x = 0.5
	$Robot/Imagen_sel.scale.y = 0.5
	pass # Replace with function body.


func _on_Robot_mouse_exited():
	$Robot/Imagen_sel.stop()
	$Robot/Imagen_sel.scale.x = 0.335
	$Robot/Imagen_sel.scale.y = 0.365
	pass # Replace with function body.


func _on_Calabaza_mouse_entered():
	$Calabaza/Imagen_sel.play()
	$Calabaza/Imagen_sel.scale.x = 0.38
	$Calabaza/Imagen_sel.scale.y = 0.38
	pass # Replace with function body.


func _on_Calabaza_mouse_exited():
	$Calabaza/Imagen_sel.stop()
	$Calabaza/Imagen_sel.scale.x = 0.25
	$Calabaza/Imagen_sel.scale.y = 0.25
	pass # Replace with function body.

#si presionamos el boton de volver pasaremos a la escena anterior
func _on_Button_pressed():
	Global.player_1 = ""
	Global.player_1 = ""
	Global.Jugador1 = null
	Global.Jugador2 = null
	Global.multijugador = false
	Global.jugador1_elegido = false
	get_tree().change_scene("res://Inicio.tscn")
	pass # Replace with function body.
