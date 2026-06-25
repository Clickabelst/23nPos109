workspace.ChildAdded:Connect(function(model)
	task.wait()
	if model:IsA("Model") then
		for _, c in pairs(model:GetDescendants()) do
			if c:IsA("BasePart") and c.Name == "HumanoidRootPart" then
				local h = model:FindFirstChild("Head")
				if h and h:IsA("BasePart") then
					h.Size = Vector3.new(8, 8, 8)
				end
			end
		end
	end
end)

for _, v in pairs(workspace:GetChildren()) do
	if v:IsA("Model") then
		for _, c in pairs(v:GetDescendants()) do
			if c:IsA("BasePart") and c.Name == "HumanoidRootPart" then
				local h = v:FindFirstChild("Head")
				if h and h:IsA("BasePart") then
					h.Size = Vector3.new(8, 8, 8)
				end
			end
		end
	end
end
