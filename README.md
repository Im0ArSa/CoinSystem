# Coin System Config

### Server_Config

```
sv_config.WebHookExchange : The WebHook For Send OOC_Exchanger Log




sv_config.AccessToCommand = : The Lowest Level Of Permission To Use Admin Commands 



sv_config.volumeSound = : Add/Remove Coin Sound Volume (0 = Off)
sv_config.addCoinSound : Add Coin Sound (mp3,...)
sv_config.RemoveCoinSound : Remove Coin Sound (mp3,...)

```

### Shared_Config

```

config.Framework : "ESX" -- QB  Maybe Soon ...

config.ESX_Version : [1] : old ESX (ESS) | [2] : New ESX (ESX Legacy)
config.ESX_EventShearedObject : ESX Get Shared Object Event Name

config.Exchanger : OOC Coin Exchanger
config.TimeToGiveCoin : Time To Give Coin (Minutes)
config.numcoin : Count Of Coins To Give Per (TimeToGiveCoin)
config.name : Coin Name In IC
config.chatname : Coin Name In Chat
config.UnitPrice : OOC Exchanger UnitPrice (Toman\Rial\Dollar)
config.CoinPrice : Set Coin Price In OOC 
config.minCoin : Minimum Coin To Exchange
config.maxCoin : Maximum Coin To Exchange
config.avatars : Avatar For WebHook
config.ifTagAdmin : Tag Admin In WebHook ?
config.RoleID : Admin Role Id To Tag (ifTagAdmin)
config.location : Coords To Set Exchanger Blip


config.EnableAfkKick : Kick Player On AFK ?
config.AFKKickWarn : Warn Before Kick ?
config.TimeToAfkKick : AFK Time To Kick In (Second)

config.debug : Just For Developers

```
### DataBase
Run This Sql Query In Your ESX Server Database
```
ALTER TABLE `users` ADD COLUMN `coin` INT(255) DEFAULT "0";
```

