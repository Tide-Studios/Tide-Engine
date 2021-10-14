Config = {}
--- Config Down Below ---
title = "Test" --- Your Title
enabledBeta = false -- Enables Beta
VSYNC = 0 -- Sets vertical synchronization mode.
--- returns the config

love.window.setVSync(VSYNC)
love.window.setTitle("Tide Engine v.0.1["..title.."]")
return Config