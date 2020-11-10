import Pkg
import JSON

@show LOAD_PATH
@show DEPOT_PATH



# JSON.parse - string or stream to Julia data structures
s = "{\"a_number\" : 5.0, \"an_array\" : [\"string\", 9]}"
j = JSON.parse(s)
#  Dict{AbstractString,Any} with 2 entries:
#    "an_array" => {"string",9}
#    "a_number" => 5.0

# JSON.json - Julia data structures to a string
@show JSON.json([2,3])
#  "[2,3]"
@show JSON.json(j)
