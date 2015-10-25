-------------------------------------
-- Code generated by DKR QT to Lua 0.1.7 --
-- Source: asking.ui --
-- Date:  31/10/2012 - 13:29:14 --
-------------------------------------

function askCreate(askTitle, askAcceptText, askRefuseText, askShowText, askAcceptFunction, askRefuseFunction)
	showCursor(true)
	local gui = {}
	gui._placeHolders = {}
	
	local screenWidth, screenHeight = guiGetScreenSize()
	local windowWidth, windowHeight = 393, 172
	local left = screenWidth/2 - windowWidth/2
	local top = screenHeight/2 - windowHeight/2
	gui["_root"] = guiCreateWindow(left, top, windowWidth, windowHeight, askTitle, false)
	guiWindowSetSizable(gui["_root"], false)
	table.insert(allGuis,gui["_root"])
	gui["buttonAccept"] = guiCreateButton(10, 115, 171, 31, askAcceptText, false, gui["_root"])
	if askAcceptFunction then
		addEventHandler("onClientGUIClick", gui["buttonAccept"], askAcceptFunction, false)
	end
	addEventHandler("onClientGUIClick", gui["buttonAccept"], closeAskGUI, false)
	
	gui["buttonRefuse"] = guiCreateButton(210, 115, 171, 31, askRefuseText, false, gui["_root"])
	if askRefuseFunction then
		addEventHandler("onClientGUIClick", gui["buttonRefuse"], askRefuseFunction, false)
	end
	addEventHandler("onClientGUIClick", gui["buttonRefuse"], closeAskGUI, false)
	
	gui["askText"] = guiCreateLabel(10, 25, 371, 80, askShowText, false, gui["_root"])
	guiLabelSetHorizontalAlign(gui["askText"], "center", false)
	guiLabelSetVerticalAlign(gui["askText"], "center")
	
	return gui["buttonAccept"], gui["buttonRefuse"]
end

function closeAskGUI()
	destroyElement(getElementParent ( source))
	showCursor(false)
end
-- End of DKR QT to Lua code --








