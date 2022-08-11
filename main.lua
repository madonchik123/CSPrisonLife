local Inmates = game:GetService("Teams").Inmates
local Criminals = game:GetService("Teams").Criminals
local Players = game:GetService("Players")
local Client = Players.LocalPlayer

     local function GetTool(Name)
      local Tool = Client.Backpack:FindFirstChild(Name)
      return Tool or Client.Character:FindFirstChild(Name)
   end
   local function TeleportChar(TeleportLocation)
      -- // Vars
      local Character = Client.Character
      local HumanoidRootPart = Character.HumanoidRootPart
      local Humanoid = Character.Humanoid

      -- // Credits to Stefanuk12
      for i = 1, 3 do
         HumanoidRootPart.CFrame = TeleportLocation
         wait(0.25)
         Humanoid:EquipTool(GetTool("Fists"))
      end
   end
for i,v in pairs(game:GetService("Workspace").Map.Casino:GetChildren()) do
if v.Main.Screen.Attachment:FindFirstChild("ProximityPrompt") and v.Main.LED.Color ~= Color3.new(255,0,0) then
TeleportChar(v.Main.Screen.CFrame  + v.Main.Screen.CFrame.LookVector *2)
wait()
fireproximityprompt(v.Main.Screen.Attachment:FindFirstChild("ProximityPrompt"))
wait(1)
if v.Main:FindFirstChild("SlotCash") then
TeleportChar(v.Main.Screen.CFrame  + v.Main.Screen.CFrame.LookVector *2)
repeat wait() 
for z,x in pairs(v.Main.SlotCash:GetDescendants()) do
pcall(function()
if x.Parent.Name == "SlotCash" then
fireproximityprompt(x.Attachment.ProximityPrompt)
wait(0.1)
end
end)
end
until v.Main:FindFirstChild("SlotCash") == nil
end

end
end
