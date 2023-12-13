local kenevirIslemleri = {}

function kenevirEkmeyeBasla(player)
    outputChatBox("Kenevir ekimi başladi!", player, 0, 255, 0)
    local x, y, z = getElementPosition(player)
    local kenevirObjesi = createObject(2649, x, y, z)
    kenevirIslemleri[player] = kenevirObjesi
    setTimer(hasatTamamlandi, 5000, 1, player)  
end

function hasatTamamlandi(player)
    local kenevirObjesi = kenevirIslemleri[player]
    if kenevirObjesi and isElement(kenevirObjesi) then
        destroyElement(kenevirObjesi)
        outputChatBox("Kenevir hasati tamamlandi!", player, 0, 255, 0)
        kenevirIslemleri[player] = nil
    end
end


addCommandHandler("kenevirek", function(player, command)
    kenevirEkmeyeBasla(player)
end)
