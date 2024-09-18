fx_version 'adamant'
game 'gta5'
lua54 "yes"
client_scripts {
    'config/config_shared.lua',
    'client/*.lua',

}
server_scripts {
    '@mysql-async/lib/MySQL.lua',
    "config/config_server.lua",
    'config/config_shared.lua',
    'server/*.lua',
}
ui_page {
    'view/index.html'
}

files {
    "view/**",
}

server_exports {
    "ArSa_Add_Coin_Player",
    "ArSa_remove_Coin_Player",
    "ArSa_Show_Coin_Player",
}



escrow_ignore {
    'config/config_shared.lua',
    "config/config_server.lua",
}
