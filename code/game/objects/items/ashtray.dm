/obj/item/ashtray
	icon = 'icons/obj/items/smoking/ashtray.dmi'
	item_icons = list(
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/items/smoking_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/items/smoking_righthand.dmi'
	)

	var/max_butts = 0
	var/empty_desc = ""
	var/icon_empty = ""
	var/icon_half = ""
	var/icon_full = ""
	var/icon_broken = ""

/obj/item/ashtray/attackby(obj/item/W as obj, mob/user as mob)
	if (health < 1)
		return
	if (istype(W,/obj/item/trash/cigbutt) || istype(W,/obj/item/clothing/mask/cigarette) || istype(W, /obj/item/tool/match))
		if (length(contents) >= max_butts)
			to_chat(user, "This ashtray is full.")
			return
		var/drop = TRUE

		if (istype(W,/obj/item/clothing/mask/cigarette))
			var/obj/item/clothing/mask/cigarette/cig = W
			if(cig.type_butt)
				if(cig.heat_source)
					user.visible_message("[user] crushes \the [cig] in \the [src], putting it out.", "You crush \the [cig] in \the [src], putting it out.")
					var/obj/item/butt = cig.go_out(user, TRUE)
					butt.forceMove(src)
					drop = FALSE
				else if (cig.heat_source == 0)
					to_chat(user, "You place \the [cig] in \the [src] without even smoking it. Why would you do that?")
			else
				drop = FALSE
				var/obj/item/clothing/mask/cigarette/pipe/P = W
				if(P.ash)
					user.visible_message("[user] empties the ash out of \the [P] into \the [src].", "You empty the ash out of \the [P] into \the [src].")
					P.ash = FALSE
				else
					to_chat(user, "There is no ash in \the [P].")

		if(drop)
			user.visible_message("[user] places \the [W] into \the [src].", "You place \the [W] into \the [src].")
			user.drop_inv_item_to_loc(W, src)
		user.update_inv_l_hand(0)
		user.update_inv_r_hand()
		add_fingerprint(user)
		if (length(contents) == max_butts)
			icon_state = icon_full
			desc = empty_desc + " It's stuffed full."
		else if (length(contents) > max_butts/2)
			icon_state = icon_half
			desc = empty_desc + " It's half-filled."
	else
		health = max(0,health - W.force)
		to_chat(user, "You hit [src] with [W].")
		if (health < 1)
			die()
	return

/obj/item/ashtray/launch_impact(atom/hit_atom)
	if (health > 0)
		health = max(0,health - 3)
		if (health < 1)
			die()
			return
		if (length(contents))
			src.visible_message(SPAN_DANGER("[src] slams into [hit_atom] spilling its contents!"))
		for (var/obj/item/clothing/mask/cigarette/O in contents)
			O.forceMove(src.loc)
		icon_state = icon_empty
	return ..()

/obj/item/ashtray/proc/die()
	src.visible_message(SPAN_DANGER("[src] shatters spilling its contents!"))
	for (var/obj/item/clothing/mask/cigarette/O in contents)
		O.forceMove(src.loc)
	icon_state = icon_broken

/obj/item/ashtray/plastic
	name = "plastic ashtray"
	desc = "Cheap plastic ashtray."
	icon_state = "ashtray_bl"
	icon_empty = "ashtray_bl"
	icon_half  = "ashtray_half_bl"
	icon_full  = "ashtray_full_bl"
	icon_broken  = "ashtray_bork_bl"
	max_butts = 14
	health = 24
	matter = list("metal" = 30,"glass" = 30)
	empty_desc = "Cheap plastic ashtray."
	throwforce = 3

/obj/item/ashtray/plastic/die()
	..()
	name = "pieces of plastic"
	desc = "Pieces of plastic with ash on them."
	return


/obj/item/ashtray/bronze
	name = "bronze ashtray"
	desc = "Massive bronze ashtray."
	icon_state = "ashtray_br"
	icon_empty = "ashtray_br"
	icon_half  = "ashtray_half_br"
	icon_full  = "ashtray_full_br"
	icon_broken  = "ashtray_bork_br"
	max_butts = 10
	health = 72
	matter = list("metal" = 80)
	empty_desc = "Massive bronze ashtray."
	throwforce = 10

/obj/item/ashtray/bronze/die()
	..()
	name = "pieces of bronze"
	desc = "Pieces of bronze with ash on them."
	return


/obj/item/ashtray/glass
	name = "glass ashtray"
	desc = "Glass ashtray. Looks fragile."
	icon_state = "ashtray_gl"
	icon_empty = "ashtray_gl"
	icon_half  = "ashtray_half_gl"
	icon_full  = "ashtray_full_gl"
	icon_broken  = "ashtray_bork_gl"
	max_butts = 12
	health = 12
	matter = list("glass" = 60)
	empty_desc = "Glass ashtray. Looks fragile."
	throwforce = 6

/obj/item/ashtray/glass/die()
	..()
	name = "shards of glass"
	desc = "Shards of glass with ash on them."
	playsound(src, "glassbreak", 25, 1)
	return
