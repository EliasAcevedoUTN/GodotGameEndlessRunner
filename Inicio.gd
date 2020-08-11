extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$jugar/MenuButton.hide()#oculamos los botones de submeno de jugar
	$Salir/MenuButton.hide()#ocultamos los botones del submenu de salir
	$info/Control.hide()#ocultamos la interfaz del boton info
	
	#establezco las variables de multijugador en falsa para que no me arroje errores a la hora de elegir personajes
	Global.multijugador = false
	Global.jugador1_elegido = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_jugar_pressed():#si oprimimos jugar
	$jugar/MenuButton.show()#mostramos el submenu
	$Salir.hide()#ocultamos los otros botones
	$info.hide()
	pass # Replace with function body.

#si oprimimos un jugador
func _on_one_player_pressed():
	Global.multijugador = false#la variable multijugador se queda en falsa
	yield(get_tree().create_timer(1.0),"timeout")
	get_tree().change_scene("res://MenuSeleccionPlayer.tscn") #pasamos a la seleccion de los personajes
	pass # Replace with function body.

#si oprimimos multi jugador
func _on_multi_player_pressed():
	Global.multijugador = true#volvemos true la variable de multijugador
	yield(get_tree().create_timer(1.0),"timeout")
	get_tree().change_scene("res://MenuSeleccionPlayer.tscn") #pasamos a la seleccion de los personjes
	pass # Replace with function body.


#si oprimimos el boton de salir
func _on_Salir_pressed():
	#$Salir.hide()
	$Salir/pregunta.show() #mostramos el submenu y todos los botones que contiene
	$Salir/MenuButton.show()
	$Salir/MenuButton/si.show()
	$Salir/MenuButton/no.show()
	$jugar.hide()#ocultamos los demas botones
	$info.hide()
	pass # Replace with function body.

#si oprimimos salir salimos del juego
func _on_si_pressed():
	get_tree().quit()
	pass # Replace with function body.

#si oprimos que no continuamos en el juego y se muestran los botones que se ocultaron
func _on_no_pressed():
	$jugar.show()
	$info.show()
	$Salir/pregunta.hide()
	$Salir/MenuButton/no.hide()
	$Salir/MenuButton/si.hide()
	pass # Replace with function body.

#si oprimimos volver cuando seleccionamos uno o multijugador volvemos a mostrar los otros botones
func _on_volver_pressed():
	$jugar/MenuButton.hide()
	$Salir.show()
	$info.show()
	pass # Replace with function body.

#si oprimimos info mostramos un cartel por unos segundos con las teclas que se usan para jugar
func _on_info_pressed():
	$info/Control.show()
	yield(get_tree().create_timer(3.0), "timeout")
	$info/Control.hide()
	pass # Replace with function body.
