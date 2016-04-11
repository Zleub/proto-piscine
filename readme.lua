local notions = require 'notions'

local t = {}
for i,v in pairs(notions) do
	print(i..':')
	for _, n in pairs(v) do
		print('', string.format("%-21s%s", n.name, n.description))
		t[n.name] = n
	end
end

function dump_examples(t, search)
	for _,v in ipairs(t[search].examples) do print(v) end
end

repeat
	search = io.read()
	if t[search] then dump_examples(t, search)
	elseif notions[search] then
		for _,v in ipairs(notions[search]) do dump_examples(t, v.name) end
	end
until search == nil
