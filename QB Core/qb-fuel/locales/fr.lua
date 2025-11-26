local Translations = {
    progress = {
        refueling = "Ravitaillement...",
    },
    success = {
        refueled = "Véhicule plein",
    },
    error = {
        no_money = "Vous n'avez pas assez d'argent",
        no_vehicle = "Aucun véhicule trouvé à proximité",
        no_vehicles = "Aucun véhicule à proximité",
        no_jerrycan = "Vous n'avez pas de jerrican",
        vehicle_full = "Le véhicule est déjà plein de carburant",
        no_fuel_can = "Vous n'avez pas de carburant dans le jerrycan.",
        no_nozzle = "Aucun véhicule équipé de cette buse ne se trouve à proximité.",
        too_far = "Vous êtes trop loin de la pompe, le pistolet a été remis en place.",
        wrong_side = "Le réservoir du véhicule se trouve de l'autre côté.",
    },
    target = {
        put_fuel = "Mettre du carburant",
        get_nozzle = "Prendre le pistolet",
        buy_jerrycan = "Acheter un bidon d'essence $%{price}",
        refill_jerrycan = "Remplir le bidon d'essence $%{price}",
        refill_fuel = "Faire le plein de carburant",
        nozzle_put = "Insérer le pistolet",
        nozzle_remove = "Retirer le pistolet",
        return_nozzle = "Ranger le pistolet",
    }
}

if GetConvar('qb_locale', 'en') == 'fr' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end