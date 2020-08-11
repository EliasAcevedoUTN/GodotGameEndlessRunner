extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var mover_vel = 200
var niveles = [1,2,3]
var posicion = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (posicion == 1 ):
		$NivelBoton.rect_position.x = -640
		#$NivelBoton.rect_position.x = -768
	if (posicion == 2):
		$NivelBoton.rect_position.x = -1344
		#$NivelBoton.rect_position.x = -1536
	if (posicion == 0):
		$NivelBoton.rect_position.x = 64
	pass

func _on_ImagenDer_mouse_entered():
	$Control/Der/ImagenDer.rect_scale.x = 1.2
	$Control/Der/ImagenDer.rect_scale.y = 1.2
	pass # Replace with function body.


func _on_ImagenDer_mouse_exited():
	$Control/Der/ImagenDer.rect_scale.x = 1
	$Control/Der/ImagenDer.rect_scale.y = 1
	pass # Replace with function body.


func _on_ImageIzq_mouse_entered():
	$Control/Izq/ImageIzq.rect_scale.x = 1.2
	$Control/Izq/ImageIzq.rect_scale.y = 1.2
	pass # Replace with function body.


func _on_ImageIzq_mouse_exited():
	$Control/Izq/ImageIzq.rect_scale.x = 1
	$Control/Izq/ImageIzq.rect_scale.y = 1
	pass # Replace with function body.


func _on_ImagenDer_pressed():
	if (posicion == 0):
		posicion = 1
	elif (posicion == 1):
		posicion = 2
	elif (posicion == 2):
		posicion = 2
	pass # Replace with function body.


func _on_ImageIzq_pressed():
	if (posicion == 0):
		posicion = 0
	elif (posicion == 1):
		posicion = 0
	elif (posicion == 2):
		posicion = 1
	pass # Replace with function body.


func _on_Nivel1_pressed():
	#dejamos el nivell marcado, esto lo usaremos cuando terminemos una partida
	Global.nivel_seleccionado = Global.game1_string
	#cambiamos la escena al nivel seleccionado
	get_tree().change_scene("res://Game1.tscn")
	pass # Replace with function body.


func _on_Nivel2_pressed():
	#dejamos el nivell marcado, esto lo usaremos cuando terminemos una partida
	Global.nivel_seleccionado = Global.game2_string
	#cambiamos la escena al nivel seleccionado
	get_tree().change_scene("res://Game2.tscn")
	pass # Replace with function body.


func _on_Nivel3_pressed():
	#dejamos el nivell marcado, esto lo usaremos cuando terminemos una partida
	Global.nivel_seleccionado = Global.game3_string
	#cambiamos la escena al nivel seleccionado
	get_tree().change_scene("res://Game3.tscn")
	pass # Replace with function body.
