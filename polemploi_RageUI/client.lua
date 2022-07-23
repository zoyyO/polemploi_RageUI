ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(5000)
	end
end)

RMenu.Add('joblisting', 'main', RageUI.CreateMenu("Pôle-Emploi", "Bienvenue à vous au ~b~Pôle~w~-~b~Emploi"))
RMenu.Add('joblisting', 'public', RageUI.CreateSubMenu(RMenu:Get('joblisting', 'main'), "Métiers Publics", "Métiers libre à tous"))
RMenu.Add('joblisting', 'wl', RageUI.CreateSubMenu(RMenu:Get('joblisting', 'main'), "Métiers WL", "Métiers sous candidature 'discord'"))
RMenu.Add('joblisting', 'leave', RageUI.CreateSubMenu(RMenu:Get('joblisting', 'main'), "Démissionner", "Démissionner de son travail"))


Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('joblisting', 'main'), true, true, true, function()

            RageUI.Button("~g~Métiers Publics", "Métiers libre à tous", {RightLabel = "⇾⇾⇾"},true, function()
            end, RMenu:Get('joblisting', 'public'))

            RageUI.Button("~b~Métiers WL", "Métiers sous candidature 'discord'", {RightLabel = "⇢⇢⇢"},true, function()
            end, RMenu:Get('joblisting', 'wl'))
            
            RageUI.Button("~r~Démission", "Démissionner de son Emploi", {RightLabel = ""},true, function()
            end, RMenu:Get('joblisting', 'leave'))
        end, function()
        end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

        RageUI.IsVisible(RMenu:Get('joblisting', 'public'), true, true, true, function()

            RageUI.Button("Mineur", "La pierre est l'élément coeur de toute construction", {RightLabel = "⇨ ~g~Choisir"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('polemploi:miner')
                    PlaySoundFrontend(-1, "Hit_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", true)
                    Citizen.Wait(1000)
                    ESX.ShowNotification('Vous êtes maintenant ~g~Mineur.')
                end
            end)

            RageUI.Button("Couturier", "Vous avez l'esprit créatif, ce travail est fait pour vous", {RightLabel = "⇨ ~g~Choisir"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('polemploi:tailor')
                    PlaySoundFrontend(-1, "Hit_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", true)
                    Citizen.Wait(1000)
                    ESX.ShowNotification('Vous êtes maintenant ~b~Couturier.')
                end
            end)

            RageUI.Button("Eboueur", "Tu souhaite une ville propre et bien entretenue", {RightLabel = "⇨ ~g~Choisir"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('polemploi:eboueur')
                    PlaySoundFrontend(-1, "Hit_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", true)
                    Citizen.Wait(1000)
                    ESX.ShowNotification('Vous êtes maintenant ~b~Eboueur.')
                end
            end)

        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('joblisting', 'wl'), true, true, true, function()

            RageUI.Button("Policier", "Tu as envie de protéger la ville et c'est citoyen ? Deviens ~b~Policier", {RightLabel = "☛ ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    ESX.ShowAdvancedNotification("Comment accéder au travail ?", "Pôle-Emploi", "Pour rejoindre ce métier je t'invite à rejoindre le discord: ~g~https://discord.gg/Y9yZMEdqy2", "CHAR_HUMANDEFAULT", 1)
                end
            end)
            RageUI.Button("Norauto", "Tu adores réparer et entretenir des véhicules ? Deviens ~b~Mécano", {RightLabel = "🔧 ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment accéder au travail ?", "Pôle-Emploi", "Pour rejoindre ce métier je t'invite à rejoindre le discord: ~g~https://discord.gg/Y9yZMEdqy2", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("Concessionnaire", "Tu t'y connais en véhicule et tu adore en parler aux autres ? Deviens Concessionnaire", {RightLabel = "🚗 ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment accéder au travail ?", "Pôle-Emploi", "Pour rejoindre ce métier je t'invite à rejoindre le discord: ~ghttps://discord.gg/Y9yZMEdqy2", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("EMS", "Ton but est de sauvé des vies et guérir les bobos ? Deviens ~b~Ambulancier ?", {RightLabel = "🚑 ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment accéder au travail ?", "Pôle-Emploi", "Pour rejoindre ce métier je t'invite à rejoindre le discord: ~g~https://discord.gg/Y9yZMEdqy2", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("Gendarme", "Tu souhaites protéger la ville et les citoyens ? Rentre dans un corp de l'armée et deviens Gendarme", {RightLabel = "🚓 ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment accéder au travail ?", "Pôle-Emploi", "Pour rejoindre ce métier je t'invite à rejoindre le discord: ~g~https://discord.gg/Y9yZMEdqy2", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("Agent Immobilier", "Passionnés par les maisons et doté d'un bon relationnel ? Deviens ~b~Agent Immobilier", {RightLabel = "🏠 ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment accéder au travail ?", "Pôle-Emploi", "Pour rejoindre ce métier je t'invite à rejoindre le discord: ~g~https://discord.gg/Y9yZMEdqy2", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("Taxi", "Tu aimes manger des kilomètres de béton ? Deviens ~b~Taxi / Uber", {RightLabel = "🚖 ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment accéder au travail ?", "Pôle-Emploi", "Pour rejoindre ce métier je t'invite à rejoindre le discord: ~g~https://discord.gg/Y9yZMEdqy2", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("Vigneron", "Fan de grand cru, tu à toujours rêver de travailler la terre ? Deviens ~b~Vigneron", {RightLabel = "🍇 ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment accéder au travail ?", "Pôle-Emploi", "Pour rejoindre ce métier je t'invite à rejoindre le discord: ~g~https://discord.gg/Y9yZMEdqy2", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("Unicorn", "Tu as l'esprit festif et le sens de l'organisation ? Travail en ~b~boîte de nuit", {RightLabel = "🎇 ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment accéder au travail ?", "Pôle-Emploi", "Pour rejoindre ce métier je t'invite à rejoindre le discord: ~g~https://discord.gg/Y9yZMEdqy2", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("Transporteur", "Tu souhaites venir en aide au entreprise de ta ville ? Deviens ~b~Transporteur", {RightLabel = "🚐 ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment accéder au travail ?", "Pôle-Emploi", "Pour rejoindre ce métier je t'invite à rejoindre le discord: ~g~https://discord.gg/Y9yZMEdqy2", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("McDonalds", "Tu adores la friture ? Viens travailler au ~b~McDonalds", {RightLabel = "🍔 ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment accéder au travail ?", "Pôle-Emploi", "Pour rejoindre ce métier je t'invite à rejoindre le discord: ~g~https://discord.gg/Y9yZMEdqy2", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("Banquier", "Doté d'un bon sens de l'expertise ? Deviens ~b~Banquier(e)", {RightLabel = "💰 ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                   ESX.ShowAdvancedNotification("Comment accéder au travail ?", "Pôle-Emploi", "Pour rejoindre ce métier je t'invite à rejoindre le discord: ~g~https://discord.gg/Y9yZMEdqy2", "CHAR_HUMANDEFAULT", 1)
               end
            end)
            RageUI.Button("Tabagiste", "Envie de farm le tabac ? Deviens ~~b~Tabagiste", {RightLabel = "🚬 ~b~Sélectionné"}, true, function(Hovered, Active, Selected)
            	if (Selected) then
            		ESX.ShowAdvancedNotification("Comment accéder au travail ?", "Pôle-Emploi", "Pour rejoindre ce métier je t'invite à rejoindre le discord: ~g~https://discord.gg/Y9yZMEdqy2", "CHAR_HUMANDEFAULT", 1)
            	end
            end)
        end, function()
        end)

            RageUI.IsVisible(RMenu:Get('joblisting', 'leave'), true, true, true, function()
                RageUI.Button("Chômeur | Premier Job", "", {RightLabel = "❌ ~b~Choisir"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                TriggerServerEvent('polemploi:chomeur1')
                PlaySoundFrontend(-1, "Hit_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", true)
                Citizen.Wait(1000)
                ESX.ShowNotification('Vous êtes maintenant au ~b~Chômage.')
                end
            end)
            RageUI.Button("Chômeur | Second Job", "", {RightLabel = "❌ ~b~Choisir"}, true, function(Hovered, Active, Selected)
                if (Selected) then
            TriggerServerEvent('polemploi:chomeur2')
            PlaySoundFrontend(-1, "Hit_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET", true)
            Citizen.Wait(1000)
            ESX.ShowNotification('Vous êtes maintenant au ~b~Chômage.')
            end
        end)
        end, function()
            end, 1)
    
            Citizen.Wait(0)
        end
    end)


    local position = {
        {x =  -268.74, y = -957.14, z = 30.22, }
    }    
    

    local blips = {
        {title="Pôle-Emploi", colour=30, id=525, x = -268.74, y = -957.14, z = 30.22}
    }
    
    Citizen.CreateThread(function()
        for _, info in pairs(blips) do
            info.blip = AddBlipForCoord(info.x, info.y, info.z)
            SetBlipSprite(info.blip, info.id)
            SetBlipDisplay(info.blip, 4)
            SetBlipScale(info.blip, 0.70)
            SetBlipColour(info.blip, info.colour)
            SetBlipAsShortRange(info.blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(info.title)
            EndTextCommandSetBlipName(info.blip)
        end
    end)
    

    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 5.0 then

                   RageUI.Text({
                        message = "Appuyez sur [~b~E~w~] pour accéder au ~b~Pôle-Emploi",
                        time_display = 1
                    })
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('joblisting', 'main'), not RageUI.Visible(RMenu:Get('joblisting', 'main')))
                    end
                end
            end
        end
    end)


    Citizen.CreateThread(function()
        local hash = GetHashKey("ig_sol")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "ig_sol", -268.74, -957.14, 30.22, 222.72, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
    end)