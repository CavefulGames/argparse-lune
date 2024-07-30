--!strict
local argparse = require("..")

local parser = argparse("test", "An example.")
parser:argument "direction"
    :args("1-3")

    -- parser:option("-o --output", "Output file.", "a.out"):args("1+")
    -- parser:option("-I --include", "Include locations."):count("*")

    parser:flag("-v --verbose", "Sets verbosity level.")
    :count "0-2"
    :target "verbosity"



parser:mutex(
    parser:option("", "T")
)

parser:command("" , true)

-- parser:option("", description)
--    :choices {"north", "south", "east", "west"}   


-- type t2 = 
--     "te" |
--     "tes2"

-- local t3 = {
--     a = (0 :: any) :: t2,
-- }
-- type test = typeof((function()
-- 	return (t3.a)
-- end)())

-- function f(t: test)
--     return
-- end

-- f("tet")
