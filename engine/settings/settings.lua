Settings = {}
--- Config Down Below ---
title = "Default" --- Your Title
VSYNC = 0 -- Sets vertical synchronization mode.
APIKEY = "DevBeta" --- Enter your APIKey

-- Running Config Stuff (DO  NOT TOUCH)


love.window.setVSync(VSYNC)
love.window.setTitle("Tide Engine v.0.1["..title.."]")
return Settings