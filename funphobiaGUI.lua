--[[
	
	Gui2Lua Winning! ~ Ch0nky Code:tm:
	
	85 instances
	
	-> 10:07:2023 	-	fixed "Http requests can only be executed by game server" error when pressing "Play"
					-	fixed modulescripts's "script" variable not being set properly
					-	plugin will now retry fetching an api dump from the web if it did not fetch it successfully last time
					
					
	-> 26:07:2023 	-	plugin will now cache instance property lists (slight performance improvement)
					-	increased "max string length" threshold, plugin may generate less splits on large selections
	
]]--

local gui = 
{
	FUNPHOBIA = Instance.new("ScreenGui"),
	Main = Instance.new("Frame"),
	Drag = Instance.new("LocalScript"),
	UIStroke = Instance.new("UIStroke"),
	Control = Instance.new("LocalScript"),
	something = Instance.new("Sound"),
	speed = Instance.new("Sound"),
	key = Instance.new("Sound"),
	Walkie_Talkie_2_SFX_ = Instance.new("Sound"),
	code = Instance.new("Sound"),
	BillboardGui = Instance.new("BillboardGui"),
	d = Instance.new("Frame"),
	Bind = Instance.new("TextButton"),
	UIStroke_1 = Instance.new("UIStroke"),
	Toggle = Instance.new("TextButton"),
	UIStroke_2 = Instance.new("UIStroke"),
	UIStroke_3 = Instance.new("UIStroke"),
	ScrollingFrame = Instance.new("Frame"),
	UIStroke_4 = Instance.new("UIStroke"),
	Drag_1 = Instance.new("LocalScript"),
	PageOne = Instance.new("Frame"),
	Vehicle = Instance.new("Frame"),
	vehicleSpeed = Instance.new("TextBox"),
	UICorner = Instance.new("UICorner"),
	Bind_1 = Instance.new("TextButton"),
	UIStroke_5 = Instance.new("UIStroke"),
	Text = Instance.new("TextLabel"),
	UIStroke_6 = Instance.new("UIStroke"),
	Toggle_1 = Instance.new("TextButton"),
	UIStroke_7 = Instance.new("UIStroke"),
	UIStroke_8 = Instance.new("UIStroke"),
	UIGridLayout = Instance.new("UIGridLayout"),
	Gravity = Instance.new("Frame"),
	gravity = Instance.new("TextBox"),
	UICorner_1 = Instance.new("UICorner"),
	Bind_2 = Instance.new("TextButton"),
	UIStroke_9 = Instance.new("UIStroke"),
	Text_1 = Instance.new("TextLabel"),
	UIStroke_10 = Instance.new("UIStroke"),
	Toggle_2 = Instance.new("TextButton"),
	UIStroke_11 = Instance.new("UIStroke"),
	UIStroke_12 = Instance.new("UIStroke"),
	BringHoes = Instance.new("Frame"),
	Bind_3 = Instance.new("TextButton"),
	UIStroke_13 = Instance.new("UIStroke"),
	Toggle_3 = Instance.new("TextButton"),
	UIStroke_14 = Instance.new("UIStroke"),
	UIStroke_15 = Instance.new("UIStroke"),
	Loading = Instance.new("ImageLabel"),
	Idle = Instance.new("ImageLabel"),
	Boolets = Instance.new("Frame"),
	Bind_4 = Instance.new("TextButton"),
	UIStroke_16 = Instance.new("UIStroke"),
	Toggle_4 = Instance.new("TextButton"),
	UIStroke_17 = Instance.new("UIStroke"),
	UIStroke_18 = Instance.new("UIStroke"),
	Loading_1 = Instance.new("ImageLabel"),
	Idle_1 = Instance.new("ImageLabel"),
	Shop = Instance.new("Frame"),
	Bind_5 = Instance.new("TextButton"),
	UIStroke_19 = Instance.new("UIStroke"),
	Toggle_5 = Instance.new("TextButton"),
	UIStroke_20 = Instance.new("UIStroke"),
	UIStroke_21 = Instance.new("UIStroke"),
	Boss = Instance.new("Frame"),
	Bind_6 = Instance.new("TextButton"),
	UIStroke_22 = Instance.new("UIStroke"),
	Toggle_6 = Instance.new("TextButton"),
	UIStroke_23 = Instance.new("UIStroke"),
	UIStroke_24 = Instance.new("UIStroke"),
	ShowNukeItems = Instance.new("Frame"),
	Bind_7 = Instance.new("TextButton"),
	UIStroke_25 = Instance.new("UIStroke"),
	Toggle_7 = Instance.new("TextButton"),
	UIStroke_26 = Instance.new("UIStroke"),
	UIStroke_27 = Instance.new("UIStroke"),
	Loop = Instance.new("TextButton"),
	UIStroke_28 = Instance.new("UIStroke"),
	UICorner_2 = Instance.new("UICorner"),
	UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint"),
	Hello = Instance.new("TextLabel"),
	UIStroke_29 = Instance.new("UIStroke"),
	hubtext = Instance.new("TextButton"),
	UIAspectRatioConstraint_1 = Instance.new("UIAspectRatioConstraint"),
	Hub = Instance.new("ImageButton"),
}

gui.FUNPHOBIA.ScreenInsets = Enum.ScreenInsets.None
gui.FUNPHOBIA.ResetOnSpawn = false
gui.FUNPHOBIA.IgnoreGuiInset = true
gui.FUNPHOBIA.ClipToDeviceSafeArea = false
gui.FUNPHOBIA.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.FUNPHOBIA.Name = "FUNPHOBIA"
gui.FUNPHOBIA.DisplayOrder = 999999
gui.FUNPHOBIA.SafeAreaCompatibility = Enum.SafeAreaCompatibility.None
gui.FUNPHOBIA.Parent = game:GetService("CoreGui")

gui.Main.BorderSizePixel = 0
gui.Main.Size = UDim2.new(0.075, 0, 0.075, 0)
gui.Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Main.BackgroundTransparency = 0.5
gui.Main.Name = "Main"
gui.Main.Position = UDim2.new(0, -4, 0.7604, -67)
gui.Main.BackgroundColor3 = Color3.fromRGB(29, 29, 28)
gui.Main.Parent = gui.FUNPHOBIA

gui.Drag.Name = "Drag"
gui.Drag.Parent = gui.Main

gui.UIStroke.Name = "UIStroke"
gui.UIStroke.Thickness = 2
gui.UIStroke.Color = Color3.fromRGB(255, 255, 255)
gui.UIStroke.Parent = gui.Main

gui.Control.Name = "Control"
gui.Control.Parent = gui.Main

gui.something.Name = "something"
gui.something.RollOffMode = Enum.RollOffMode.InverseTapered
gui.something.SoundId = "rbxassetid://7940269002"
gui.something.Parent = gui.Control

gui.speed.Name = "speed"
gui.speed.RollOffMode = Enum.RollOffMode.InverseTapered
gui.speed.SoundId = "rbxassetid://8208591201"
gui.speed.Parent = gui.Control

gui.key.Name = "key"
gui.key.Volume = 8
gui.key.SoundId = "rbxassetid://9120458059"
gui.key.Parent = gui.Control

gui.Walkie_Talkie_2_SFX_.Name = "Walkie Talkie 2 (SFX)"
gui.Walkie_Talkie_2_SFX_.Volume = 0
gui.Walkie_Talkie_2_SFX_.SoundId = "rbxassetid://9120454415"
gui.Walkie_Talkie_2_SFX_.Parent = gui.Control

gui.code.Name = "code"
gui.code.Volume = 8
gui.code.SoundId = "rbxassetid://9120456238"
gui.code.Parent = gui.Control

gui.BillboardGui.AlwaysOnTop = true
gui.BillboardGui.Size = UDim2.new(11, 0, 5.5, 0)
gui.BillboardGui.ClipsDescendants = true
gui.BillboardGui.Active = true
gui.BillboardGui.Name = "BillboardGui"
gui.BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.BillboardGui.Parent = gui.Control

gui.d.BorderSizePixel = 0
gui.d.Size = UDim2.new(0.9, 0, 0.9, 0)
gui.d.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.d.BackgroundTransparency = 0.5
gui.d.Name = "d"
gui.d.Position = UDim2.new(0.0328079, 0, 0.0379654, 0)
gui.d.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
gui.d.Parent = gui.BillboardGui

gui.Bind.TextWrapped = true
gui.Bind.BorderSizePixel = 0
gui.Bind.TextScaled = true
gui.Bind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Bind.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Bind.TextColor3 = Color3.fromRGB(255, 255, 255)
gui.Bind.Position = UDim2.new(0.0396092, 0, 0.437344, 0)
gui.Bind.TextSize = 14
gui.Bind.Size = UDim2.new(0.906951, 0, 0.558335, 0)
gui.Bind.Name = "Bind"
gui.Bind.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Bind.Text = "v"
gui.Bind.BackgroundTransparency = 1
gui.Bind.Parent = gui.d

gui.UIStroke_1.Name = "UIStroke"
gui.UIStroke_1.Thickness = 2
gui.UIStroke_1.Transparency = 0.5
gui.UIStroke_1.Parent = gui.Bind

gui.Toggle.TextWrapped = true
gui.Toggle.BorderSizePixel = 0
gui.Toggle.TextScaled = true
gui.Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Toggle.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Toggle.TextColor3 = Color3.fromRGB(255, 0, 0)
gui.Toggle.Position = UDim2.new(0.0935583, 0, -0.00138394, 0)
gui.Toggle.TextSize = 14
gui.Toggle.Size = UDim2.new(0.802688, 0, 0.271298, 0)
gui.Toggle.Name = "Toggle"
gui.Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Toggle.Text = "Nuke Key"
gui.Toggle.BackgroundTransparency = 1
gui.Toggle.Parent = gui.d

gui.UIStroke_2.Name = "UIStroke"
gui.UIStroke_2.Thickness = 2
gui.UIStroke_2.Transparency = 0.5
gui.UIStroke_2.Parent = gui.Toggle

gui.UIStroke_3.LineJoinMode = Enum.LineJoinMode.Bevel
gui.UIStroke_3.Name = "UIStroke"
gui.UIStroke_3.Thickness = 2
gui.UIStroke_3.Color = Color3.fromRGB(255, 255, 255)
gui.UIStroke_3.Transparency = 0.3
gui.UIStroke_3.Parent = gui.d

gui.ScrollingFrame.Selectable = true
gui.ScrollingFrame.BorderSizePixel = 0
gui.ScrollingFrame.Size = UDim2.new(5.19259, 0, 3.35062, 0)
gui.ScrollingFrame.Active = true
gui.ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.ScrollingFrame.BackgroundTransparency = 0.5
gui.ScrollingFrame.Name = "ScrollingFrame"
gui.ScrollingFrame.Position = UDim2.new(1.57827, 0, -1.08097, 0)
gui.ScrollingFrame.SelectionGroup = true
gui.ScrollingFrame.BackgroundColor3 = Color3.fromRGB(29, 29, 28)
gui.ScrollingFrame.Parent = gui.Main

gui.UIStroke_4.LineJoinMode = Enum.LineJoinMode.Bevel
gui.UIStroke_4.Name = "UIStroke"
gui.UIStroke_4.Thickness = 2
gui.UIStroke_4.Color = Color3.fromRGB(255, 255, 255)
gui.UIStroke_4.Transparency = 0.3
gui.UIStroke_4.Parent = gui.ScrollingFrame

gui.Drag_1.Name = "Drag"
gui.Drag_1.Parent = gui.ScrollingFrame

gui.PageOne.BorderSizePixel = 0
gui.PageOne.Size = UDim2.new(0.95694, 0, 0.938455, 0)
gui.PageOne.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.PageOne.BackgroundTransparency = 1
gui.PageOne.Name = "PageOne"
gui.PageOne.Position = UDim2.new(0.0205049, 0, 0.0316379, 0)
gui.PageOne.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.PageOne.Parent = gui.ScrollingFrame

gui.Vehicle.BorderSizePixel = 0
gui.Vehicle.Size = UDim2.new(0, 200, 0, 100)
gui.Vehicle.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Vehicle.BackgroundTransparency = 0.5
gui.Vehicle.Name = "Vehicle"
gui.Vehicle.Position = UDim2.new(0.0328079, 0, 0.0379654, 0)
gui.Vehicle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
gui.Vehicle.Parent = gui.PageOne

gui.vehicleSpeed.TextWrapped = true
gui.vehicleSpeed.Active = true
gui.vehicleSpeed.BorderSizePixel = 4
gui.vehicleSpeed.Selectable = true
gui.vehicleSpeed.TextScaled = true
gui.vehicleSpeed.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
gui.vehicleSpeed.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.vehicleSpeed.Position = UDim2.new(0.0582238, 0, 0.670459, 0)
gui.vehicleSpeed.BorderMode = Enum.BorderMode.Inset
gui.vehicleSpeed.BackgroundTransparency = 0.5
gui.vehicleSpeed.TextSize = 14
gui.vehicleSpeed.Size = UDim2.new(0.876962, 0, 0.369011, 0)
gui.vehicleSpeed.TextColor3 = Color3.fromRGB(255, 255, 255)
gui.vehicleSpeed.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.vehicleSpeed.Text = ""
gui.vehicleSpeed.Name = "vehicleSpeed"
gui.vehicleSpeed.Parent = gui.Vehicle

gui.UICorner.Name = "UICorner"
gui.UICorner.CornerRadius = UDim.new(0.1, 0)
gui.UICorner.Parent = gui.vehicleSpeed

gui.Bind_1.TextWrapped = true
gui.Bind_1.BorderSizePixel = 0
gui.Bind_1.TextScaled = true
gui.Bind_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Bind_1.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Bind_1.TextColor3 = Color3.fromRGB(255, 255, 255)
gui.Bind_1.Position = UDim2.new(0.279195, 0, 0.258118, 0)
gui.Bind_1.TextSize = 14
gui.Bind_1.Size = UDim2.new(0.440691, 0, 0.271298, 0)
gui.Bind_1.Name = "Bind"
gui.Bind_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Bind_1.Text = "Key: Bind"
gui.Bind_1.BackgroundTransparency = 1
gui.Bind_1.Parent = gui.Vehicle

gui.UIStroke_5.Name = "UIStroke"
gui.UIStroke_5.Thickness = 2
gui.UIStroke_5.Transparency = 0.5
gui.UIStroke_5.Parent = gui.Bind_1

gui.Text.TextWrapped = true
gui.Text.BorderSizePixel = 0
gui.Text.TextScaled = true
gui.Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Text.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Text.TextSize = 14
gui.Text.Position = UDim2.new(0.279195, 0, 0.505825, 0)
gui.Text.Size = UDim2.new(0.440691, 0, 0.271297, 0)
gui.Text.Name = "Text"
gui.Text.TextColor3 = Color3.fromRGB(255, 0, 4)
gui.Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Text.Text = "Force:"
gui.Text.BackgroundTransparency = 1
gui.Text.Parent = gui.Vehicle

gui.UIStroke_6.Name = "UIStroke"
gui.UIStroke_6.Thickness = 2
gui.UIStroke_6.Transparency = 0.5
gui.UIStroke_6.Parent = gui.Text

gui.Toggle_1.TextWrapped = true
gui.Toggle_1.BorderSizePixel = 0
gui.Toggle_1.TextScaled = true
gui.Toggle_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Toggle_1.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Toggle_1.TextColor3 = Color3.fromRGB(255, 0, 0)
gui.Toggle_1.Position = UDim2.new(0.132298, 0, -0.00138367, 0)
gui.Toggle_1.TextSize = 14
gui.Toggle_1.Size = UDim2.new(0.802688, 0, 0.271298, 0)
gui.Toggle_1.Name = "Toggle"
gui.Toggle_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Toggle_1.Text = "Vehicle Push Hack "
gui.Toggle_1.BackgroundTransparency = 1
gui.Toggle_1.Parent = gui.Vehicle

gui.UIStroke_7.Name = "UIStroke"
gui.UIStroke_7.Thickness = 2
gui.UIStroke_7.Transparency = 0.5
gui.UIStroke_7.Parent = gui.Toggle_1

gui.UIStroke_8.LineJoinMode = Enum.LineJoinMode.Bevel
gui.UIStroke_8.Name = "UIStroke"
gui.UIStroke_8.Thickness = 2
gui.UIStroke_8.Color = Color3.fromRGB(255, 255, 255)
gui.UIStroke_8.Transparency = 0.3
gui.UIStroke_8.Parent = gui.Vehicle

gui.UIGridLayout.CellPadding = UDim2.new(0.05, 0, 0.05, 0)
gui.UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
gui.UIGridLayout.Name = "UIGridLayout"
gui.UIGridLayout.CellSize = UDim2.new(0.3, 0, 0.3, 0)
gui.UIGridLayout.Parent = gui.PageOne

gui.Gravity.BorderSizePixel = 0
gui.Gravity.Size = UDim2.new(0, 200, 0, 100)
gui.Gravity.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Gravity.BackgroundTransparency = 0.5
gui.Gravity.Name = "Gravity"
gui.Gravity.Position = UDim2.new(0.0328079, 0, 0.0379654, 0)
gui.Gravity.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
gui.Gravity.Parent = gui.PageOne

gui.gravity.TextWrapped = true
gui.gravity.Active = true
gui.gravity.BorderSizePixel = 4
gui.gravity.Selectable = true
gui.gravity.TextScaled = true
gui.gravity.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
gui.gravity.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.gravity.Position = UDim2.new(0.058224, 0, 0.670459, 0)
gui.gravity.BorderMode = Enum.BorderMode.Inset
gui.gravity.BackgroundTransparency = 0.5
gui.gravity.TextSize = 14
gui.gravity.Size = UDim2.new(0.876962, 0, 0.369011, 0)
gui.gravity.TextColor3 = Color3.fromRGB(255, 255, 255)
gui.gravity.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.gravity.Text = ""
gui.gravity.Name = "gravity"
gui.gravity.Parent = gui.Gravity

gui.UICorner_1.Name = "UICorner"
gui.UICorner_1.CornerRadius = UDim.new(0.1, 0)
gui.UICorner_1.Parent = gui.gravity

gui.Bind_2.TextWrapped = true
gui.Bind_2.BorderSizePixel = 0
gui.Bind_2.TextScaled = true
gui.Bind_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Bind_2.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Bind_2.TextColor3 = Color3.fromRGB(255, 255, 255)
gui.Bind_2.Position = UDim2.new(0.279195, 0, 0.258118, 0)
gui.Bind_2.TextSize = 14
gui.Bind_2.Size = UDim2.new(0.440691, 0, 0.271298, 0)
gui.Bind_2.Name = "Bind"
gui.Bind_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Bind_2.Text = "Key: Bind"
gui.Bind_2.BackgroundTransparency = 1
gui.Bind_2.Parent = gui.Gravity

gui.UIStroke_9.Name = "UIStroke"
gui.UIStroke_9.Thickness = 2
gui.UIStroke_9.Transparency = 0.5
gui.UIStroke_9.Parent = gui.Bind_2

gui.Text_1.TextWrapped = true
gui.Text_1.BorderSizePixel = 0
gui.Text_1.TextScaled = true
gui.Text_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Text_1.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Text_1.TextSize = 14
gui.Text_1.Position = UDim2.new(0.279195, 0, 0.505825, 0)
gui.Text_1.Size = UDim2.new(0.440691, 0, 0.271297, 0)
gui.Text_1.Name = "Text"
gui.Text_1.TextColor3 = Color3.fromRGB(255, 0, 4)
gui.Text_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Text_1.Text = "Gravity:"
gui.Text_1.BackgroundTransparency = 1
gui.Text_1.Parent = gui.Gravity

gui.UIStroke_10.Name = "UIStroke"
gui.UIStroke_10.Thickness = 2
gui.UIStroke_10.Transparency = 0.5
gui.UIStroke_10.Parent = gui.Text_1

gui.Toggle_2.TextWrapped = true
gui.Toggle_2.BorderSizePixel = 0
gui.Toggle_2.TextScaled = true
gui.Toggle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Toggle_2.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Toggle_2.TextColor3 = Color3.fromRGB(255, 0, 0)
gui.Toggle_2.Position = UDim2.new(0.132298, 0, -0.00138367, 0)
gui.Toggle_2.TextSize = 14
gui.Toggle_2.Size = UDim2.new(0.802688, 0, 0.271298, 0)
gui.Toggle_2.Name = "Toggle"
gui.Toggle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Toggle_2.Text = "Gravity Hack"
gui.Toggle_2.BackgroundTransparency = 1
gui.Toggle_2.Parent = gui.Gravity

gui.UIStroke_11.Name = "UIStroke"
gui.UIStroke_11.Thickness = 2
gui.UIStroke_11.Transparency = 0.5
gui.UIStroke_11.Parent = gui.Toggle_2

gui.UIStroke_12.LineJoinMode = Enum.LineJoinMode.Bevel
gui.UIStroke_12.Name = "UIStroke"
gui.UIStroke_12.Thickness = 2
gui.UIStroke_12.Color = Color3.fromRGB(255, 255, 255)
gui.UIStroke_12.Transparency = 0.3
gui.UIStroke_12.Parent = gui.Gravity

gui.BringHoes.BorderSizePixel = 0
gui.BringHoes.Size = UDim2.new(0, 200, 0, 100)
gui.BringHoes.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.BringHoes.BackgroundTransparency = 0.5
gui.BringHoes.Name = "BringHoes"
gui.BringHoes.Position = UDim2.new(0.0328079, 0, 0.0379654, 0)
gui.BringHoes.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
gui.BringHoes.Parent = gui.PageOne

gui.Bind_3.TextWrapped = true
gui.Bind_3.BorderSizePixel = 0
gui.Bind_3.TextScaled = true
gui.Bind_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Bind_3.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Bind_3.TextColor3 = Color3.fromRGB(255, 255, 255)
gui.Bind_3.Position = UDim2.new(0.0935582, 0, 0.737461, 0)
gui.Bind_3.TextSize = 14
gui.Bind_3.Size = UDim2.new(0.802688, 0, 0.305148, 0)
gui.Bind_3.Name = "Bind"
gui.Bind_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Bind_3.Text = "Execute (L)"
gui.Bind_3.BackgroundTransparency = 1
gui.Bind_3.Parent = gui.BringHoes

gui.UIStroke_13.Name = "UIStroke"
gui.UIStroke_13.Thickness = 2
gui.UIStroke_13.Transparency = 0.5
gui.UIStroke_13.Parent = gui.Bind_3

gui.Toggle_3.TextWrapped = true
gui.Toggle_3.BorderSizePixel = 0
gui.Toggle_3.TextScaled = true
gui.Toggle_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Toggle_3.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Toggle_3.TextColor3 = Color3.fromRGB(255, 0, 0)
gui.Toggle_3.Position = UDim2.new(0.0935582, 0, 0.118399, 0)
gui.Toggle_3.TextSize = 14
gui.Toggle_3.Size = UDim2.new(0.802688, 0, 0.361134, 0)
gui.Toggle_3.Name = "Toggle"
gui.Toggle_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Toggle_3.Text = "Remote Kill Any Npc"
gui.Toggle_3.BackgroundTransparency = 1
gui.Toggle_3.Parent = gui.BringHoes

gui.UIStroke_14.Name = "UIStroke"
gui.UIStroke_14.Thickness = 2
gui.UIStroke_14.Transparency = 0.5
gui.UIStroke_14.Parent = gui.Toggle_3

gui.UIStroke_15.LineJoinMode = Enum.LineJoinMode.Bevel
gui.UIStroke_15.Name = "UIStroke"
gui.UIStroke_15.Thickness = 2
gui.UIStroke_15.Color = Color3.fromRGB(255, 255, 255)
gui.UIStroke_15.Transparency = 0.3
gui.UIStroke_15.Parent = gui.BringHoes

gui.Loading.BorderSizePixel = 0
gui.Loading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Loading.Image = "rbxassetid://8932511161"
gui.Loading.Size = UDim2.new(0.32283, 0, 0.49164, 0)
gui.Loading.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Loading.Name = "Loading"
gui.Loading.BackgroundTransparency = 1
gui.Loading.Position = UDim2.new(0.329285, 0, 0.365602, 0)
gui.Loading.Visible = false
gui.Loading.Parent = gui.BringHoes

gui.Idle.BorderSizePixel = 0
gui.Idle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Idle.Image = "rbxassetid://6972569034"
gui.Idle.Size = UDim2.new(0.32283, 0, 0.49164, 0)
gui.Idle.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Idle.Name = "Idle"
gui.Idle.BackgroundTransparency = 1
gui.Idle.Position = UDim2.new(0.329285, 0, 0.365602, 0)
gui.Idle.Parent = gui.BringHoes

gui.Boolets.BorderSizePixel = 0
gui.Boolets.Size = UDim2.new(0, 200, 0, 100)
gui.Boolets.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Boolets.BackgroundTransparency = 0.5
gui.Boolets.Name = "Boolets"
gui.Boolets.Position = UDim2.new(0.0328079, 0, 0.0379654, 0)
gui.Boolets.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
gui.Boolets.Parent = gui.PageOne

gui.Bind_4.TextWrapped = true
gui.Bind_4.BorderSizePixel = 0
gui.Bind_4.TextScaled = true
gui.Bind_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Bind_4.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Bind_4.TextColor3 = Color3.fromRGB(255, 255, 255)
gui.Bind_4.Position = UDim2.new(0.189815, 0, 0.661263, 0)
gui.Bind_4.TextSize = 14
gui.Bind_4.Size = UDim2.new(0.61945, 0, 0.381345, 0)
gui.Bind_4.Name = "Bind"
gui.Bind_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Bind_4.Text = "Start"
gui.Bind_4.BackgroundTransparency = 1
gui.Bind_4.Parent = gui.Boolets

gui.UIStroke_16.Name = "UIStroke"
gui.UIStroke_16.Thickness = 2
gui.UIStroke_16.Transparency = 0.5
gui.UIStroke_16.Parent = gui.Bind_4

gui.Toggle_4.TextWrapped = true
gui.Toggle_4.BorderSizePixel = 0
gui.Toggle_4.TextScaled = true
gui.Toggle_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Toggle_4.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Toggle_4.TextColor3 = Color3.fromRGB(255, 0, 0)
gui.Toggle_4.Position = UDim2.new(0.0935583, 0, -0.00138394, 0)
gui.Toggle_4.TextSize = 14
gui.Toggle_4.Size = UDim2.new(0.802688, 0, 0.271298, 0)
gui.Toggle_4.Name = "Toggle"
gui.Toggle_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Toggle_4.Text = "Bring All Ammo"
gui.Toggle_4.BackgroundTransparency = 1
gui.Toggle_4.Parent = gui.Boolets

gui.UIStroke_17.Name = "UIStroke"
gui.UIStroke_17.Thickness = 2
gui.UIStroke_17.Transparency = 0.5
gui.UIStroke_17.Parent = gui.Toggle_4

gui.UIStroke_18.LineJoinMode = Enum.LineJoinMode.Bevel
gui.UIStroke_18.Name = "UIStroke"
gui.UIStroke_18.Thickness = 2
gui.UIStroke_18.Color = Color3.fromRGB(255, 255, 255)
gui.UIStroke_18.Transparency = 0.3
gui.UIStroke_18.Parent = gui.Boolets

gui.Loading_1.BorderSizePixel = 0
gui.Loading_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Loading_1.Image = "rbxassetid://8932511161"
gui.Loading_1.Size = UDim2.new(0.32283, 0, 0.49164, 0)
gui.Loading_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Loading_1.Name = "Loading"
gui.Loading_1.BackgroundTransparency = 1
gui.Loading_1.Position = UDim2.new(0.329285, 0, 0.24582, 0)
gui.Loading_1.Visible = false
gui.Loading_1.Parent = gui.Boolets

gui.Idle_1.BorderSizePixel = 0
gui.Idle_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Idle_1.Image = "rbxassetid://6972569034"
gui.Idle_1.Size = UDim2.new(0.32283, 0, 0.49164, 0)
gui.Idle_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Idle_1.Name = "Idle"
gui.Idle_1.BackgroundTransparency = 1
gui.Idle_1.Position = UDim2.new(0.329285, 0, 0.24582, 0)
gui.Idle_1.Parent = gui.Boolets

gui.Shop.BorderSizePixel = 0
gui.Shop.Size = UDim2.new(0, 200, 0, 100)
gui.Shop.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Shop.BackgroundTransparency = 0.5
gui.Shop.Name = "Shop"
gui.Shop.Position = UDim2.new(0.0328079, 0, 0.0379654, 0)
gui.Shop.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
gui.Shop.Parent = gui.PageOne

gui.Bind_5.TextWrapped = true
gui.Bind_5.BorderSizePixel = 0
gui.Bind_5.TextScaled = true
gui.Bind_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Bind_5.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Bind_5.TextColor3 = Color3.fromRGB(255, 255, 255)
gui.Bind_5.Position = UDim2.new(0.0396092, 0, 0.437344, 0)
gui.Bind_5.TextSize = 14
gui.Bind_5.Size = UDim2.new(0.906951, 0, 0.558335, 0)
gui.Bind_5.Name = "Bind"
gui.Bind_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Bind_5.Text = "Open"
gui.Bind_5.BackgroundTransparency = 1
gui.Bind_5.Parent = gui.Shop

gui.UIStroke_19.Name = "UIStroke"
gui.UIStroke_19.Thickness = 2
gui.UIStroke_19.Transparency = 0.5
gui.UIStroke_19.Parent = gui.Bind_5

gui.Toggle_5.TextWrapped = true
gui.Toggle_5.BorderSizePixel = 0
gui.Toggle_5.TextScaled = true
gui.Toggle_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Toggle_5.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Toggle_5.TextColor3 = Color3.fromRGB(255, 0, 0)
gui.Toggle_5.Position = UDim2.new(0.0935583, 0, -0.00138394, 0)
gui.Toggle_5.TextSize = 14
gui.Toggle_5.Size = UDim2.new(0.802688, 0, 0.271298, 0)
gui.Toggle_5.Name = "Toggle"
gui.Toggle_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Toggle_5.Text = "Force Open Shop"
gui.Toggle_5.BackgroundTransparency = 1
gui.Toggle_5.Parent = gui.Shop

gui.UIStroke_20.Name = "UIStroke"
gui.UIStroke_20.Thickness = 2
gui.UIStroke_20.Transparency = 0.5
gui.UIStroke_20.Parent = gui.Toggle_5

gui.UIStroke_21.LineJoinMode = Enum.LineJoinMode.Bevel
gui.UIStroke_21.Name = "UIStroke"
gui.UIStroke_21.Thickness = 2
gui.UIStroke_21.Color = Color3.fromRGB(255, 255, 255)
gui.UIStroke_21.Transparency = 0.3
gui.UIStroke_21.Parent = gui.Shop

gui.Boss.BorderSizePixel = 0
gui.Boss.Size = UDim2.new(0, 200, 0, 100)
gui.Boss.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Boss.BackgroundTransparency = 0.5
gui.Boss.Name = "Boss"
gui.Boss.Position = UDim2.new(0.0328079, 0, 0.0379654, 0)
gui.Boss.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
gui.Boss.Parent = gui.PageOne

gui.Bind_6.TextWrapped = true
gui.Bind_6.BorderSizePixel = 0
gui.Bind_6.TextScaled = true
gui.Bind_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Bind_6.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Bind_6.TextColor3 = Color3.fromRGB(255, 255, 255)
gui.Bind_6.Position = UDim2.new(0.0396092, 0, 0.437344, 0)
gui.Bind_6.TextSize = 14
gui.Bind_6.Size = UDim2.new(0.906951, 0, 0.558335, 0)
gui.Bind_6.Name = "Bind"
gui.Bind_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Bind_6.Text = "Give Tool"
gui.Bind_6.BackgroundTransparency = 1
gui.Bind_6.Parent = gui.Boss

gui.UIStroke_22.Name = "UIStroke"
gui.UIStroke_22.Thickness = 2
gui.UIStroke_22.Transparency = 0.5
gui.UIStroke_22.Parent = gui.Bind_6

gui.Toggle_6.TextWrapped = true
gui.Toggle_6.BorderSizePixel = 0
gui.Toggle_6.TextScaled = true
gui.Toggle_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Toggle_6.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Toggle_6.TextColor3 = Color3.fromRGB(255, 0, 0)
gui.Toggle_6.Position = UDim2.new(0.0935583, 0, -0.00138394, 0)
gui.Toggle_6.TextSize = 14
gui.Toggle_6.Size = UDim2.new(0.802688, 0, 0.271298, 0)
gui.Toggle_6.Name = "Toggle"
gui.Toggle_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Toggle_6.Text = "Kill Current Boss"
gui.Toggle_6.BackgroundTransparency = 1
gui.Toggle_6.Parent = gui.Boss

gui.UIStroke_23.Name = "UIStroke"
gui.UIStroke_23.Thickness = 2
gui.UIStroke_23.Transparency = 0.5
gui.UIStroke_23.Parent = gui.Toggle_6

gui.UIStroke_24.LineJoinMode = Enum.LineJoinMode.Bevel
gui.UIStroke_24.Name = "UIStroke"
gui.UIStroke_24.Thickness = 2
gui.UIStroke_24.Color = Color3.fromRGB(255, 255, 255)
gui.UIStroke_24.Transparency = 0.3
gui.UIStroke_24.Parent = gui.Boss

gui.ShowNukeItems.BorderSizePixel = 0
gui.ShowNukeItems.Size = UDim2.new(0, 200, 0, 100)
gui.ShowNukeItems.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.ShowNukeItems.BackgroundTransparency = 0.5
gui.ShowNukeItems.Name = "ShowNukeItems"
gui.ShowNukeItems.Position = UDim2.new(0.0328079, 0, 0.0379654, 0)
gui.ShowNukeItems.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
gui.ShowNukeItems.Parent = gui.PageOne

gui.Bind_7.TextWrapped = true
gui.Bind_7.BorderSizePixel = 0
gui.Bind_7.TextScaled = true
gui.Bind_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Bind_7.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Bind_7.TextColor3 = Color3.fromRGB(255, 255, 255)
gui.Bind_7.Position = UDim2.new(0.188423, 0, 0.620569, 0)
gui.Bind_7.TextSize = 14
gui.Bind_7.Size = UDim2.new(0.609324, 0, 0.375111, 0)
gui.Bind_7.Name = "Bind"
gui.Bind_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Bind_7.Text = "Show"
gui.Bind_7.BackgroundTransparency = 1
gui.Bind_7.Parent = gui.ShowNukeItems

gui.UIStroke_25.Name = "UIStroke"
gui.UIStroke_25.Thickness = 2
gui.UIStroke_25.Transparency = 0.5
gui.UIStroke_25.Parent = gui.Bind_7

gui.Toggle_7.TextWrapped = true
gui.Toggle_7.BorderSizePixel = 0
gui.Toggle_7.TextScaled = true
gui.Toggle_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Toggle_7.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Toggle_7.TextColor3 = Color3.fromRGB(255, 0, 0)
gui.Toggle_7.Position = UDim2.new(0.0935583, 0, -0.00138394, 0)
gui.Toggle_7.TextSize = 14
gui.Toggle_7.Size = UDim2.new(0.802688, 0, 0.271298, 0)
gui.Toggle_7.Name = "Toggle"
gui.Toggle_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Toggle_7.Text = "Nuke Key / Code"
gui.Toggle_7.BackgroundTransparency = 1
gui.Toggle_7.Parent = gui.ShowNukeItems

gui.UIStroke_26.Name = "UIStroke"
gui.UIStroke_26.Thickness = 2
gui.UIStroke_26.Transparency = 0.5
gui.UIStroke_26.Parent = gui.Toggle_7

gui.UIStroke_27.LineJoinMode = Enum.LineJoinMode.Bevel
gui.UIStroke_27.Name = "UIStroke"
gui.UIStroke_27.Thickness = 2
gui.UIStroke_27.Color = Color3.fromRGB(255, 255, 255)
gui.UIStroke_27.Transparency = 0.3
gui.UIStroke_27.Parent = gui.ShowNukeItems

gui.Loop.TextWrapped = true
gui.Loop.BorderSizePixel = 0
gui.Loop.TextScaled = true
gui.Loop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Loop.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Loop.TextColor3 = Color3.fromRGB(255, 255, 255)
gui.Loop.Position = UDim2.new(0.0292984, 0, 0.271176, 0)
gui.Loop.TextSize = 14
gui.Loop.Size = UDim2.new(0.939913, 0, 0.337711, 0)
gui.Loop.Name = "Loop"
gui.Loop.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Loop.Text = "Press this to loop every 5 second"
gui.Loop.BackgroundTransparency = 0.5
gui.Loop.Parent = gui.ShowNukeItems

gui.UIStroke_28.Name = "UIStroke"
gui.UIStroke_28.Thickness = 2
gui.UIStroke_28.Transparency = 0.5
gui.UIStroke_28.Parent = gui.Loop

gui.UICorner_2.Name = "UICorner"
gui.UICorner_2.Parent = gui.Loop

gui.UIAspectRatioConstraint.AspectRatio = 1.5
gui.UIAspectRatioConstraint.Name = "UIAspectRatioConstraint"
gui.UIAspectRatioConstraint.Parent = gui.ScrollingFrame

gui.Hello.TextWrapped = true
gui.Hello.BorderSizePixel = 0
gui.Hello.TextScaled = true
gui.Hello.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gui.Hello.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.Hello.TextSize = 14
gui.Hello.Position = UDim2.new(0.317643, 0, 0.995914, 0)
gui.Hello.Size = UDim2.new(0.350265, 0, 0.118918, 0)
gui.Hello.Name = "Hello"
gui.Hello.TextColor3 = Color3.fromRGB(255, 255, 255)
gui.Hello.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Hello.Text = "Funphobia"
gui.Hello.TextTransparency = 0.5
gui.Hello.BackgroundTransparency = 1
gui.Hello.Parent = gui.ScrollingFrame

gui.UIStroke_29.LineJoinMode = Enum.LineJoinMode.Bevel
gui.UIStroke_29.Name = "UIStroke"
gui.UIStroke_29.Thickness = 2
gui.UIStroke_29.Transparency = 0.5
gui.UIStroke_29.Parent = gui.Hello

gui.hubtext.TextWrapped = true
gui.hubtext.BorderSizePixel = 0
gui.hubtext.TextScaled = true
gui.hubtext.BackgroundColor3 = Color3.fromRGB(29, 29, 38)
gui.hubtext.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
gui.hubtext.TextColor3 = Color3.fromRGB(255, 255, 255)
gui.hubtext.Position = UDim2.new(0.989133, 0, -0.247746, 0)
gui.hubtext.TextSize = 14
gui.hubtext.Size = UDim2.new(0.24, 0, 0.243365, 0)
gui.hubtext.Name = "hubtext"
gui.hubtext.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.hubtext.Text = "(P)"
gui.hubtext.Active = true
gui.hubtext.BackgroundTransparency = 1
gui.hubtext.Selectable = true
gui.hubtext.Parent = gui.Main

gui.UIAspectRatioConstraint_1.Name = "UIAspectRatioConstraint"
gui.UIAspectRatioConstraint_1.Parent = gui.Main

gui.Hub.BorderSizePixel = 0
gui.Hub.BackgroundColor3 = Color3.fromRGB(29, 29, 38)
gui.Hub.Selectable = true
gui.Hub.Active = true
gui.Hub.Image = "rbxassetid://12403104094"
gui.Hub.Size = UDim2.new(0.799511, 0, 0.800048, 0)
gui.Hub.BorderColor3 = Color3.fromRGB(0, 0, 0)
gui.Hub.Name = "Hub"
gui.Hub.BackgroundTransparency = 1
gui.Hub.Position = UDim2.new(0.0987654, 0, 0.0968048, 0)
gui.Hub.Parent = gui.Main

task.spawn(function()
	local script = gui.Drag

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end)

task.spawn(function()
	local script = gui.Control

	local Player = game.Players.LocalPlayer
	local CarModel = nil
	local aniphobiaGravity = 100
	local Gravity = workspace.Gravity
	local UserInputService = game:GetService("UserInputService")
	local VehiclePushForce = 0
	local uiMain = script.Parent
	local uiScroll = uiMain.ScrollingFrame
	local PageOne = uiScroll.PageOne
	local delDeb = false
	local activatedGravity = false
	local toggledVehicleSpeedHack = false
	local Highlight = nil
	local executor = false
	local WeldCarModel = nil
	local bindVECHACK = nil
	local bindGRAVHACK = nil
	local loopNuke = false
	
	
	
	local function fireproximityprompt(Obj, Amount, Skip)
		if Obj.ClassName == "ProximityPrompt" then 
			Amount = Amount or 1
			local PromptTime = Obj.HoldDuration
			if Skip then 
				Obj.HoldDuration = 0
			end
			for i = 1, Amount do 
				Obj:InputHoldBegin()
				if not Skip then 
					wait(Obj.HoldDuration)
				end
				Obj:InputHoldEnd()
			end
			Obj.HoldDuration = PromptTime
			return true
		else 
			warn("userdata<ProximityPrompt> expected")
			return false
		end
	end
	
	local function makeNotification(Title,Text,Icon,Duration)
		game.StarterGui:SetCore("SendNotification", {
			Title = tostring(Title); -- the title (ofc)
			Text = tostring(Text); -- what the text says (ofc)
			Icon = tostring(Icon); -- the image if u want. 
			Duration = tonumber(Duration); -- how long the notification should in secounds
		})
	end
	
	local itemsCache = {}
	
	workspace["..."].Map.LootItems.DescendantAdded:Connect(function(desc)
		task.wait(.25)
		if not delDeb then
			if desc:IsA("BasePart") then
				local detector = desc:FindFirstChildOfClass("ClickDetector")
				if detector ~= nil then
					makeNotification("Funphobia","Cached item:"..desc.Name.."","rbxassetid://14532150253",3)
				else
					warn("No Detector for:"..desc.Name)
				end
			end
		end
	end)
	
	PageOne.Boolets.Bind.MouseButton1Click:Connect(function()
		makeNotification("Funphobia","Bringing items","rbxassetid://14532150253",2)
		for _,chached in pairs(workspace["..."].Map.LootItems:GetChildren()) do
			if chached:IsA("BasePart") then
				fireclickdetector(chached.ClickDetector)
			end
		end
	end)
	
	script.Parent.Hub.MouseButton1Click:Connect(function()
		uiScroll.Visible = not uiScroll.Visible
		if uiScroll.Visible == false then
			game.Players.LocalPlayer.PlayerGui.Shop.Background.Visible = false
		end
	end)
	
	UserInputService.InputBegan:Connect(function(keycode,GPE)
		if keycode.KeyCode == Enum.KeyCode.P and not GPE then
			uiScroll.Visible = not uiScroll.Visible
			if uiScroll.Visible == false then
				game.Players.LocalPlayer.PlayerGui.Shop.Background.Visible = false
			end
		end
	end)
	
	PageOne.Vehicle.Toggle.MouseButton1Click:Connect(function() 
		if toggledVehicleSpeedHack == false then
			toggledVehicleSpeedHack = true
			makeNotification("Funphobia","Vehicle Speed Hack: On","rbxassetid://914124194",1)
			PageOne.Vehicle.Toggle.TextColor3 = Color3.fromRGB(0, 255, 0)
			script.something:Play()
		else
			script.something:Play()
			toggledVehicleSpeedHack = false
			makeNotification("Funphobia","Vehicle Speed Hack: Off","rbxassetid://914124194",1)
			PageOne.Vehicle.Toggle.TextColor3 = Color3.fromRGB(255,0, 0)
		end
	end)
	
	PageOne.Shop.Bind.MouseButton1Click:Connect(function()
		if game.Players.LocalPlayer.PlayerGui.Shop:FindFirstChild('VisibilityHandler') then
			game.Players.LocalPlayer.PlayerGui.Shop.VisibilityHandler:Destroy()
		end
		game.Players.LocalPlayer.PlayerGui.Shop.Background.Visible = not game.Players.LocalPlayer.PlayerGui.Shop.Background.Visible
	end)
	
	
	
	PageOne.Vehicle.Bind.MouseButton1Click:Connect(function()
		PageOne.Vehicle.Bind.Text = "Press any key..."
		local input = UserInputService.InputBegan:Wait()
		PageOne.Vehicle.Bind.Text = "Key pressed: " .. input.KeyCode.Name
		wait(.5) 
		PageOne.Vehicle.Bind.Text = "Key: "..input.KeyCode.Name
		bindVECHACK = input.KeyCode
	end)
	
	PageOne.Gravity.Bind.MouseButton1Click:Connect(function()
		PageOne.Gravity.Bind.Text = "Press any key..."
		local input = UserInputService.InputBegan:Wait()
		PageOne.Gravity.Bind.Text = "Key pressed: " .. input.KeyCode.Name
		wait(.5) 
		PageOne.Gravity.Bind.Text = "Key: "..input.KeyCode.Name
		bindGRAVHACK = input.KeyCode
	end)
	
	PageOne.Boss.Bind.MouseButton1Click:Connect(function()
		local tool = Instance.new("Tool",game.Players.LocalPlayer.Backpack) do
			tool.RequiresHandle = false
			tool.CanBeDropped = true
			tool.Name = "Try Kill"
			tool.Activated:Connect(function()
				local mouse = Player:GetMouse()
				local hit = mouse.Hit
				local basePart = mouse.Target
				print(mouse,hit,basePart)
				
				if basePart ~= nil then
					if basePart:IsA("BasePart") then
						local model = basePart.Parent
						print(model)
						if model:IsA("Model") then
							print(model.Name)
							local humanoid = model:FindFirstChildOfClass("Humanoid")
							if humanoid ~= nil then
								model.Torso.Neck:Destroy()
							end
						end
					end
				end
			end)
		end
		local tool = Instance.new("Tool",game.Players.LocalPlayer.Backpack) do
			tool.RequiresHandle = false
			tool.CanBeDropped = true
			tool.Name = "Show Physics"
			tool.Activated:Connect(function()
				settings():GetService("PhysicsSettings").AreOwnersShown = not settings():GetService("PhysicsSettings").AreOwnersShown
			end)
		end
	end)
	
	
	
	
	local npcsDeb = false
	local function spawnghostHeads()
		if executor == true then
			if not npcsDeb then
				npcsDeb = true
				local s,e = pcall(function()
					local startCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,1.5,0)
					PageOne.BringHoes.Bind.Text = "Wait..."
					PageOne.BringHoes.Loading.Visible = true
					PageOne.BringHoes.Idle.Visible = false
					task.wait()
					for _,Hoes in pairs(workspace.OtherWaifus:GetChildren()) do
						task.wait()
						if Hoes:FindFirstChildOfClass("Humanoid") then
							local Humanoid = Hoes:FindFirstChildOfClass("Humanoid")
							if Humanoid.Health > 0 then
								local head = Hoes.Head:Clone()
								head.Parent = Hoes
								head:ClearAllChildren()
								head.CFrame = startCFrame
								head.CFrame += head.CFrame.LookVector*1
								startCFrame = head.CFrame
								head.Anchored = true
								head.Size = Vector3.new(4,4,.001)
								spawn(function()
									repeat
										task.wait()
									until Humanoid.Health <= 0
									head:Destroy()
								end)
							end
						end
					end
					task.wait()
					PageOne.BringHoes.Bind.Text = "Npc done. Bosses...."
					local startCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,1.5,0)
					for _,Bosses in pairs(workspace.Waifus:GetChildren()) do
						task.wait()
						if Bosses:FindFirstChildOfClass("Humanoid") then
							local Humanoid = Bosses:FindFirstChildOfClass("Humanoid")
							if Humanoid.Health > 0 then
								local head = Bosses.Head:Clone()
								head.Parent = Bosses
								head:ClearAllChildren()
								head.CFrame = startCFrame
								head.CFrame += head.CFrame.LookVector*1
								startCFrame = head.CFrame
								head.Anchored = true
								head.Size = Vector3.new(4,4,.001)
								spawn(function()
									repeat
										task.wait()
									until Humanoid.Health <= 0
									head:Destroy()
								end)
							end
						end
					end
					task.wait(.5)
					PageOne.BringHoes.Loading.Visible = false
					PageOne.BringHoes.Idle.Visible = true
					PageOne.BringHoes.Bind.Text = "Npc done. Bosses done."
				end)
				if s then
				else
					warn(e)
				end
				task.wait(1)
				npcsDeb = false
				PageOne.BringHoes.Bind.Text = "Execute (L)"
			end
		end
	end
	
	PageOne.BringHoes.Toggle.MouseButton1Click:Connect(function()
		if executor == false then
			executor = true
			makeNotification("Funphobia","Execute Npc On","rbxassetid://5227329917",1)
			PageOne.BringHoes.Toggle.TextColor3 = Color3.fromRGB(0, 255, 0)
			script.something:Play()
		else
			script.something:Play()
			executor = false
			makeNotification("Funphobia","Execute Npc Off","rbxassetid://9165767437",1)
			PageOne.BringHoes.Toggle.TextColor3 = Color3.fromRGB(255,0, 0)
		end
	end)
	
	
	PageOne.BringHoes.Bind.MouseButton1Click:Connect(function()
		spawnghostHeads()
	end)
	
	
	
	UserInputService.InputBegan:Connect(function(keycode,GPE)
		if keycode.KeyCode == Enum.KeyCode.L and not GPE then
			spawnghostHeads()
		end
	end)
	
	
	spawn(function()
		repeat
			task.wait(1/60)
			PageOne.BringHoes.Loading.Rotation += 360/4/60
			PageOne.Boolets.Loading.Rotation += 360/4/60
		until delDeb == true
	end)
	
	PageOne.Vehicle.vehicleSpeed:GetPropertyChangedSignal("Text"):Connect(function()
		local vehicleSpeed = tonumber(PageOne.Vehicle.vehicleSpeed.Text)
		if vehicleSpeed ~= nil then
			VehiclePushForce = vehicleSpeed
			print(VehiclePushForce)
		end
	end)
	
	
	PageOne.Gravity.gravity:GetPropertyChangedSignal("Text"):Connect(function()
		local g = tonumber(PageOne.Gravity.gravity.Text)
		if g ~= nil then
			Gravity = g+0
			print(Gravity)
		end
	end)
	local code,key = false,false
	
	
	local function showNukeItems()
		makeNotification("Funphobia","Searching","rbxassetid://9165767437",2)
	
		for _,KeyPlacements in pairs(workspace:WaitForChild("KeyPlacements"):GetChildren()) do
			if #KeyPlacements:GetDescendants() > 0 then
				if script.key.IsPlaying ~= true then
					script.key:Play()
				end
				local highlight = script.BillboardGui:Clone() do
					highlight.d.Toggle.Text = "Nuke Key"
					highlight.Parent = KeyPlacements
					game:GetService("Debris"):AddItem(highlight,5)
					highlight.Enabled = true
				end
			end
		end
	
	
		for _,CodePlacements in pairs(workspace:WaitForChild("CodePlacements"):GetChildren()) do
			if #CodePlacements:GetDescendants() > 0 then
				if script.code.IsPlaying ~= true then
					script.code:Play()
				end
				local highlight = script.BillboardGui:Clone() do
					highlight.d.Toggle.Text = "Nuke Code"
					highlight.Parent = CodePlacements
					game:GetService("Debris"):AddItem(highlight,5)
					highlight.Enabled = true
				end
			end
		end
	end
	
	PageOne.ShowNukeItems.Bind.MouseButton1Click:Connect(function()
		showNukeItems()
	end)
	PageOne.ShowNukeItems.Loop.MouseButton1Click:Connect(function()
		loopNuke = not loopNuke
		if loopNuke == true then
			PageOne.ShowNukeItems.Toggle.TextColor3 = Color3.fromRGB(0,255,0)
		else
			PageOne.ShowNukeItems.Toggle.TextColor3 = Color3.fromRGB(255,0)
		end
	end)
	spawn(function()
	
		while task.wait(5) and delDeb == false do
			if loopNuke then
				showNukeItems()
			end
		end
	
	end)
	workspace:WaitForChild("Cars").DescendantAdded:Connect(function(desc)
		task.wait(.1)
		if not delDeb then
			if desc:IsA("Weld") then
				if desc.Part1 ~= nil then
					if desc.Part1.Parent ~= nil then
						if desc.Part1.Parent.Name == Player.Name then
							if Highlight ~= nil then
								Highlight:Destroy()
							end
							WeldCarModel = desc
							CarModel = nil
							CarModel = desc.Parent:FindFirstAncestorOfClass("Model")
							WeldCarModel.AncestryChanged:Connect(function()
								makeNotification("Funphobia","You left "..CarModel.Name.."","rbxassetid://11356184244",1)
								CarModel = nil
								WeldCarModel = nil
							end)
							if CarModel ~= nil then
								makeNotification("Funphobia","You're now driving: "..CarModel.Name.."","rbxassetid://11356184244",1)
								print(CarModel.Name,CarModel.Parent.Name)
								Highlight = Instance.new("Highlight",CarModel) do
									Highlight.FillTransparency = 1
									Highlight.OutlineColor = Color3.new(0,255,0)
									spawn(function()
										game:GetService("TweenService"):Create(Highlight,TweenInfo.new(2),{OutlineTransparency = 1}):Play()
									end)
								end
							end
						end
					end
				end
			end
		else	
			CarModel = nil
		end
	end)
	
	
	
	spawn(function()
		repeat
			task.wait()
			game.Players.LocalPlayer.Character.AntiSeatEquip.Disabled = true
		until delDeb == true
		game.Players.LocalPlayer.Character.AntiSeatEquip.Disabled = false
	end)
	
	spawn(function()
		repeat
			task.wait()
			if activatedGravity == true then
				if Gravity ~= nil then
					workspace.Gravity = Gravity
				else
					workspace.Gravity = aniphobiaGravity
				end
			else
				workspace.Gravity = aniphobiaGravity
			end
		until delDeb == true
		workspace.Gravity = aniphobiaGravity
	end)
	
	
	
	UserInputService.InputBegan:Connect(function(keycode,GPE)
		if keycode.KeyCode == Enum.KeyCode.Delete and not GPE then
			local funphobia = game.CoreGui:FindFirstChild("FUNPHOBIA")
			if funphobia ~= nil then
				if delDeb ~= true then
					delDeb = true
					script.something:Play()
					makeNotification("Funphobia","Deleting Interface","rbxassetid://6970063595",1)
					task.wait(1)
					itemsCache = {}
					funphobia:Destroy()
				end
			end
		end
	end)
	
	UserInputService.InputBegan:Connect(function(keycode,GPE)
		if bindVECHACK ~= nil then
			if keycode.KeyCode == bindVECHACK and not GPE then
				if delDeb == false then
					if CarModel ~= nil then
						local mouse = Player:GetMouse()
						local hit = mouse.Hit
						local orientation,size = CarModel:GetBoundingBox()
						local lookat = CFrame.lookAt(orientation.Position,hit.Position)
						if script.speed.IsPlaying == false then
							script.speed:Play()
						end
						for i,parts in pairs(CarModel:GetDescendants()) do
							if parts:IsA("BasePart") then
								parts.Velocity += lookat.LookVector*(tonumber(VehiclePushForce))
								parts.AssemblyAngularVelocity = Vector3.new(0,0,0)
							end
						end
					end
				end
			end
		end
	end)
	
	UserInputService.InputBegan:Connect(function(keycode,GPE)
		if bindGRAVHACK ~= nil then
			if keycode.KeyCode == bindGRAVHACK and not GPE then
				if delDeb == false then
					if activatedGravity == false then
						activatedGravity = true
						makeNotification("Funphobia","Gravity Hack: On","rbxassetid://51601671",1)
						PageOne.Gravity.Toggle.TextColor3 = Color3.fromRGB(0, 255, 0)
						script.something:Play()
					else
						script.something:Play()
						activatedGravity = false
						makeNotification("Funphobia","Gravity Hack: Off","rbxassetid://51601671",1)
						PageOne.Gravity.Toggle.TextColor3 = Color3.fromRGB(255,0, 0)
					end
				end
			end
		end
	end)
	
	local printdebug
	UserInputService.InputBegan:Connect(function(keycode,GPE)
		if keycode.KeyCode == Enum.KeyCode.Equals and not GPE then
			if delDeb == false then
				if not printdebug then
					printdebug = true
					local vars = {
						CarModel;
						aniphobiaGravity;
						Gravity;
						VehiclePushForce;
						delDeb;
						activatedGravity;
						toggledVehicleSpeedHack;
						Highlight;
						WeldCarModel;
						bindVECHACK;
					}
					for _,variables in pairs(vars) do
						task.wait()
						print(variables)
					end
					task.wait()
					printdebug = false
				end
			end
		end
	end)
	
	
	
	
	
	
	
	
	
end)

task.spawn(function()
	local script = gui.Drag_1

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end)
