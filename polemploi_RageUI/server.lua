ESX              = nil
local PlayerData = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

------------------------ CHOMEUR-----------------------------
--JOB 1
RegisterNetEvent('polemploi:chomeur1')
AddEventHandler('polemploi:chomeur1', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.setJob("unemployed", 0)	
end)

--JOB 2
RegisterNetEvent('polemploi:chomeur2')
AddEventHandler('polemploi:chomeur2', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.setJob2("unemployed2", 0)	
end)



-------------------- JOB FA -------------------
--MINEUR
RegisterNetEvent('polemploi:miner')
AddEventHandler('polemploi:miner', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.setJob("miner", 0)	
end)

--COUTURIER
RegisterNetEvent('polemploi:tailor')
AddEventHandler('polemploi:tailor', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.setJob("tailor", 0)	
end)

--Eboueur
RegisterNetEvent('polemploi:eboueur')
AddEventHandler('polemploi:eboueur', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.setJob("eboueur", 0)	
end)
