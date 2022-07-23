---
--- Générer par zoyy0
--- Créé par zoyy0
--- DateHeure: 18/04/2021 02:40
---



---LoadingPrompt
---
--- Reference : zoyy0
---
---@param loadingText string
---@param spinnerType number
---@return void
function LoadingPrompt(loadingText, spinnerType)

    if IsLoadingPromptBeingDisplayed() then
        RemoveLoadingPrompt()
    end

    if (loadingText == nil) then
        BeginTextCommandBusyString(nil)
    else
        BeginTextCommandBusyString("STRING");
        AddTextComponentSubstringPlayerName(loadingText);
    end

    EndTextCommandBusyString(spinnerType)
end

---LoadingPromptHide
---
--- Reference : zoyy0
---
---@return void
function LoadingPromptHide()
    if IsLoadingPromptBeingDisplayed() then
        RemoveLoadingPrompt()
    end
end


