local UIS = game:GetService("UserInputService")

local Main = {}
function Main.Create(Title)

	local VexitUI = Instance.new("ScreenGui")
	VexitUI.Name = "Vexit UI"
	VexitUI.Parent = game.Players.LocalPlayer.PlayerGui



	local Toolbar = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local SettingsButton = Instance.new("ImageButton")
	local Tabs = Instance.new("Folder")
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local ScrollingFrame = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")

	
	--Properties:

	Toolbar.Name = "Toolbar"
	Toolbar.Parent =  game.Players.LocalPlayer.PlayerGui["Vexit UI"]
	Toolbar.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	Toolbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Toolbar.BorderSizePixel = 0
	Toolbar.Position = UDim2.new(0.0412436537, 0, 0.8984375, 0)
	Toolbar.Size = UDim2.new(0, 370, 0, 34)

	UICorner.Parent = Toolbar

	Tabs.Name = "Tabs"
	Tabs.Parent = game.Players.LocalPlayer.PlayerGui["Vexit UI"].Toolbar


	SettingsButton.Name = "SettingsButton"
	SettingsButton.Parent = Toolbar
	SettingsButton.BackgroundTransparency = 1.000
	SettingsButton.LayoutOrder = 1
	SettingsButton.Position = UDim2.new(0.905405402, 0, 0.131808624, 0)
	SettingsButton.Size = UDim2.new(0, 25, 0, 25)
	SettingsButton.ZIndex = 2
	SettingsButton.Image = "rbxassetid://3926307971"
	SettingsButton.ImageRectOffset = Vector2.new(324, 124)
	SettingsButton.ImageRectSize = Vector2.new(36, 36)
   

	--Properties:

	ScrollingFrame.Parent = game.Players.LocalPlayer.PlayerGui["Vexit UI"].Toolbar.Tabs
	ScrollingFrame.Active = true
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingFrame.BackgroundTransparency = 1.000
	ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0.022, 0,0.132, 0)
	ScrollingFrame.Size = UDim2.new(0, 326,0, 29)
    ScrollingFrame.ClipsDescendants = false
    ScrollingFrame.ScrollingDirection = Enum.ScrollingDirection.X
    

	UIListLayout.Parent = ScrollingFrame
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder


	-- Scripts:

	local function XNAPOB_fake_script() -- Toolbar.UIDrag 
		local script = Instance.new('LocalScript', Toolbar)

		local UIS = game:GetService('UserInputService')
		local frame = script.Parent
		local dragToggle = nil
		local dragSpeed = 0.25
		local dragStart = nil
		local startPos = nil

		local function updateInput(input)
			local delta = input.Position - dragStart
			local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
		end

		frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
				dragToggle = true
				dragStart = input.Position
				startPos = frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)

		UIS.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragToggle then
					updateInput(input)
				end
			end
		end)
	end


	coroutine.wrap(XNAPOB_fake_script)()
end

local Tab = {}
function Tab.TabCreate(Name, Image)
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local TabOpen = Instance.new("ImageButton")
	local TabFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Functions = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
   
	--Properties:

	TabOpen.Name = "TabOpen"
	TabOpen.Parent = game.Players.LocalPlayer.PlayerGui["Vexit UI"].Toolbar.Tabs.ScrollingFrame
	TabOpen.BackgroundTransparency = 1.000
	TabOpen.LayoutOrder = 2
	TabOpen.Position = UDim2.new(0.0324324369, 0, 0.117647052, 0)
	TabOpen.Size = UDim2.new(0, 25, 0, 25)
	TabOpen.ZIndex = 2
	TabOpen.Image = "rbxassetid://3926305904"
	TabOpen.ImageRectOffset = Vector2.new(964, 204)
	TabOpen.ImageRectSize = Vector2.new(36, 36)

	TabFrame.Name = "TabFrame"
	TabFrame.Parent = TabOpen
	TabFrame.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
	TabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabFrame.BorderSizePixel = 0
	TabFrame.Position = UDim2.new(-0.479999989, 0, -11.9200001, 0)
	TabFrame.Size = UDim2.new(0, 370, 0, 278)
    

	UICorner.Parent = TabFrame

	Functions.Name = "Functions"
	Functions.Parent = TabFrame
	Functions.Active = true
	Functions.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Functions.BackgroundTransparency = 1.000
	Functions.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Functions.BorderSizePixel = 0
	Functions.Size = UDim2.new(0, 370, 0, 278)
	Functions.ScrollBarThickness = 0

	UIListLayout.Parent = Functions
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 15)

	-- Scripts:

	local function QWPG_fake_script()
		local script = Instance.new('LocalScript', TabOpen)

		local ScrollingFrame = game.Players.LocalPlayer.PlayerGui["Vexit UI"].Toolbar.Tabs.ScrollingFrame:GetChildren()

		local Button = script.Parent
		local ONorOFF = false

		Button.Activated:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 then
				if ONorOFF == false then
					ONorOFF = true

					for index, value in ipairs(ScrollingFrame) do
						if value.Name == "TabOpen" then
							value.TabFrame.Visible = false
						end 
					end




					if Button.TabFrame.Visible == true then 
						Button.TabFrame.Visible = false
					elseif Button.TabFrame.Visible == false then
						Button.TabFrame.Visible = true
					end


					ONorOFF = false
				end
			end
		end)
	end
	coroutine.wrap(QWPG_fake_script)()


end

function Tab.ButtonCreate(Text, Callback)
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local Button = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local ClickImage = Instance.new("ImageLabel")

	--Properties:

	Button.Name = "Button"
	Button.Parent = game.Players.LocalPlayer.PlayerGui["Vexit UI"].Toolbar.Tabs.ScrollingFrame.TabOpen.TabFrame.Functions
	Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(0.0783783346, 0, 0, 0)
	Button.Size = UDim2.new(0, 360, 0, 26)
	Button.Font = Enum.Font.Gotham
	Button.TextColor3 = Color3.fromRGB(0, 0, 0)
	Button.TextSize = 22.000
	Button.TextXAlignment = Enum.TextXAlignment.Left
    Button.FontFace.Weight = Enum.FontWeight.Bold
    Button.FontFace.Style = Enum.FontStyle.Normal
    Button.Text = " " .. Text

	UICorner.CornerRadius = UDim.new(0, 6)
	UICorner.Parent = Button

	ClickImage.Name = "ClickImage"
	ClickImage.Parent = Button
	ClickImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ClickImage.BackgroundTransparency = 1.000
	ClickImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ClickImage.BorderSizePixel = 0
	ClickImage.Position = UDim2.new(0.930555582, 0, 0.192307696, 0)
	ClickImage.Size = UDim2.new(0, 15, 0, 15)
	ClickImage.Image = "rbxassetid://3926305904"
	ClickImage.ImageRectOffset = Vector2.new(204, 964)
	ClickImage.ImageRectSize = Vector2.new(36, 36)
    
	Button.FontFace.Weight = Enum.FontWeight.Bold
    
	-- Scripts:

	local function QCEMTVY_fake_script() -- Button.LocalScript 
		local script = Instance.new('LocalScript', Button)


		local Button = script.Parent
		local ONorOFF = false

		Button.Activated:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 then
				if ONorOFF == false then
					ONorOFF = true

                    Callback()					

					ONorOFF = false
				end
			end
		end)
	end
	coroutine.wrap(QCEMTVY_fake_script)()
	Button.FontFace.Weight = Enum.FontWeight.Bold
	Button.Font = Enum.Font.GothamBold
end

function Tab.ToggleCreate(Text, Callback)
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local Toggle = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local ToggleFrame = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Button = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")

	--Properties:

	Toggle.Name = "Toggle"
	Toggle.Parent = game.Players.LocalPlayer.PlayerGui["Vexit UI"].Toolbar.Tabs.ScrollingFrame.TabOpen.TabFrame.Functions
	Toggle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Toggle.BorderSizePixel = 0
	Toggle.Position = UDim2.new(0, 0, 0.255395681, 0)
	Toggle.Size = UDim2.new(0, 360, 0, 26)

	UICorner.Parent = Toggle
	UICorner.CornerRadius = UDim.new(0, 6)

	TextLabel.Parent = Toggle
	TextLabel.Active = true
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.00833333377, 0, 0.0769230798, 0)
	TextLabel.Size = UDim2.new(0, 277, 0, 24)
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.TextSize = 22.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	ToggleFrame.Name = "ToggleFrame"
	ToggleFrame.Parent = Toggle
	ToggleFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	ToggleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ToggleFrame.BorderSizePixel = 0
	ToggleFrame.Position = UDim2.new(0.722222209, 0, 0, 0)
	ToggleFrame.Size = UDim2.new(0, 90, 0, 26)

	UICorner_2.CornerRadius = UDim.new(1, 1)
	UICorner_2.Parent = ToggleFrame

	Button.Name = "Button"
	Button.Parent = ToggleFrame
	Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(0.0890000015, 0, 0, 0)
	Button.Size = UDim2.new(0, 25, 0, 25)
	Button.Font = Enum.Font.SourceSans
	Button.Text = ""
	Button.TextColor3 = Color3.fromRGB(0, 0, 0)
	Button.TextSize = 14.000

	UICorner_3.CornerRadius = UDim.new(10, 10)
	UICorner_3.Parent = Button

	-- Scripts:

	local function SCALMON_fake_script() -- Button.LocalScript 
		local script = Instance.new('LocalScript', Button)
 
		local TweenService = game:GetService("TweenService")

		local ONorOFF = false

		local OnColor = Color3.new(0.0941176, 0.380392, 1)
		local OffColor = Color3.new(1, 0, 0)

		local OffPos = UDim2.new(0.089, 0, 0, 0)
		local OnPos = UDim2.new(0.589, 0, 0, 0)

		local Button = script.Parent

		Button.Activated:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 then
				if ONorOFF == false then
					ONorOFF = true

					Button.BackgroundColor3 = OnColor

					-- Perform the tween animation to move the button
					local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
					local tween = TweenService:Create(Button, tweenInfo, {Position = OnPos})
					tween:Play()

                   Callback(true)

				else
					ONorOFF = false

					Button.BackgroundColor3 = OffColor

					-- Perform the tween animation to move the button
					local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
					local tween = TweenService:Create(Button, tweenInfo, {Position = OffPos})
					tween:Play()

					-- Call the callback function
					Callback(false)
				end
			end
		end)

	end
	coroutine.wrap(SCALMON_fake_script)()

end

function Tab.SliderCreate(Text, Min, Max, Default, Callback)
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local Slider = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local SliderFrame = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Fill = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")

	--Properties:

	Slider.Name = "Slider"
	Slider.Parent = game.Players.LocalPlayer.PlayerGui["Vexit UI"].Toolbar.Tabs.ScrollingFrame.TabOpen.TabFrame.Functions
	Slider.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Slider.BorderSizePixel = 0
	Slider.Position = UDim2.new(0, 0, 0.255395681, 0)
	Slider.Size = UDim2.new(0, 360, 0, 26)

	UICorner.Parent = Slider
    UICorner.CornerRadius = UDim.new(0, 6)
 
	SliderFrame.Name = "SliderFrame"
	SliderFrame.Parent = Slider
	SliderFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	SliderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SliderFrame.BorderSizePixel = 0
	SliderFrame.Position = UDim2.new(0.23888889, 0, 0, 0)
	SliderFrame.Size = UDim2.new(0, 264, 0, 26)

	UICorner_2.CornerRadius = UDim.new(1, 1)
	UICorner_2.Parent = SliderFrame

	Fill.Name = "Fill"
	Fill.Parent = SliderFrame
	Fill.BackgroundColor3 = Color3.fromRGB(0, 153, 255)
	Fill.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fill.BorderSizePixel = 0
	Fill.Position = UDim2.new(0.0190000236, 0, 0.192307696, 0)
	Fill.Size = UDim2.new(0, 247, 0, 18)
	Fill.Font = Enum.Font.SourceSans
	Fill.Text = " "
	Fill.TextColor3 = Color3.fromRGB(0, 0, 0)
	Fill.TextSize = 14.000

	UICorner_3.CornerRadius = UDim.new(1, 1)
	UICorner_3.Parent = Fill

	TextLabel.Parent = Slider
	TextLabel.Active = true
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.00833333377, 0, 0.0769230798, 0)
	TextLabel.Size = UDim2.new(0, 74, 0, 24)
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.Text =  Text 
	TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.TextSize = 22.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	-- Scripts:

	local function DXRB_fake_script() -- Fill.LocalScript 
		local script = Instance.new('LocalScript', Fill)

		local Slider = script.Parent

		local TweenService = game:GetService("TweenService")

		local Mouse = game.Players.LocalPlayer:GetMouse()

		local MinValue = Min
		local MaxValue = Max
		local DefaultValue = Default

		local MinSliderSize = UDim2.new(0, 10, 0, 18)
		local MaxSliderSize = UDim2.new(0, 253, 0, 18)
		local DefaultSliderSize = UDim2.new(0, 100, 0, 18) -- Set the default size here

		local MouseX = Mouse.X

		Slider.InputBegan:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 then
				local startPos = Input.Position.X
				local startSize = Slider.Size.X.Offset

				local connection
				connection = Mouse.Move:Connect(function()
					local delta = Mouse.X - startPos
					local newValue = math.clamp(startSize + delta, 0, MaxSliderSize.X.Offset)

					local percentage = newValue / MaxSliderSize.X.Offset
					local value = math.floor(MinValue + (MaxValue - MinValue) * percentage)

					Slider.Size = UDim2.new(0, newValue, 0, 18)

					Callback(value)
				end)

				Input.Changed:Connect(function()
					if Input.UserInputState == Enum.UserInputState.End then
						connection:Disconnect()
					end
				end)
			end
		end)

	end
	coroutine.wrap(DXRB_fake_script)()

end




