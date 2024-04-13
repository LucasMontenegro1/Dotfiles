-- Ejecuta el comando para construir ray-x/guihua.lua
os.execute("cd lua/fzy && make")

-- Devuelve la lista de dependencias
return {
    { "ray-x/guihua.lua" }, -- Dependencia: ray-x/guihua.lua
    {
        'ray-x/navigator.lua', -- Dependencia principal: ray-x/navigator.lua
        config = function()
            require('navigator').setup()
        end
    }
}
