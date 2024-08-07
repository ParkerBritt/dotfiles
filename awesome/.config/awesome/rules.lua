local awful = require("awful")
local beautiful = require("beautiful")

return function(clientkeys, clientbuttons, tagnames)
	-- Define rules for windows
	local rules = {
	    -- All clients will match this rule.
	    { rule = { },
	      properties = { border_width = beautiful.border_width,
	                     border_color = beautiful.border_normal,
	                     focus = awful.client.focus.filter,
	                     raise = true,
	                     keys = clientkeys,
	                     buttons = clientbuttons,
	                     screen = awful.screen.preferred,
	                     placement = awful.placement.no_overlap+awful.placement.no_offscreen
	     }
	    },
	    -- Floating clients.
	    { rule_any = {
	        instance = {
	          "DTA",  -- Firefox addon DownThemAll.
	          "copyq",  -- Includes session name in class.
	          "pinentry",
	        },
	        class = {
	          "Arandr",
	          "Blueman-manager",
	          "Gpick",
	          "Kruler",
	          "MessageWin",  -- kalarm.
	          "Sxiv",
	          "Tor Browser", -- Needs a fixed window size to avoid fingerprinting by screen size.
	          "Wpa_gui",
	          "veromix",
	          "xtightvncviewer"},
	
	        -- Note that the name property shown in xprop might be set slightly after creation of the client
	        -- and the name shown there might not match defined rules here.
	        name = {
	          "Event Tester",  -- xev.
	        },
	        role = {
	          "AlarmWindow",  -- Thunderbird's calendar.
	          "ConfigManager",  -- Thunderbird's about:config.
	          "pop-up",       -- e.g. Google Chrome's (detached) Developer Tools.
	        }
	      },

	      properties = { floating = true }},
	
	    -- Add titlebars to normal clients and dialogs
	    { rule_any = {type = { "normal", "dialog" }
	      }, properties = { titlebars_enabled = false}
	    },

		-- Rule for Polybar
		{
			rule = { class = "Polybar" },
			properties = { border_width = 0, sticky = true, above = true, focusable = false, resizable = false }
		},	

	    -- Put windows in specfic tags
	    -- Discord
	    { rule = { class = "discord" },
	      properties = { screen = 1, tag = tagnames[3] } },
	
	    -- Steam
	    { rule = { class = "steam" },
	      properties = { screen = 1, tag = tagnames[4] } },
	
	    -- Spotify (Keeping the assumed class name here, but use xprop to verify the exact class if needed)
	    { rule = { class = "Spotify" },
	      properties = { screen = 1, tag = tagnames[5] } },
	
	    -- Houdini 
	    { rule = { class = "Houdini FX" },
	      properties = { screen = 1, tag = tagnames[6] } },

	      -- AT launcher Specific rule for "win6" of "com-atlauncher-App"
	      {
		    rule = { class = "com-atlauncher-App" },
		    callback = function (c)
		        if c.skip_taskbar then
		            c.floating = true
		        end
		    end
	      },


	}
	return rules
end



