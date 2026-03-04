--[[

  _____                      _                      _____ _               _             
 |_   _|                    | |                    / ____| |             | |            
   | |  _ ____   _____ _ __ | |_ ___  _ __ _   _  | |    | |__   ___  ___| | _____ _ __ 
   | | | '_ \ \ / / _ \ '_ \| __/ _ \| '__| | | | | |    | '_ \ / _ \/ __| |/ / _ \ '__|
  _| |_| | | \ V /  __/ | | | || (_) | |  | |_| | | |____| | | |  __/ (__|   <  __/ |   
 |_____|_| |_|\_/ \___|_| |_|\__\___/|_|   \__, |  \_____|_| |_|\___|\___|_|\_\___|_|   
                                            __/ |                                       
                                           |___/
                                           
]]

local InventoryChecker = Instance.new("ScreenGui")
local Checker = Instance.new("TextButton")
local UIGradient = Instance.new("UIGradient")
local Info = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")
local SelfDestruct = Instance.new("TextButton")
local UIGradient_3 = Instance.new("UIGradient")
local Name = Instance.new("TextLabel")
local UIGradient_4 = Instance.new("UIGradient")

InventoryChecker.Name = "InventoryChecker"
InventoryChecker.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
InventoryChecker.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Checker.Name = "Checker"
Checker.Parent = InventoryChecker
Checker.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Checker.BorderColor3 = Color3.fromRGB(50, 50, 50)
Checker.BorderSizePixel = 2
Checker.Position = UDim2.new(0.433838099, 0, 0.761959016, 0)
Checker.Size = UDim2.new(0, 200, 0, 50)
Checker.Font = Enum.Font.SourceSans
Checker.Text = "Check Invs."
Checker.TextColor3 = Color3.fromRGB(255, 255, 255)
Checker.TextScaled = true
Checker.TextSize = 38.000
Checker.TextStrokeTransparency = 0.000
Checker.TextWrapped = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(203, 215, 253)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 170, 255))}
UIGradient.Parent = Checker

Info.Name = "Info"
Info.Parent = Checker
Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info.BackgroundTransparency = 1.000
Info.BorderColor3 = Color3.fromRGB(0, 0, 0)
Info.BorderSizePixel = 0
Info.Position = UDim2.new(-0.400000006, 0, -1, 0)
Info.Size = UDim2.new(0, 360, 0, 50)
Info.Font = Enum.Font.SourceSansBold
Info.Text = "To see results look in Console."
Info.TextColor3 = Color3.fromRGB(255, 255, 255)
Info.TextScaled = true
Info.TextSize = 14.000
Info.TextStrokeTransparency = 0.000
Info.TextWrapped = true

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(203, 215, 253)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 170, 255))}
UIGradient_2.Parent = Info

SelfDestruct.Name = "Self-Destruct"
SelfDestruct.Parent = Checker
SelfDestruct.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
SelfDestruct.BorderColor3 = Color3.fromRGB(50, 50, 50)
SelfDestruct.BorderSizePixel = 2
SelfDestruct.Position = UDim2.new(0.173838198, 0, 1.2210474, 0)
SelfDestruct.Size = UDim2.new(0, 130, 0, 30)
SelfDestruct.Font = Enum.Font.SourceSans
SelfDestruct.Text = "Destruct"
SelfDestruct.TextColor3 = Color3.fromRGB(255, 255, 255)
SelfDestruct.TextScaled = true
SelfDestruct.TextSize = 14.000
SelfDestruct.TextStrokeTransparency = 0.000
SelfDestruct.TextWrapped = true

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(203, 215, 253)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 170, 255))}
UIGradient_3.Parent = SelfDestruct

Name.Name = "Name"
Name.Parent = Checker
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name.BorderSizePixel = 0
Name.Position = UDim2.new(-0.25, 0, -1.63999999, 0)
Name.Size = UDim2.new(0, 300, 0, 50)
Name.Font = Enum.Font.SourceSansBold
Name.Text = "Inventory Checker"
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextScaled = true
Name.TextSize = 14.000
Name.TextStrokeTransparency = 0.000
Name.TextWrapped = true

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(203, 215, 253)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 170, 255))}
UIGradient_4.Parent = Name

local function FFDB_fake_script() -- Checker.SmoothUIDrag 
	local script = Instance.new('LocalScript', Checker)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
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
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(FFDB_fake_script)()
local function DWHRKJX_fake_script() -- Checker.Execute 
	local script = Instance.new('LocalScript', Checker)

	local button = script.Parent
	local activated = false
	
	-- [[#1 CUSTOM CODE BELOW]] ------------------------------------------
	local function CustomCode() --=======================================================================================================================================================================
		local Players = game:GetService("Players")
	
		local function getPlayerInventory(player)
			local items = {}
	
			-- [[#1 UNEQUIPPED TOOLS CHECKER]] ---------------------------------------------------------------------------------------
			if player:FindFirstChild("Backpack") then
				for _, tool in ipairs(player.Backpack:GetChildren()) do
					if tool:IsA("Tool") then
						table.insert(items, tool.Name)
					end
				end
			end
	
			-- [[#2 EQUIPPED TOOLS CHECK]] ---------------------------------------------------------------------------------------
			if player.Character then
				local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
				if humanoid and humanoid.Parent == player.Character then
					local equipped = humanoid:FindFirstChildOfClass("Tool")
					if equipped then
						table.insert(items, equipped.Name .. " [quipped]")
					end
				end
			end
	
			return items
		end
	
		local function scanAndPrintInventories()
			print("==-----------------------------------------------------------------------------------------------==")
			print("==-----------------------------------------------------------------------------------------------==")
			print(" ")
	
			-- [[#3 EQUIPPED TOOLS CHECK]] ---------------------------------------------------------------------------------------
			local current = #Players:GetPlayers()
			local maxCapacity = Players.MaxPlayers
			print(string.format("Playercount: %d/%d", current, maxCapacity))
	
			print(" ")
	
			local anyPlayers = false
	
			for _, player in ipairs(Players:GetPlayers()) do
				anyPlayers = true
	
				local inventory = getPlayerInventory(player)
	
				local username = player.Name
				local displayName = player.DisplayName
	
				if #inventory > 0 then
					local itemList = table.concat(inventory, ", ")
					print(string.format("%s (%s) - %s", username, displayName, itemList))
				else
					print(string.format("%s (%s) - [Empty]", username, displayName))
				end
			end
	
			if not anyPlayers then
				print("--[ERROR DURING INVENTORY CHECK!]--")
			end
	
			print(" ")
			print("==-----------------------------------------------------------------------------------------------==")
			print("==-----------------------------------------------------------------------------------------------==")
		end
	
		-- [[#4 RUNNER]] ---------------------------------------------------------------------------------------
		scanAndPrintInventories()
	end --=======================================================================================================================================================================
	
	-- [[#2 RUNNER]] ------------------------------------------
	button.Activated:Connect(CustomCode)
end
coroutine.wrap(DWHRKJX_fake_script)()
local function FADVKN_fake_script() -- SelfDestruct.Execute 
	local script = Instance.new('LocalScript', SelfDestruct)

	local gui = script.Parent.Parent.Parent
	
	script.Parent.MouseButton1Click:Connect(function()
		gui:Destroy()
	end)
end
coroutine.wrap(FADVKN_fake_script)()
print(" ")
print(" ")
print(" ")
print(" ")
print(" ")
