-- Disable Chat Flash
-- Hooks into FCF_StartAlertFlash and immediately stops it.

local function StopFlash(self)
    if self then
        FCF_StopAlertFlash(self)
    end
end

-- Hook the function that starts the flash
hooksecurefunc("FCF_StartAlertFlash", StopFlash)