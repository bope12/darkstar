-----------------------------------
-- Area: Mhaura
--  NPC: Jikka-Abukka
-- Involved in Quest: Riding on the Clouds
-- !pos -13 -15 58 249
-----------------------------------
require("scripts/globals/keyitems");
require("scripts/globals/quests");
local ID = require("scripts/zones/Mhaura/IDs");
-----------------------------------

function onTrade(player,npc,trade)

    if (player:getQuestStatus(JEUNO,dsp.quest.id.jeuno.RIDING_ON_THE_CLOUDS) == QUEST_ACCEPTED and player:getVar("ridingOnTheClouds_3") == 8) then
        if (trade:hasItemQty(1127,1) and trade:getItemCount() == 1) then -- Trade Kindred seal
            player:setVar("ridingOnTheClouds_3",0);
            player:tradeComplete();
            player:addKeyItem(dsp.ki.SOMBER_STONE);
            player:messageSpecial(ID.text.KEYITEM_OBTAINED,dsp.ki.SOMBER_STONE);
        end
    end

end;

function onTrigger(player,npc)
    player:startEvent(600);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;