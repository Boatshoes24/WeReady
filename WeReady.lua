SLASH_WEREADY_SLASHCMD1 = '/rc'
SLASH_WEREADY_SLASHCMD2 = '/rdy'
SLASH_WEREADY_SLASHCMD3 = '/readycheck'


SlashCmdList['WEREADY_SLASHCMD'] = function(msg)
	
	leader = UnitIsGroupLeader("player")
	assist = UnitIsGroupAssistant("player")
		
	if (leader or assist) and (msg == SLASH_WEREADY_SLASHCMD1 or SLASH_WEREADY_SLASHCMD2 or SLASH_WEREADY_SLASHCMD3) then 
		DoReadyCheck()
	
	else 
		print("You do not have lead/assist!")
	end
	
end
