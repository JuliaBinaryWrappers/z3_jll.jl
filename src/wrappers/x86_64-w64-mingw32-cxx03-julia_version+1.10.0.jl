# Autogenerated wrapper script for z3_jll for x86_64-w64-mingw32-cxx03-julia_version+1.10.0
export libz3, libz3jl, z3

using GMP_jll
using libcxxwrap_julia_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("z3")
JLLWrappers.@declare_library_product(libz3, "libz3.dll")
JLLWrappers.@declare_library_product(libz3jl, "libz3jl.dll")
JLLWrappers.@declare_executable_product(z3)
function __init__()
    JLLWrappers.@generate_init_header(GMP_jll, libcxxwrap_julia_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libz3,
        "bin\\libz3.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libz3jl,
        "bin\\libz3jl.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        z3,
        "bin\\z3.exe",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
