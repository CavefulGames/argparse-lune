--!strict
local argparse = require("..")
local result = {'string'} :: any
local test = `\{{result}\}`

-- local parser = argparse("test")
-- local init = parser:command("init", "Initializes a kitty project")
-- init:option("--path", "Project path")

-- local function getRegistries(registry: { [string]: string? })
-- 	local result = {}
-- 	for name, url in registry do
-- 		local reg = registries[name]
-- 		if reg and url then
-- 			table.insert(result, reg.new(url))
-- 		end
-- 	end
-- 	return result
-- end

local cli = argparse("kitty")
local init = cli:command("init", "Initializes a kitty project")
init:option("--path", "Project path")
local add = cli:command("add", "Add a package but does not install them")
add:argument("name", "Package name to add")
add:option("--path", "Project path")
add:flag("-C --core", "Core packages")
add:flag("-D --dev", "Developer packages")


local install = cli:command("install", "Fetch added packages and install them or install the target package if given")
install:argument("target", "Package name to install"):args("?")
install:option("--path", "Project path")
install:flag("-C --core", "Core packages")
install:flag("-D --dev", "Developer packages")
install:action(function()
	
end)

local wally = cli:command("wally", "Wally commands that depends on wally")
local wallyInit = wally:command("init", "Initialize a new Wally project")
wallyInit:argument("path", "The path to the project to initialize. Defaults to the current directory"):args("?")
local wallyLogin = wally:command("login", "Log into a registry")
wallyLogin:action(function()
	print("hi")
end)

-- print(cli:get_usage())
cli:parse()

-- print(parser:usage('test'))
-- print(parser)

-- parser:command("comm"):action(function()

-- end)

-- parser:option("opti"):action(function()

-- end):args("1+")

-- print(parser)

-- print(typeof(parser))
-- parser:name('www')

-- parser:argument('')

-- type fns = {
--     pri: (self: fns | typeof(setmetatable({} :: fns, {} :: fns2))) -> ()
-- }

-- type fns2 = {
--     __call: (self: any) -> (fns)
-- }

-- local wp = {
--     pri = function(self)
--         print(self)
--     end
-- }

-- local pp = (wp::any)::typeof(setmetatable({} :: fns, {} :: fns2))
-- pp():pri()
-- pp:pri()

--     parser:name"t"
-- -- parser:command('init')

-- print(parser:command('w'))
-- print(parser:action(function()

-- end))
-- parser.command(parser , 'test')
-- parser:name("test")

-- print(parser:action(function()

-- end))

-- parser:action(function(args: {})
-- return '' , task.spawn(function()

-- end)
-- end)
-- parser:action(function()

-- end)

-- print(parser:command"":help_max_width(10):usage_margin(01):help_description_margin(10):help_usage_margin(10):add_complete('ww'))
-- print(parser:option("test"):help_vertical_space(22))

-- print(parser:group("testinggroup",
-- parser:flag('t'),parser:option('w')):flag('w'))

-- parser:flag("--candy")
-- parser:flag("--no-candy"):target("candy"):action("store_false")
-- parser:flag("--rain", "Enable rain", false):argname({'wwqweq','ttwtqwr'})
-- print(
-- parser:argument("test"):convert(tonumber),
-- parser:argument("test"):args("1+"),
-- parser:argument("w"):target("w"):name("testing")
-- parser:option("test"):defmode("t"):args("1+")
-- parser:flag"T":action(function()

-- end):init({f='22'})
-- parser:option("--exceptions"):args("*"):action("concat"):init({"foo", "bar"})
-- )

-- print(parser.defmode)
--     :require_command(false)
-- parser:command("install")
--     :require_command(false)

-- :summary("st")
-- print(parser:command("install")
--     :name("testing")
-- :description("test"):epilog("wwww"):argument("test"))

-- print(parser:command("st")
--     :name("testing")
-- :description("test"):epilog("wwww"):summary())

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
