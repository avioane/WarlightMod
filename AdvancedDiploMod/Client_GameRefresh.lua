require('History');
function Client_GameRefresh(game)
	local Nachricht = "";
  	if(Mod.PlayerGameData.Peaceoffers~=nil)then
    		if(tablelength(Mod.PlayerGameData.Peaceoffers)>0)then
    			Nachricht = Nachricht .. "\n" .. 'You have ' .. tablelength(Mod.PlayerGameData.Peaceoffers) .. ' open peace requests';
   		end
  	end
  	if(Mod.PlayerGameData.Allyoffers~=nil)then
    		if(stringtotable(Mod.PlayerGameData.AllyOffers)>0)then
      			Nachricht = Nachricht .. "\n" .. 'You have ' .. tablelength(Mod.PlayerGameData.Allyoffers) .. ' open ally requests';
    		end
 	 end
  	if(Mod.PlayerGameData.Terrselloffers~=nil)then
    		if(stringtotable(Mod.PlayerGameData.Terrselloffers)>0)then
      			Nachricht = Nachricht .. "\n" .. 'You have ' .. tablelength(Mod.PlayerGameData.Terrselloffers) .. ' open territory tradement requests';
    		end
  	end
	ShowHistory(Mod.PlayerGameData.NeueNachrichten,game,Nachricht);
end
