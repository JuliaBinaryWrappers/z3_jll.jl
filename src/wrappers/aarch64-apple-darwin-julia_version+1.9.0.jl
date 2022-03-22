# Autogenerated wrapper script for z3_jll for aarch64-apple-darwin-julia_version+1.9.0
export libz3, libz3jl, z3

using libcxxwrap_julia_jll
JLLWrappers.@generate_wrapper_header("z3")
JLLWrappers.@declare_library_product(libz3, "@rpath/libz3.4.8.dylib")
JLLWrappers.@declare_library_product(libz3jl, "@rpath/libz3jl.dylib")
JLLWrappers.@declare_executable_product(z3)
function __init__()
    JLLWrappers.@generate_init_header(libcxxwrap_julia_jll)
    JLLWrappers.@init_library_product(
        libz3,
        "lib/libz3.4.8.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libz3jl,
        "lib/libz3jl.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        z3,
        "bin/z3",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
