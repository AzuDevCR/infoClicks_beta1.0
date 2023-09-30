; Infoclicks
	
	Gui, Color, 45577C
	
	Gui, Add, Button,Border Center x12 y49 w100 h25 , Left Button
	Gui, Add, Button,Border Center x162 y49 w100 h25 , Right Button
	
	Gui, Add, Text, x42 y168 w200 h30 , Presiona la tecla Inicio para resetear
	Gui, Add, Button, x82 y200 w100 h30 , Salir
	Gui, Show, w279 h253, InfoClicks Beta 1
	
raton := ["izq", "der"] 

raton.izq := 0 
raton.der := 0

c_i := 0 
c_d := 0 

	
~LButton::
	raton.izq += 1
	c_i := raton["izq"]	
	Gui, Font, s18, w40
	Gui, , Edit, ReadOnly -Multi x12 y89 w100 h55 , %c_i%
return

~RButton::
	raton.der += 1
	c_d := raton["der"]
	Gui, Font, s18, w40
	Gui, , Edit, ReadOnly -Multi x162 y89 w100 h55 , %c_d%
return

~Home::

raton.izq := 0 
raton.der := 0
c_i := 0 
c_d := 0 

Gui, Font, s18, w40
Gui, Add, Edit, ReadOnly -Multi x12 y89 w100 h55 , %c_i%
Gui, Add, Edit, ReadOnly -Multi x162 y89 w100 h55 , %c_d%
return
	
 ButtonSalir:
 GuiClose:
ExitApp