
        tBtn.Text = "START VOID"
        tBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        createNotify("Void Stopped")
    end
end)

task.spawn(function()
    while true do
        if ACTIVE and root and root.Parent then
            root.Velocity = Vector3.zero
            root.CFrame = CFrame.new(Vector3.new(math.random(-RANGE, RANGE), math.random(8000, 18000), math.random(-RANGE, RANGE)))
            RunService.Heartbeat:Wait()
        else task.wait(0.1) end
    end
end)
