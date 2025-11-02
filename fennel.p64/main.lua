--[[pod_format="raw",created="2025-11-02 21:07:40",modified="2025-11-02 22:27:18",revision=6]]
include './fennel.lua'

function _init()
	local fennel_src = fetch("fennel.lua")
	local fennel_loader = load(fennel_src)
	fennel = fennel_loader()
	
	local fennel_code = fetch("main.fnl")
	local lua_code = fennel.compileString(fennel_code)
	
	local user_code = load(lua_code)
	user_code()
end