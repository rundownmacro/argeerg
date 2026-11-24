local function get_time()
    local t = globals.realtime
    if type(t) == "function" then t = t() end
    if type(t) == "number" then return t end

    if os and type(os.clock) == "function" then
        local ok, v = pcall(os.clock)  -- called with ()
        if ok and type(v) == "number" then return v end
    end
    return nil
end

events.on("paint", function()
    local now = get_time()
    if not now then return end
    if now - last_print >= 1.0 then
        last_print = now
        print("sraka exploit emulated")
    end
end)
