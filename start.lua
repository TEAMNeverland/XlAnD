local json = require("dkjson")
local info_file = "./info.json"

local function file_exists(name)
  local f = io.open(name, "r")
  if f then f:close() return true else return false end
end

if not file_exists(info_file) then
  io.write("📌 اكتب توكن البوت: ")
  local token = io.read()
  io.write("📌 اكتب آيدي المطور الأساسي: ")
  local sudo = io.read()

  local info = {
    token = token,
    sudo = sudo
  }

  local f = io.open(info_file, "w")
  f:write(json.encode(info, { indent = true }))
  f:close()
end

-- نقرأ القيم من info.json
local f = io.open(info_file, "r")
local content = f:read("*a")
f:close()
local info = json.decode(content)

-- نشغل السورس بالتوكن والآيدي
local command = "TG_TOKEN=" .. info.token .. " SUDO_ID=" .. info.sudo .. " ./XlAnD"
os.execute(command)
