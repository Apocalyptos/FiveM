local Translations = {
    store = {
        barber = "Salon de coiffure",
        surgeon = "Chirurgien Plasticien",
        clothing = "Magasin de vêtements",
        outfitchanger = "Changeur de tenue"
    },

    outfits = {
        roomOutfits = "Préréglages",
        myOutfits = "Mes tenues",
        character = "Vêtements",
        accessoires = "Accessoires"
    },

	menu = {
		hair = "Cheveux",
		character = "Vêtements",
		accessoires = "Accessoires",
		features = "Caractéristiques"
	},

	ui = {
		select = "Sélectionner",
		delete = "Supprimer",
		select_outfit = "Sélectionner une Tenue",
		player_model = "Modèle du Joueur",
		model = "Modèle",
		mother = "Mère",
		father = "Père",
		texture = "Texture",
		type = "Type",
		item = "Élément",
		skin_color = "Couleur de Peau",
		parent_mixer = "Mélange des Parents",
		shape_mix = "Mélange de Forme",
		skin_mix = "Mélange de Peau",
		arms = "Bras",
		undershirt = "Sous-vêtements / Ceintures",
		color = "Couleur",
		jacket = "Vestes / Hauts",
		vests = "Gilets",
		decals = "Autocollants",
		acessory = "Accessoires de Cou",
		bags = "Sacs",
		pants = "Pantalons",
		shoes = "Chaussures",
		eye_color = "Couleur des Yeux",
		moles = "Grains de Beauté / Taches de Rousseur",
		opacity = "Opacité",
		nose_width = "Largeur du Nez",
		width = "Largeur",
		nose_peak_height = "Hauteur de l’Arête du Nez",
		height = "Hauteur",
		nose_peak_length = "Longueur de l’Arête du Nez",
		length = "Longueur",
		nose_bone_height = "Hauteur de l’Os du Nez",
		nose_peak_lowering = "Abaissement de l’Arête du Nez",
		lowering = "Abaissement",
		nose_bone_twist = "Torsion de l’Os du Nez",
		twist = "Torsion",
		eyebrow_height = "Hauteur des Sourcils",
		eyebrow_depth = "Profondeur des Sourcils",
		depth = "Profondeur",
		cheeks_height = "Hauteur des Joues",
		cheeks_width = "Largeur des Joues",
		cheeks_depth = "Profondeur des Joues",
		eyes_opening = "Ouverture des Yeux",
		opening = "Ouverture",
		lips_thickness = "Épaisseur des Lèvres",
		thickness = "Épaisseur",
		jaw_bone_width = "Largeur de la Mâchoire",
		jaw_bone_length = "Longueur de la Mâchoire",
		chin_height = "Hauteur du Menton",
		chin_width = "Largeur du Menton",
		butt_chin  = "Fossette au Menton",
		size = "Taille",
		neck_thickness = "Épaisseur du Cou",
		ageing = "Vieillissement",
		hair = "Cheveux",
		eyebrow = "Sourcils",
		facial_hair = "Pilosité Faciale",
		lipstick = "Rouge à Lèvres",
		blush = "Blush",
		makeup = "Maquillage",
		mask = "Masques",
		hat = "Chapeaux",
		glasses = "Lunettes",
		ear_acessories = "Accessoires d’Oreilles",
		watch = "Montres",
		bracelet = "Bracelets",
		btn_confirm = "Confirmer",
		btn_cancel = "Annuler",
		btn_saveOutfit = "Sauvegarder",
		outfit_name = "Nom de la Tenue"
	},

	notify = {
		error_bracelet = "Vous ne pouvez pas retirer votre bracelet à la cheville...",
		info_deleteOutfit = "Vous avez supprimé votre tenue %{outfit} !"
	}

}

if GetConvar('qb_locale', 'en') == 'fr' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end