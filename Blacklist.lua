-- Blacklist Group Script Made by @ramdoguy3659#6613
 
bannedgroups = {0} --Please replace the 0 with the banned group id. If you would like to add more put {1, 2, 3} 
 
-- Actual Code --
 
function isInGroups(player)
    for _,v in pairs(bannedgroups) do
        if player:IsInGroup(v) then
            return true
 
        end
    end
end
 
game.Players.PlayerAdded:connect(function(player)
    if isInGroups(player) then player:remove() end
 
end)
 
 --This bans all players that are in the banned group using the group ID. If you need help be sure to check readme.md
 
