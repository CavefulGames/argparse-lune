--!strict
local argparse = require("..")
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
cli:group('test', wally)
-- print(cli)
cli:parse()