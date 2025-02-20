/obj/structure/curtain
	name = "curtain"
	desc = "A cloth curtain that can be parted and closed accordingly."
	icon = 'icons/obj/curtain.dmi'
	icon_state = "closed"
	opacity = 1
	density = 0
	anchored = 1
	layer = WALL_OBJ_LAYER

/obj/structure/curtain/open
	icon_state = "open"
	layer = SIGN_LAYER
	opacity = 0

/obj/structure/curtain/bullet_act(obj/item/projectile/P, def_zone)
	if(!P.nodamage && (!(P.testing)))
		visible_message(SPAN_WARNING("[P] tears [src] down!"))
		qdel(src)
	else
		..(P, def_zone)

/obj/structure/curtain/attack_hand(mob/user)
	playsound(get_turf(loc), "rustle", 15, 1, -5)
	toggle()
	..()

/obj/structure/curtain/proc/toggle()
	opacity = !opacity
	if(opacity)
		icon_state = "closed"
		layer = WALL_OBJ_LAYER
	else
		icon_state = "open"
		layer = SIGN_LAYER

/obj/structure/curtain/black
	name = "black curtain"
	color = "#222222"

/obj/structure/curtain/red
	name = "red curtain"
	color = "#841423"

/obj/structure/curtain/medical
	name = "plastic curtain"
	color = "#B8F5E3"
	alpha = 200

/obj/structure/curtain/open/bed
	name = "bed curtain"
	color = "#854636"

/obj/structure/curtain/open/privacy
	name = "privacy curtain"
	color = "#B8F5E3"

/obj/structure/curtain/open/shower
	name = "shower curtain"
	color = "#ACD1E9"
	alpha = 200

/obj/structure/curtain/open/shower/closed
	icon_state = "closed"
	layer = WALL_OBJ_LAYER
	opacity = 1

/obj/structure/curtain/open/shower/engineering
	color = "#FFA500"

/obj/structure/curtain/open/shower/security
	color = "#AA0000"
