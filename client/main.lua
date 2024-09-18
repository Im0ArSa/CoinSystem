local v = {
    [1] = 0,
    [2] = "ESX",
    [3] = 1,
    [4] = nil,
    [5] = "es_extended",
    [6] = "QB",
    [7] = true,
    [8] = 60000,
    [9] = "ArSa_CoinSystem:addCoin",
    [10] = 4,
    [11] = 0.8,
    [12] = "blip",
    [13] = "blip",
    [14] = false,
    [15] = 5,
    [16] = 2,
    [17] = "Press [ E ] For open",
    [18] = 38,
    [19] = "show",
    [20] = "settings",
    [21] = 500,
    [22] = 3,
    [23] = "action",
    [24] = "hide",
    [25] = "ArSa_CoinSystem:UpdateCoinsClient",
    [26] = "sendData",
    [27] = "ArSa_CoinSystem:SendData",
    [28] = "ArSa_CoinSystem:UpdateCoinsClient",
    [29] = "notif",
    [30] = 1000,
    [31] = "chatMessage",
    [32] = "^3 Warning ",
    [33] = 255,
    [34] = " ^1 Shoma ^2",
    [35] = " ^1Saneie Digar Be Dalil AFK Bodan Kick Mishavid",
    [36] = "ArSa_CoinSystem:AFKKick",
    [37] = "ArSa_CoinSystem:AddSoundBox",
    [38] = "ArSa_CoinSystem:AddSoundBox",
    [39] = "play",
    [40] = "XFU5K470R 15 4W350M3. KR3D17 70 XFU5K470R!",
}

local kDOcd0_LufPwNeR19eQN = v[1];
if (config.Framework == v[2]) then
	if (config.ESX_Version == v[3]) then
		ESX = v[4];
		Citizen.CreateThread(function()
			while ESX == v[4] do
				TriggerEvent(config.ESX_EventShearedObject, function(Y)
					ESX = Y;
				end);
				Citizen.Wait(v[1]);
			end
		end);
	else
		ESX = exports[v[5]]:getSharedObject();
	end
elseif (config.Framework == v[6]) then
end
Citizen.CreateThread(function()
	while v[7] do
		Citizen.Wait(v[8]);
		kDOcd0_LufPwNeR19eQN = kDOcd0_LufPwNeR19eQN + v[3];
		if (kDOcd0_LufPwNeR19eQN == config.TimeToGiveCoin) then
			kDOcd0_LufPwNeR19eQN = v[1];
			TriggerServerEvent(v[9], config.numcoin);
		end
	end
end);
Citizen.CreateThread(function()
	for BpgZl, LyZrwQTdmz2YrsfT in pairs(config.location) do
		local jx0x4YZGkRe4LNCHkfo1R = AddBlipForCoord(LyZrwQTdmz2YrsfT.coords);
		SetBlipSprite(jx0x4YZGkRe4LNCHkfo1R, LyZrwQTdmz2YrsfT.bid);
		SetBlipDisplay(jx0x4YZGkRe4LNCHkfo1R, v[10]);
		SetBlipScale(jx0x4YZGkRe4LNCHkfo1R, v[11]);
		SetBlipColour(jx0x4YZGkRe4LNCHkfo1R, LyZrwQTdmz2YrsfT.bcolor);
		SetBlipAsShortRange(jx0x4YZGkRe4LNCHkfo1R, v[7]);
		BeginTextCommandSetBlipName(v[12]);
		AddTextEntry(v[13], LyZrwQTdmz2YrsfT.name);
		EndTextCommandSetBlipName(jx0x4YZGkRe4LNCHkfo1R);
	end
end);
local p1VVG = {active=v[14]};
Citizen.CreateThread(function()
	while v[7] do
		Citizen.Wait(v[15]);
		if config.Exchanger then
			if p1VVG.active then
				DrawMarker(p1VVG.type, p1VVG.coords, v[1], v[1], v[1], v[1], v[1], v[1], p1VVG.sizeX, p1VVG.sizeY, p1VVG.sizeZ, p1VVG.colorR, p1VVG.colorG, p1VVG.colorB, p1VVG.colorA, v[7], v[7], v[16], v[7], v[14], v[14], v[14]);
				if (GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-v[3])), p1VVG.coords, v[7]) <= v[16]) then
					ESX.ShowHelpNotification(v[17]);
					if IsControlJustPressed(v[1], v[18]) then
						SendNUIMessage({action=v[19],is=v[7]});
						SendNUIMessage({action=v[20],maxcoin=config.maxCoin,mincoin=config.minCoin,price=config.CoinPrice,avatar_url=config.avatars,unit=config.UnitPrice});
						SetNuiFocus(v[7], v[7]);
					end
				end
			else
				Citizen.Wait(v[21]);
			end
		end
	end
end);
function NearAny()
	local y8L64 = GetEntityCoords(PlayerPedId());
	for Hpb0mjFoO3zv9bAeH3k7E, RXl3 in pairs(config.location) do
		if (Vdist(RXl3.coords, y8L64) < RXl3.dis) then
			p1VVG = {active=v[7],coords=RXl3.coords,type=RXl3.type,sizeX=RXl3.size[v[3]],sizeY=RXl3.size[v[16]],sizeZ=RXl3.size[v[22]],colorR=RXl3.color[v[3]],colorG=RXl3.color[v[16]],colorB=RXl3.color[v[22]],colorA=RXl3.color[v[10]]};
			return;
		end
	end
	p1VVG = {active=v[14]};
end
Citizen.CreateThread(function()
	while v[7] do
		Citizen.Wait(v[21]);
		NearAny();
	end
end);
RegisterNuiCallback(v[23], function(O)
	if (O.action == v[24]) then
		SetNuiFocus(v[14], v[14]);
		TriggerServerEvent(v[25]);
	elseif (O.action == v[26]) then
		local zfSuqjR1I20ccAqN = {name=O.NAME,coins=tonumber(O.COIN),card_name=O.Card_NAME,card_num=tonumber(O.CARD_NUM),phone=tonumber(O.PHONE)};
		TriggerServerEvent(v[27], zfSuqjR1I20ccAqN);
		TriggerServerEvent(v[28]);
	elseif (O.action == v[29]) then
		ESX.ShowNotification(O.msg);
	end
end);
Citizen.CreateThread(function()
	while v[7] do
		Wait(v[30]);
		if config.EnableAfkKick then
			local AWOVu2RY9qTl = GetPlayerPed(-v[3]);
			if AWOVu2RY9qTl then
				local hLb2bju5T3U = GetEntityCoords(AWOVu2RY9qTl, v[7]);
				if (hLb2bju5T3U == prevPos) then
					if (time > v[1]) then
						if (config.AFKKickWarn and (time == math.ceil(config.TimeToAfkKick / v[10]))) then
							TriggerEvent(v[31], v[32], {v[33],v[1],v[1]}, v[34] .. time .. v[35]);
						end
						time = time - v[3];
					else
						TriggerServerEvent(v[36]);
					end
				else
					time = config.TimeToAfkKick;
				end
				prevPos = hLb2bju5T3U;
			end
		end
	end
end);
RegisterNetEvent(v[37]);
AddEventHandler(v[38], function(k, UVZnhvShYeKWm2ycNOT)
	SendNUIMessage({action=v[39],url=k,volume=UVZnhvShYeKWm2ycNOT});
end);