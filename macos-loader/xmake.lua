target("stfc-community-patch-loader")
do
    set_kind("binary")
    add_files("src/*.cc")
    add_files("src/*.mm")
    add_headerfiles("src/*.h")
    add_frameworks("Foundation")
    add_packages("inifile-cpp")
end