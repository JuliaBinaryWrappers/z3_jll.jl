# Autogenerated wrapper script for z3_jll for i686-linux-gnu-cxx03-julia_version+1.9.0
export libz3, libz3jl, z3

using GMP_jll
using libcxxwrap_julia_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("z3")
JLLWrappers.@declare_library_product(libz3, "libz3.so.4.13")
JLLWrappers.@declare_library_product(libz3jl, "libz3jl.so")
JLLWrappers.@declare_executable_product(z3)
function __init__()
    JLLWrappers.@generate_init_header(GMP_jll, libcxxwrap_julia_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libz3,
        "lib/libz3.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libz3jl,
        "lib/libz3jl.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        z3,
        "bin/z3",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
