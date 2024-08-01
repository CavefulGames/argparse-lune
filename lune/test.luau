--!strict
local argparse = require("..")

local parser = argparse()

-- print(parser:mutex(parser:argument("testing"):name("T"):args(""):name(""), parser:description("F"):name("T"):argument("www")))

-- parser:pparse({"-h" , "-h"})
-- parser:flag("T")

-- parser:argument(""):name("test")

-- print(parser:argument("w"):args("*"):target("qwe"))


-- parser:argument("wwww"):choices({"w"})

-- -- print(parser)
-- -- print(parser:argument(""):name("test"):description("testss"):default("wwww"):convert({}):args("*"))

-- -- print(parser:option("test"):convert(function()


-- -- end))  
-- -- print(parser:option("test"):convert({T=0 , R=""}):count(0))

-- -- print(parser:flag("test"):name(""):description("www"):default("wqeqweq"):convert({test="test"}):args("*"):count(4))

-- type main2 = ({any}) -> ()
-- local a = function(p) end :: main2
-- a({"" , 2})

-- type main = {any}
-- local t: main = {}
-- t={"" , 2}


-- local parser = argparse();
-- parser:argument "pair"
--     :args("*")

-- parser:option("test")
--     :args("*")d
--     :description

-- 타입 정의
-- type MyObject = {
--     name: string,
-- }

-- type TFunction = () -> (string | MyObject)

-- -- t 함수 정의
-- local function t(): TFunction
--     return function()
--         if math.random() > 0.5 then
--             return "This is a string"
--         else
--             return { name = "chat gpt" }
--         end
--     end
-- end

-- -- t 함수 호출 및 처리
-- local result = t()()

-- if type(result) == "string" then
--     print(result)
-- elseif type(result) == "table" and result.name then
--     print(result.name)
-- end

-- 타입 정의

-- -- t 함수 정의
-- local function t(): (MyObject) -> MyObject
--     return function(obj: MyObject): MyObject
--         return obj
--     end
-- end

-- -- a 객체 생성
-- local a: MyObject = t()({ name = "chat gpt" })

-- -- a 객체를 사용
-- print(a.name)  -- "chat gpt"


-- print(parser:parse())
-- print(parser:pparse())

-- local parser = argparse("test", "An example.")
--                         :name('name')

-- parser:argument "direction"
--     :args("1-3")

-- parser:argument( " T " )
--         :choices({"ttt"})
--         :args("*")

    -- parser:option("-o --output", "Output file.", "a.out"):args("1+")
    -- parser:option("-I --include", "Include locations."):count("*")

    -- parser:flag("-v --verbose", "Sets verbosity level.")
    -- :count "0-2"
    -- :target "verbosity"

-- parser:flag("t" , "P")
            
-- parser:option("test", "P")



-- parser:mutex(
--     parser:option("", "T")
-- )

-- parser:command("")

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
