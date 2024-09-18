config = {}


--[[
 ____  _____ _____   _____                                            _
/ ___|| ____|_   _| |  ___| __ __ _ _ __ ___   _____      _____  _ __| | __
\___ \|  _|   | |   | |_ | '__/ _` | '_ ` _ \ / _ \ \ /\ / / _ \| '__| |/ /
 ___) | |___  | |   |  _|| | | (_| | | | | | |  __/\ V  V / (_) | |  |   <
|____/|_____| |_|___|_|  |_|  \__,_|_| |_| |_|\___| \_/\_/ \___/|_|  |_|\_\
               |_____|
]]

config.Framework              = "ESX" -- QB   Soon

-->>>>>>>>>>>>>>>>Just ESX User <<<<<<<<<<<<<<<<--
config.ESX_Version            = 1                     -- [1] : old ESX (ESS) | [2] : New ESX (ESX Legacy)
-->Just ESS Or V1<--
config.ESX_EventShearedObject = 'esx:getSharedObject' -- Enter name event or server use Expoert nil



--[[
  ___   ___   ____      _____          _
 / _ \ / _ \ / ___|    | ____|_  _____| |__   __ _ _ __   __ _  ___ _ __
| | | | | | | |   _____|  _| \ \/ / __| '_ \ / _` | '_ \ / _` |/ _ \ '__|
| |_| | |_| | |__|_____| |___ >  < (__| | | | (_| | | | | (_| |  __/ |
 \___/ \___/ \____|    |_____/_/\_\___|_| |_|\__,_|_| |_|\__, |\___|_|
                                                         |___/
]]

-->>>>>coin ooc Exchanger<<<<<<--
config.Exchanger = true    -- if true Exchanger OOC In City Is active and Player Can Exchange Coin To Real Money If Off plaer not Can Change Coin to Real Money
config.TimeToGiveCoin = 1 -- what Time To Give Coin plyaer
config.numcoin = 5         -- Count Coin to Give Player In custom
config.name = 'Q-Coin'
config.chatname =
'Q-Coin'                   -- Set Coin Name
config.UnitPrice =
'toman'                    -- Set unit price
config.CoinPrice = 1500    -- Set Coin Price In OOC (EXIT Game)
config.minCoin = 50        -- min Excahnge Coin
config.maxCoin = 300       -- Max Excahge Coin
-- discord Setting for ooc excahnger
config.avatars = 'https://cdn.discordapp.com/attachments/1240443354102239302/1254868890157322250/helper.png?ex=66dfe9f9&is=66de9879&hm=dcb0bb03808291b08e8ed2c0e9ca4d1a2e06fd1e9ce179008e16cdb79d260765&'        -- set avatar in menu ooc excahnegr
config.ifTagAdmin = true   -- aftar ooc exchange request you mention
config.RoleID =
''                         -- role id to mention
-- Marker ooc Exchanger

config.location = {
    loc1 = { coords = vector3(243.2837, 224.324, 106.2869), type = 21, size = { 0.5, 0.5, 0.5 }, color = { 255, 255, 255, 255 }, dis = 10, name = 'Exchange', bid = 500, bcolor = 24 },

}


--[[
    _    _____ _  __    ____       _   _   _
   / \  |  ___| |/ /   / ___|  ___| |_| |_(_)_ __   __ _
  / _ \ | |_  | ' /    \___ \ / _ \ __| __| | '_ \ / _` |
 / ___ \|  _| | . \     ___) |  __/ |_| |_| | | | | (_| |
/_/   \_\_|   |_|\_\___|____/ \___|\__|\__|_|_| |_|\__, |
                  |_____|                          |___/
]]

config.EnableAfkKick = false -- AFK Kick
config.AFKKickWarn = false   -- Enable Warn Before Kick
config.TimeToAfkKick = 900  -- Afk Time To Kick (s)




