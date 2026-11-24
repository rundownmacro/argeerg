-- @author Example
-- @uid 1
-- Prints "sraka exploit emulated" every 1 second.
-- Does not require Allow Insecure.
-- Uses the existing (lowercase) API from the repo examples:
-- events.on("paint", ...) + globals.realtime / os.clock()

local last_print = 0

events.on("paint", function()
    -- globals.realtime is nil when there is no network game client
    -- os.clock() is the same value in this API, kept as fallback
    local now = globals.realtime or os.clock()
    if not now then
        return
    end

    if now - last_print >= 1.0 then
        last_print = now
        print("sraka exploit emulated")
    end
end)

events.on("unload", function()
    print("sraka exploit emulated unloaded")
end)
