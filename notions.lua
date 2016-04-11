return {
	variables = {
		{
			name = "nil", category = "keyword type",
			description = "Learn what is a variable in Lua.",
			examples = {
				"lua-prompt> a = 20 + 22",
				"lua-prompt> print(a)",
				"lua-prompt> print(foo)"
			},
		},
		{
			name = "string / number", category = "keyword type",
			description = "Learn your basics",
			examples = {
				"lua-prompt> s = '4'",
				"lua-prompt> print(s + 38)",
				"lua-prompt> print(s..2)"
			}
		},
		{
			name = "table", category = "keyword type",
			description = "Learn what is a table",
			examples = {
				"lua-prompt> t = {}",
				"lua-prompt> t.foo = 42",
				"lua-prompt> t[42] = 42",
			}
		},
		{
			name = "function" category = "keyword type",
			description = "Learn what is a function",
			examples = {
				"lua-prompt> f = function (e) print(e) end",
				"lua-prompt> (function (e) print(e) end)(42)"
			}
		}
	},

	lexical = {
		{
			name = "expressions", category = "keyword lexic",
			description = "Learn your basic operators",
			examples = {
				"lua-prompt> not false or 42",
				"lua-prompt> foo and 42",
				"<, <=, ==, >=, ==, ~=",
				"+ - * / % ^"
			}
		},
		{
			name = "statments", category = "keyword lexic",
			description = "Learn how to loop",
			examples = {
				"lua-prompt> if 42 then end",
				"lua-prompt> while 42 do end",
				"lua-prompt> repeat until 42"
			}
		}
	},

	scope = {
		{
			name = "local", category = "keyword",
			description = "Learn what is a chunk",
			examples = {
				"lua-prompt> local x = 42 ; print(x)",
				"lua-prompt> function (x) local x = 42 end"
			}
		}
	}
}
