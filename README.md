# VexitHub
```lua
Main.Create("Vech Hub")
Tab.TabCreate("Player")

Tab.ButtonCreate("Button", function()
	print("Pressed!") -- Callback is the script being used
end)

Tab.ToggleCreate("Toggle", function(Value)
		print("Toggled" .. " " .. tostring(Value) .. "!" ) -- Callback is the script being used
end)

Tab.SliderCreate("Slider", 0 , 100 , 16 , function(Value)
	    print(tostring(Value))
end)
```
