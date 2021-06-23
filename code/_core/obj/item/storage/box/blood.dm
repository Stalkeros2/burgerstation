/obj/item/storage/blood_box/
	name = "blood box"
	icon = 'icons/obj/item/storage/boxes.dmi'
	icon_state = "bloodbox"

	is_container = TRUE
	container_max_size = SIZE_4
	size = SIZE_4*3

	dynamic_inventory_count = 3

	value = 20

/obj/item/storage/blood_box/blood/fill_inventory()
	new /obj/item/clothing/head/hat/tricorn(src)
	new /obj/item/clothing/neck/neck_wrap(src)
	new /obj/item/clothing/overwear/coat/trench(src)
	. = ..()

/obj/item/storage/blood_box/duum/fill_inventory()
	new /obj/item/clothing/overwear/hardsuit/doom(src)
	new /obj/item/clothing/head/helmet/full/doom(src)
	new /obj/item/weapon/ranged/bullet/pump/shotgun/wood/doom(src)
	. = ..()