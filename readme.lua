local notions = require 'notions'

for i,v in pairs(notions) do
   print(i..':')
   for _, n in pairs(v) do
	  print('', string.format("%-21s%s", n.name, n.description))
   end
end
