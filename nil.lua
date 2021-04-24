return function(Info)
	local Connections = {
		
	}
	local ScreenGUI = Instance.new("ScreenGui")

	local function ProtectGUI(GUIObj)
		if syn then
			syn.protect_gui(GUIObj)
			GUIObj.Parent = game:GetService("CoreGui")
			return
		end
		if protect_gui then
			protect_gui(GUIObj)
			GUIObj.Parent = game:GetService("CoreGui")
			return
		end
		if get_hidden_gui then
			GUIObj.Parent = get_hidden_gui()
			return
		end
		GUIObj.Parent = game.StarterGui
	end

	ProtectGUI(ScreenGUI)

	local Background = Instance.new("Frame")
	Background.Parent = ScreenGUI
	Background.BackgroundColor3 = Color3.fromRGB(50,50,50)
	Background.Size = UDim2.new(1,0,1,0)
	Background.BackgroundTransparency = 0.3
	Background.BorderSizePixel = 0

	local Popup = Instance.new("Frame")
	Popup.Parent = ScreenGUI
	Popup.BackgroundColor3 = Color3.fromRGB(88,88,88)
	Popup.Position = UDim2.new(0.408,0,0.414,0)
	Popup.Size = UDim2.new(0.212,0,0.26,0)

	local Line1 = Instance.new("Frame")
	Line1.Parent = Popup
	Line1.Position = UDim2.new(0,0,0.767,0)
	Line1.Size = UDim2.new(1,0,0.006,0)
	Line1.BorderSizePixel = 0

	local Line2 = Instance.new("Frame")
	Line2.Parent = Popup
	Line2.Position = UDim2.new(0,0,0.189,0)
	Line2.Size = UDim2.new(1,0,0.006,0)
	Line2.BorderSizePixel = 0

	local Title = Instance.new("TextLabel")
	Title.Parent = Popup
	Title.BackgroundTransparency = 1
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0,0,0,0)
	Title.Size = UDim2.new(1,0,0.189,0)
	Title.TextSize = 30

	local Message = Instance.new("TextLabel")
	Message.Parent = Popup
	Message.BackgroundTransparency = 1
	Message.Position = UDim2.new(0,0,0.194,0)
	Message.Size = UDim2.new(1,0,0.572,0)
	Message.TextSize = 30

	local ButtonContainer = Instance.new("Frame")
	ButtonContainer.Parent = Popup
	ButtonContainer.BackgroundColor3 = Color3.fromRGB(88,88,88)
	ButtonContainer.Position = UDim2.new(0,0,0.772,0)
	ButtonContainer.Size = UDim2.new(1,0,0.228,0)
	ButtonContainer.BorderSizePixel = 0

	local Button1 = Instance.new("TextButton")
	Button1.Parent = ButtonContainer
	Button1.BackgroundColor3 = Color3.fromRGB(70,70,70)
	Button1.Position = UDim2.new(0.04,0,0.146,0)
	Button1.Size = UDim2.new(0.4,0,0.7,0)

	local Button2 = Instance.new("TextButton")
	Button2.Parent = ButtonContainer
	Button2.BackgroundColor3 = Color3.fromRGB(70,70,70)
	Button2.Position = UDim2.new(0.56,0,0.146,0)
	Button2.Size = UDim2.new(0.4,0,0.7,0)
	
	Title.Text = Info.Title
	Message.Text = Info.Msg
	Button1.Text = Info.Btn1
	Button2.Text = Info.Btn2
	
	local b1
	local b2
	b1 = Button1.MouseButton1Click:Connect(function()
		b1:Disconnect()
		b2:Disconnect()
		ScreenGUI:Destroy()
		if (Info.Btn1Code) then
			loadstring(Info.Btn1Code)()
		end
	end)
	b2 = Button2.MouseButton1Click:Connect(function()
		b1:Disconnect()
		b2:Disconnect()
		ScreenGUI:Destroy()
		if (Info.Btn2Code) then
			loadstring(Info.Btn2Code)()
		end
	end)
end
