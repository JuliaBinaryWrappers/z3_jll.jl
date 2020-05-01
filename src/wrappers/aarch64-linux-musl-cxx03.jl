# Autogenerated wrapper script for z3_jll for aarch64-linux-musl-cxx03
export z3, libz3

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `z3`
const z3_splitpath = ["bin", "z3"]

# This will be filled out by __init__() for all products, as it must be done at runtime
z3_path = ""

# z3-specific global declaration
function z3(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(z3_path)
    end
end


# Relative path to `libz3`
const libz3_splitpath = ["lib", "libz3.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libz3_path = ""

# libz3-specific global declaration
# This will be filled out by __init__()
libz3_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libz3 = "libz3.so.4.8"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"z3")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global z3_path = normpath(joinpath(artifact_dir, z3_splitpath...))

    push!(PATH_list, dirname(z3_path))
    global libz3_path = normpath(joinpath(artifact_dir, libz3_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libz3_handle = dlopen(libz3_path)
    push!(LIBPATH_list, dirname(libz3_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

