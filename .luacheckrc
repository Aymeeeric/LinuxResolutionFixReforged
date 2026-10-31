-- luacheck configuration (https://github.com/lunarmodules/luacheck)
-- Run from the addon folder:  luacheck .
std = "lua51"
max_line_length = 160
ignore = {
    "113", -- accessing an undefined global: the WoW API is made of globals
    "212", -- unused argument (often `self` in frame scripts)
}
globals = {
    "SlashCmdList", "SLASH_LINUXRESOLUTIONFIXREFORGED1",
}
