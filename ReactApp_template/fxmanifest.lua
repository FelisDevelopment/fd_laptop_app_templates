fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'

description "Laptop Vue Template"
author "Felis Development"
version '1.0.0'
repository 'https://github.com/FelisDevelopment/fd_laptop_app_templates'

dependencies {
    '/server:5104',
    '/onesync',
    'fd_laptop'
}

files {
    'web/build/index.html',
    'web/build/**/*',
}

ui_page 'web/dist/index.html'

client_script "client.lua"
server_script "server.lua"
