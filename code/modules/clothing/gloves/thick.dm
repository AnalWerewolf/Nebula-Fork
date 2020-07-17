/obj/item/clothing/gloves/thick
	name = "work gloves"
	desc = "These work gloves are thick and fire-resistant."
	siemens_coefficient = 0.50
	permeability_coefficient = 0.05
	item_flags = ITEM_FLAG_THICKMATERIAL
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_HEAT_PROTECTION_TEMPERATURE
	color = COLOR_GRAY20
	icon = 'icons/clothing/hands/gloves_thick.dmi'
	on_mob_icon = 'icons/clothing/hands/gloves_thick.dmi'
	icon_state = "world"
	force = 5
	sprite_sheets = null
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_MINOR)

/obj/item/clothing/gloves/thick/swat
	desc = "These tactical gloves are somewhat fire and impact-resistant."
	name = "\improper SWAT Gloves"

/obj/item/clothing/gloves/thick/combat //Combined effect of SWAT gloves and insulated gloves
	desc = "These tactical gloves are somewhat fire and impact resistant."
	name = "combat gloves"
	siemens_coefficient = 0
	permeability_coefficient = 0.05

/obj/item/clothing/gloves/thick/botany
	desc = "These work gloves protect against thorns, barbs, prickles, spikes and other harmful objects of floral origin."
	applies_material_colour = TRUE
	applies_material_name = TRUE
	material = MAT_LEATHER_GENERIC

/obj/item/clothing/gloves/thick/botany/on_update_icon()
	. = ..()
	var/image/I = image(icon, "[icon_state]-botany_fingertips")
	I.appearance_flags |= RESET_COLOR
	overlays = list(I)

/obj/item/clothing/gloves/thick/botany/apply_overlays(var/mob/user_mob, var/bodytype, var/image/overlay, var/slot)
	if(slot == slot_gloves_str)
		var/image/I = image(icon, "[bodytype]-botany_fingertips")
		I.appearance_flags |= RESET_COLOR
		overlay.overlays = list(I)
	. = ..()

/obj/item/clothing/gloves/thick/duty
	desc = "These brown duty gloves are made from a durable synthetic."
	color = COLOR_BEASTY_BROWN


/obj/item/clothing/gloves/thick/sbgloves
	name = "Red Baron gloves"
	desc = "Protects your hands."
	icon_state = "sbgloves"
	icon = 'icons/obj/clothing/obj_hands.dmi'
	on_mob_icon = 'icons/mob/onmob/onmob_hands.dmi'

/obj/item/clothing/gloves/thick/sbgloves/blue
	name = "Blue Eagle gloves"
	icon_state = "blueteam"