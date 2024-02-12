extends Label
#Variablen
var is_running =false
var s = 0
var m = 0
var hr = 0
var dy = 0
#Funktion um die Zeit zu aktualisieren
func update_timer(delta):
	s += delta
	update_time()

#Funktion um die berechnete Zeit anzuzeigen
	var label_time ="%02d: %02d:%02d:%02d" % [dy, hr, m, floor(s)]
	self.text = label_time

#Funktion welche die Zeit berechnet
func update_time():
		if s > 59:
			s = 0
			m +=1
		if m > 59:
			m = 0
			hr +=1
		if hr > 23:
			hr =0
			dy +=1

func _process(delta):
	if is_running:
		update_timer(delta)
	pass
# Jetzt werde ich alle Buttons per Signal im Inspektor verknüpfen und nacheinander bearbeiten.

func _on_start_pressed():
	is_running =  true
	pass # Replace with function body.

func _on_stop_pressed():
	is_running = false
	pass # Replace with function body.

func _on_reset_pressed():
	is_running = false
	s = 0
	m = 0
	hr = 0
	dy = 0
	self.text ="00: 00:00:00"
	pass # Replace with function body.

func _on_exit_pressed():
	get_tree().quit()
	pass # Replace with function body.

func _on_extern_pressed():
	OS.shell_open("https://odysee.com/@Godot_Engine_Dev:f")
	pass # Replace with function body.
# Jetzt schauen wir uns den Code nochmal an und testen ihn.
# Es wurde noch keine Szene erstellt aber der Debugger macht uns gleich iene Szene.
