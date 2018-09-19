local function pleaseInsert()
  term.setBackgroundColour(colours.red)
  term.setTextColour(colours.white)
  center(8,"Please insert disk, then click here.")
  center(14," Click here to quit ")
end


local function drawHeader()
  term.setBackgroundColour(colours.red)
  term.clear()
  term.setBackgroundColour(colours.white)
  term.setCursorPos(1,1)
  term.clearLine()
  term.setTextColour(colours.blue)
  center(1,"GameStation 3 Updater")
end

drawHeader()
pleaseInsert()

while true do
  local evt, button, x, y = os.pullEvent("mouse_click")
  if y == 14 then shell.run("GS3/Menu")
  if fs.exists("disk/boot.elf") then term.clear()
  term.setTextColour(colours.white)
  center(8,"Reading disk...")
  sleep(2)
  shell.run("disk/boot.elf")
  else
end
end
end
