local plr = game.Players.LocalPlayer
pcall(function() 
local Lighting = game.Lighting 
Lighting.GlobalShadows = false 
Lighting.FogEnd = 9e9 
Lighting.ShadowSoftness = 0 
local Lighting = game.Lighting 
for k,v in Lighting:GetChildren() do v:Destroy() end 
sethiddenproperty(Lighting, "Technology", 2) 
settings().Rendering.QualityLevel = 1 
settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level04 
for k,v in game:GetService("MaterialService"):GetChildren() do v:Destroy() end 
--game:GetService("MaterialService").Use2022Materials = false 
workspace.ALWAYS_RENDERING:Destroy() 

end) 

if plr.PlayerScripts:FindFirstChild("Parallel Pet Actors") then 
plr.PlayerScripts:FindFirstChild("Parallel Pet Actors"):Destroy() 
end 
pcall(function() 
plr.PlayerScripts.Scripts:Destroy() 
end) 
pcall(function() 
for k,v in getrunningscripts() do pcall(function() v.Disabled = true end) v:Destroy() end 
end) 
pcall(function() 
for k,v in game:GetDescendants() do 
if v:IsA("RemoteEvent") then 
pcall(function() 
for k,v in getconnections(v.OnClientEvent) do 
if getfenv(v.Function).script ~= script then v:Disable() end 
end 
end) 
end 
end 
end) 
for k,v in plr.PlayerGui:GetChildren() do 
v:Destroy() 
end
