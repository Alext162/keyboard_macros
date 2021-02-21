lmc.minimizeToTray = true
lmc_minimize()

lmc_print_devices()   -- get the ID of the second keyboard from the stack that this line creates
lmc_device_set_name('MACROS1', "65B0F15") -- substitute the ID you have found here
-- lmc_assign_keyboard('MACROS1') -- if Lua doesn't work try adding this line

-- define callback for whole device, assign each key of the keyboard to an imaginary key (usually, keyboards have F1-F12, so we start assigning keys to F13)
lmc_set_handler('MACROS1',function(button, direction)
    if (direction == 1) then return end

    if (button == 113) then
    lmc_send_keys('^%(k)', 50)

    elseif (button == 114) then
    lmc_send_keys('^+{ESC}', 50)

    elseif (button == 115) then
    lmc_send_keys('^%{F11}', 50)

    elseif (button == 82) then
    lmc_send_keys('+#(s)', 50)

    elseif (button == 32) then
    lmc_send_keys('^%+(m)', 50)

    elseif (button == 66) then
    lmc_send_keys('^%+(d)', 50)

    elseif (button == 81) then
    lmc_send_keys('^%+(q)', 50)


    elseif (button == 65) then
    lmc_send_keys('^%+(s)', 50)

    elseif (button == 87) then
    lmc_send_keys('%+(W)', 50)

    elseif (button == 112) then
    lmc_send_keys('^%+(r)', 50)

    elseif (button == 88) then
    lmc_send_keys('%{PGUP}', 50)

    elseif (button == 90) then
    lmc_send_keys('%{PGDN}', 50)

    elseif (button == 50) then
    lmc_send_keys('^%{LEFT}', 50)

    elseif (button == 52) then
    lmc_send_keys('^%{RIGHT}', 50)

    elseif (button == 51) then
    lmc_send_keys('^%{DOWN}', 50)

    elseif (button == 53) then
    lmc_send_keys('+^%{LEFT}', 50)

    elseif (button == 54) then
    lmc_send_keys('+^%{RIGHT}', 50)
  end
end
)

-- if you wanted more keyboards, just repeat line 5 with its id and a assign a new name, like MACROS2.
-- then repeat the code that starts in line 9, but change the name to the one you have just assigned.
-- For exemple, to: lmc_set_handler('MACROS2', ...

