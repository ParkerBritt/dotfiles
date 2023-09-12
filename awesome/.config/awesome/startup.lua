local awful = require("awful")

local function run_once(cmd)
    awful.spawn.easy_async_with_shell("pgrep -u $USER -fx '" .. cmd .. "'", function(stdout, stderr, reason, exit_code)
        if exit_code ~= 0 then
            awful.spawn.with_shell(cmd)
        end
    end)
end

run_once("/usr/lib/lxpolkit/lxpolkit")

awful.spawn.with_shell("picom --config ~/.config/picom/picom.conf")
-- awful.spawn.with_shell("nitrogen --restore")
awful.spawn.once("/home/parker/scripts/wallpaper/random-wallpaper.sh")
awful.spawn.once("polybar")
-- awful.spawn.with_shell("lxpolkit") old version for nobara
--awful.spawn.with_shell("/usr/lib/lxpolkit/lxpolkit")
-- awful.spawn.with_shell("$HOME/scripts/mouse-speed/mouse_speed.sh") -- run mouse speed fix

-- set rgb
awful.spawn.with_shell("openrgb --startminimized -p blue")

-- tag specific
-- awful.spawn.once("discord")
-- awful.spawn.once("spotify-launcher")
