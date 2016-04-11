local n = {
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

	  -- {
		 -- name = "local", category = "keyword type"
	  -- }
   }
}
