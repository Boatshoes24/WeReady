SLASH_WEREADY_SLASHCMD1 = '/rc'
SLASH_WEREADY_SLASHCMD2 = '/rdy'
SLASH_WEREADY_SLASHCMD3 = '/readycheck'
SLASH_WEREADY_SLASHCMD4 = '/wr'



SlashCmdList['WEREADY_SLASHCMD'] = function(msg)
	
	local leader = UnitIsGroupLeader("player")
	local assist = UnitIsGroupAssistant("player")
	local inGroup = isGroup()
		
	if inGroup then
		if (leader or assist) and (msg == SLASH_WEREADY_SLASHCMD1 or SLASH_WEREADY_SLASHCMD2 or SLASH_WEREADY_SLASHCMD3 or SLASH_WEREADY_SLASHCMD4) then 
			DoReadyCheck()
	
		else
			print("You do not have lead/assist!")
	else
		print("You are not in a group!")
	end
	
end
