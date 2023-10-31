-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

fx_version 'cerulean'
game 'gta5'
lua54 'yes'
description 'wasabi_tireslash - A target based tire slashing script.'
author 'wasabirobby#5110'
version '1.0.4'

client_scripts {
    "shared/utils.lua",
    'client/**.lua'
}

server_scripts {
    "shared/utils.lua",
    'server/**.lua',
}

shared_scripts {
    'config.lua',
    '@ox_lib/init.lua',
} 
