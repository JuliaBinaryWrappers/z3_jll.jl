# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule z3_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("z3")
JLLWrappers.@generate_main_file("z3", Base.UUID("1bc4e1ec-7839-5212-8f2f-0d16b7bd09bc"))
end  # module z3_jll
