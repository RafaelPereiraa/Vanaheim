function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local targetId = item.itemid
	local eggStorage = player:getStorageValue(Storage.TibiaTales.AgainstTheSpiderCult)
	if targetId == 7585 then
		if eggStorage >= 1 and eggStorage < 5 then
			player:setStorageValue(Storage.TibiaTales.AgainstTheSpiderCult, math.max(1, eggStorage) + 1)
			Game.createMonster("Giant Spider", Position(33181, 31869, 12))
			toPosition:sendMagicEffect(CONST_ME_POFF)
			item:transform(targetId + 1)
			item:decay()
		else
			local spiderEggMonster = math.random(200)
			if spiderEggMonster == 1 then
				Game.createMonster("Giant Spider", Position(toPosition.x,toPosition.y,toPosition.z),true)
			elseif spiderEggMonster > 1 and spiderEggMonster < 70 then
				Game.createMonster("Spider", Position(toPosition.x,toPosition.y,toPosition.z),true)
			elseif spiderEggMonster > 69 and spiderEggMonster < 100 then
				Game.createMonster("Poison Spider", Position(toPosition.x,toPosition.y,toPosition.z),true)
			end
			toPosition:sendMagicEffect(CONST_ME_POFF)
			item:transform(targetId + 1)
			item:decay()
			return true
		end
	else
			local spiderEggMonster = math.random(200)
			if spiderEggMonster == 1 then
				Game.createMonster("Giant Spider", Position(toPosition.x,toPosition.y,toPosition.z),true)
			elseif spiderEggMonster > 1 and spiderEggMonster < 70 then
				Game.createMonster("Spider", Position(toPosition.x,toPosition.y,toPosition.z),true)
			elseif spiderEggMonster > 69 and spiderEggMonster < 100 then
				Game.createMonster("Poison Spider", Position(toPosition.x,toPosition.y,toPosition.z),true)
			end
			toPosition:sendMagicEffect(CONST_ME_POFF)
			item:transform(targetId - 1)
			item:decay()
	end
	return true
end
