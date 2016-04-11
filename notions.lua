return {
	variables = {
		{
			name = "nil", category = "keyword type",
			description = "Learn what is a variable in Lua.",
			examples = {
				"lua> a = 20 + 22",
				"lua> print(a)",
				"lua> print(foo)"
			},
		},
		{
			name = "string / number", category = "keyword type",
			description = "Learn your basics",
			examples = {
				"lua> s = '4'",
				"lua> print(s + 38)",
				-- ?
				"lua> =string.len(s..2)",
				"lua> =string.sub('#314253', 4, 5)"
			}
		},
		{
			name = "table", category = "keyword type",
			description = "Learn what is a table and part of the table library",
			examples = {
				"lua> t = {}",
				"lua> t.foo = 42",
				"lua> t[42] = 42",
				-- ?
				"lua> table.insert(t, 42)",
				"lua> t = table.pack('Hello', 42, 'World')",
				"lua> =table.unpack(t)",
				"lua> table.remove(t, 1)"
			}
		},
		{
			name = "more table", category = "",
			description = "Learn that table is power",
			examples = {
[[
PNJ = {
	name = 'pnj'
	life = 20,
	toString = function (self) return self.name..', '..self.life end,
}

PNJ:toString()
]],
[[
function Class(baseClass)
	baseClass.__index = function (t, i)
		return getmetatable(t)[i]
	end
	return function (arg)
		return setmetatable(arg or {}, baseClass)
	end
end

Foo = Class({name = 'foo'})
=Foo().name
]]
			}
		-- {
		-- 	name = "local", category = "keyword",
		-- 	description = "Learn what is a chunk",
		-- 	examples = {
		-- 		"lua> local x = 42 ; print(x)",
		-- 		"lua> function (x) local x = 42 end"
		-- 	}
		-- }
	},

	lexical = {
		{
			name = "expressions", category = "keyword lexic",
			description = "Learn your basic operators",
			examples = {
				"lua> not false or 42",
				"lua> foo and 42",
				"<, <=, ==, >=, ==, ~=",
				"+ - * / % ^"
			}
		},
		{
			name = "statments", category = "keyword lexic",
			description = "Learn how to loop",
			examples = {
				"lua> if 42 then end",
				"lua> while 42 do end",
				"lua> repeat until 42"
			}
		},
		{
			name = "for", category = "keyword lexic",
			description = "Learn about numeric and generic for loop",
			examples = {
				"lua> for i=1,10 do print(i) end",
				"lua> for i,v in ipairs({4, 2, '\n'}) do io.write(v) end",
				"lua> for i,v in pairs({ [4] = 42, [2] = '42' }) do io.write(i, v) end"
			}
		},
		{
			name = "function", category = "keyword type",
			description = "Learn what is a function",
			examples = {
				"lua> function f(e) return e end",
				"lua> f = function (e) print(e) end ; print(f)",
				"lua> =(function (x, y) return x, y end)(4, 2)"
			}
		},
		{
			name = "more function", category = "keyword closure",
			description = "Learn that function is power",
			examples = {
[[
function iter(t)
	local i = 0
	return function ()
		local e = t[i]
		i = i + 1
		return t[i]
	end
end

for _ in iter({41, 42, 43}) do print(_) end
]], [[
function Function(arg)
	print(arg.name)
	return function (...)
		return arg.fn(...)
	end
end

f = Function{ name="sum", fn=function (x, y) return x + y end }
]]
			}
		}
	},

	-- paradigms = {
	-- 	{
	-- 		name = "imperatif",
	-- 		description = "Lua is a simple scripting language",
	-- 		examples = {
	-- 			"lua> =18 + 24",
	-- 			"lua> =print('42', 42)",
	-- 		}
	-- 	}
	-- }
}
