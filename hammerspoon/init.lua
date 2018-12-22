--[ toggle window sizing --]
units = {
  right25       = { x = 0.75, y = 0.00, w = 0.25, h = 1.00 },
  right50       = { x = 0.50, y = 0.00, w = 0.50, h = 1.00 },
  right75       = { x = 0.25, y = 0.00, w = 0.75, h = 1.00 },
  left25       = { x = 0.00, y = 0.00, w = 0.25, h = 1.00 },
  left50       = { x = 0.00, y = 0.00, w = 0.50, h = 1.00 },
  left75       = { x = 0.00, y = 0.00, w = 0.75, h = 1.00 },
  top50         = { x = 0.00, y = 0.00, w = 1.00, h = 0.50 },
  bot50         = { x = 0.00, y = 0.50, w = 1.00, h = 0.50 },
  maximum       = { x = 0.00, y = 0.00, w = 1.00, h = 1.00 }
}
toggle = 0

function toggleRight()
	unitSize = units.right25
	if( toggle == 1 )
	then
		unitSize = units.right50
		toggle = toggle + 1
	elseif( toggle == 2 )
	then
		unitSize = units.right75
		toggle = 0
	else
		toggle = toggle + 1
	end
	hs.window.focusedWindow():move(unitSize,    nil, true) 
end

function toggleLeft()
	unitSize = units.left25
	if( toggle == 1 )
	then
		unitSize = units.left50
		toggle = toggle + 1
	elseif( toggle == 2 )
	then
		unitSize = units.left75
		toggle = 0
	else
		toggle = toggle + 1
	end
	hs.window.focusedWindow():move(unitSize,    nil, true) 
end

mash = { 'option', 'ctrl', 'cmd' }

hs.hotkey.bind(mash, 'right', toggleRight)
hs.hotkey.bind(mash, 'left', toggleLeft)
hs.hotkey.bind(mash, 'j', function() hs.window.focusedWindow():move(units.right75,    nil, true) end)

hs.hotkey.bind(mash, 'm', function() hs.window.focusedWindow():move(units.maximum,    nil, true) end)

