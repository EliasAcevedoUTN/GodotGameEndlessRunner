extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


#si presiona volver a jugar
func _on_juego_nuevo_pressed():
	#reiniciamos las vidas
	Global.vidas_j1 = 3
	Global.vidas_j2 = 3
	
	#reiniciamos el puntaje
	Global.puntaje_j1 = 0
	Global.puntaje_j2 = 0
	
	#cambiamos a la escena del juego, para eso usamos la variable global que guarda el nivel seleccioando
	get_tree().change_scene(Global.nivel_seleccionado)
	pass # Replace with function body.

#si presiona salir del juego
func _on_salir_al_inicio_pressed():
	#reiniciamos las vidas
	Global.vidas_j1 = 3
	Global.vidas_j2 = 3
	
	#reiniciamos el puntaje
	Global.puntaje_j1 = 0
	Global.puntaje_j2 = 0
	#volvemos a la escena principal
	get_tree().change_scene("res://Inicio.tscn")
	pass # Replace with function body.
