clear() --clear the console from last run
local keyboardIdentifier = '0000AAA'
if keyboardIdentifier == '0000AAA' then
	lmc_assign_keyboard('MACROS');
else lmc_device_set_name('MACROS', keyboardIdentifier);
end
--This lists connected keyboards
dev = lmc_get_devices()
for key,value in pairs(dev) do
  print(key..':')
  for key2,value2 in pairs(value) do print('  '..key2..' = '..value2) end
end

