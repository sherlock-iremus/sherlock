########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(highway_FIND_QUIETLY)
    set(highway_MESSAGE_MODE VERBOSE)
else()
    set(highway_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/highwayTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${highway_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(highway_VERSION_STRING "1.0.6")
set(highway_INCLUDE_DIRS ${highway_INCLUDE_DIRS_RELEASE} )
set(highway_INCLUDE_DIR ${highway_INCLUDE_DIRS_RELEASE} )
set(highway_LIBRARIES ${highway_LIBRARIES_RELEASE} )
set(highway_DEFINITIONS ${highway_DEFINITIONS_RELEASE} )


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${highway_BUILD_MODULES_PATHS_RELEASE} )
    message(${highway_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


