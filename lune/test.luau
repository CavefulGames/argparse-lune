local argparse = require("..")

local parser = argparse()
    :name("weqwe")

parser:argument('T', "G", "T")
    :args("")

parser:option("-o --output", "Output file.", "a.out")
parser:option("-I --include", "Include locations."):count("*")
parser:error('www')

local args = parser:parse()