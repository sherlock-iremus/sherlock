########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND highway_COMPONENT_NAMES highway::hwy highway::hwy_contrib)
list(REMOVE_DUPLICATES highway_COMPONENT_NAMES)
if(DEFINED highway_FIND_DEPENDENCY_NAMES)
  list(APPEND highway_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES highway_FIND_DEPENDENCY_NAMES)
else()
  set(highway_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(highway_PACKAGE_FOLDER_RELEASE "/Users/amleth/.conan2/p/b/highw05961d0316c3b/p")
set(highway_BUILD_MODULES_PATHS_RELEASE )


set(highway_INCLUDE_DIRS_RELEASE "${highway_PACKAGE_FOLDER_RELEASE}/include")
set(highway_RES_DIRS_RELEASE )
set(highway_DEFINITIONS_RELEASE "-DHWY_STATIC_DEFINE")
set(highway_SHARED_LINK_FLAGS_RELEASE )
set(highway_EXE_LINK_FLAGS_RELEASE )
set(highway_OBJECTS_RELEASE )
set(highway_COMPILE_DEFINITIONS_RELEASE "HWY_STATIC_DEFINE")
set(highway_COMPILE_OPTIONS_C_RELEASE )
set(highway_COMPILE_OPTIONS_CXX_RELEASE )
set(highway_LIB_DIRS_RELEASE "${highway_PACKAGE_FOLDER_RELEASE}/lib")
set(highway_BIN_DIRS_RELEASE )
set(highway_LIBRARY_TYPE_RELEASE STATIC)
set(highway_IS_HOST_WINDOWS_RELEASE 0)
set(highway_LIBS_RELEASE hwy_contrib hwy)
set(highway_SYSTEM_LIBS_RELEASE )
set(highway_FRAMEWORK_DIRS_RELEASE )
set(highway_FRAMEWORKS_RELEASE )
set(highway_BUILD_DIRS_RELEASE )
set(highway_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(highway_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${highway_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${highway_COMPILE_OPTIONS_C_RELEASE}>")
set(highway_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${highway_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${highway_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${highway_EXE_LINK_FLAGS_RELEASE}>")


set(highway_COMPONENTS_RELEASE highway::hwy highway::hwy_contrib)
########### COMPONENT highway::hwy_contrib VARIABLES ############################################

set(highway_highway_hwy_contrib_INCLUDE_DIRS_RELEASE "${highway_PACKAGE_FOLDER_RELEASE}/include")
set(highway_highway_hwy_contrib_LIB_DIRS_RELEASE "${highway_PACKAGE_FOLDER_RELEASE}/lib")
set(highway_highway_hwy_contrib_BIN_DIRS_RELEASE )
set(highway_highway_hwy_contrib_LIBRARY_TYPE_RELEASE STATIC)
set(highway_highway_hwy_contrib_IS_HOST_WINDOWS_RELEASE 0)
set(highway_highway_hwy_contrib_RES_DIRS_RELEASE )
set(highway_highway_hwy_contrib_DEFINITIONS_RELEASE )
set(highway_highway_hwy_contrib_OBJECTS_RELEASE )
set(highway_highway_hwy_contrib_COMPILE_DEFINITIONS_RELEASE )
set(highway_highway_hwy_contrib_COMPILE_OPTIONS_C_RELEASE "")
set(highway_highway_hwy_contrib_COMPILE_OPTIONS_CXX_RELEASE "")
set(highway_highway_hwy_contrib_LIBS_RELEASE hwy_contrib)
set(highway_highway_hwy_contrib_SYSTEM_LIBS_RELEASE )
set(highway_highway_hwy_contrib_FRAMEWORK_DIRS_RELEASE )
set(highway_highway_hwy_contrib_FRAMEWORKS_RELEASE )
set(highway_highway_hwy_contrib_DEPENDENCIES_RELEASE highway::hwy)
set(highway_highway_hwy_contrib_SHARED_LINK_FLAGS_RELEASE )
set(highway_highway_hwy_contrib_EXE_LINK_FLAGS_RELEASE )
set(highway_highway_hwy_contrib_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(highway_highway_hwy_contrib_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${highway_highway_hwy_contrib_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${highway_highway_hwy_contrib_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${highway_highway_hwy_contrib_EXE_LINK_FLAGS_RELEASE}>
)
set(highway_highway_hwy_contrib_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${highway_highway_hwy_contrib_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${highway_highway_hwy_contrib_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT highway::hwy VARIABLES ############################################

set(highway_highway_hwy_INCLUDE_DIRS_RELEASE "${highway_PACKAGE_FOLDER_RELEASE}/include")
set(highway_highway_hwy_LIB_DIRS_RELEASE "${highway_PACKAGE_FOLDER_RELEASE}/lib")
set(highway_highway_hwy_BIN_DIRS_RELEASE )
set(highway_highway_hwy_LIBRARY_TYPE_RELEASE STATIC)
set(highway_highway_hwy_IS_HOST_WINDOWS_RELEASE 0)
set(highway_highway_hwy_RES_DIRS_RELEASE )
set(highway_highway_hwy_DEFINITIONS_RELEASE "-DHWY_STATIC_DEFINE")
set(highway_highway_hwy_OBJECTS_RELEASE )
set(highway_highway_hwy_COMPILE_DEFINITIONS_RELEASE "HWY_STATIC_DEFINE")
set(highway_highway_hwy_COMPILE_OPTIONS_C_RELEASE "")
set(highway_highway_hwy_COMPILE_OPTIONS_CXX_RELEASE "")
set(highway_highway_hwy_LIBS_RELEASE hwy)
set(highway_highway_hwy_SYSTEM_LIBS_RELEASE )
set(highway_highway_hwy_FRAMEWORK_DIRS_RELEASE )
set(highway_highway_hwy_FRAMEWORKS_RELEASE )
set(highway_highway_hwy_DEPENDENCIES_RELEASE )
set(highway_highway_hwy_SHARED_LINK_FLAGS_RELEASE )
set(highway_highway_hwy_EXE_LINK_FLAGS_RELEASE )
set(highway_highway_hwy_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(highway_highway_hwy_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${highway_highway_hwy_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${highway_highway_hwy_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${highway_highway_hwy_EXE_LINK_FLAGS_RELEASE}>
)
set(highway_highway_hwy_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${highway_highway_hwy_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${highway_highway_hwy_COMPILE_OPTIONS_C_RELEASE}>")