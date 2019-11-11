/obj/hud/
	appearance_flags = NO_CLIENT_COLOR | PIXEL_SCALE

	var/user_colors = TRUE

	var/mob/owner

/obj/hud/update_icon()

	if(user_colors)
		icon = initial(icon)
		var/icon/I = new/icon(icon,icon_state)
		swap_colors(I)
		icon = I

	return ..()



/obj/hud/proc/swap_colors(var/icon/I)

	var/list/color_scheme = DEFAULT_COLORS

	if(owner && owner.client)
		color_scheme = owner.client.settings.loaded_data["hud_colors"]

	I.SwapColor(rgb(255,0,0),color_scheme[1])
	I.SwapColor(rgb(0,255,0),color_scheme[2])
	I.SwapColor(rgb(0,0,255),color_scheme[3])

	I.SwapColor(rgb(255,255,0),color_scheme[4])
	I.SwapColor(rgb(255,0,255),color_scheme[5])