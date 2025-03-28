# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(highway_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(highway_FRAMEWORKS_FOUND_RELEASE "${highway_FRAMEWORKS_RELEASE}" "${highway_FRAMEWORK_DIRS_RELEASE}")

set(highway_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET highway_DEPS_TARGET)
    add_library(highway_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET highway_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${highway_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${highway_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:highway::hwy>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### highway_DEPS_TARGET to all of them
conan_package_library_targets("${highway_LIBS_RELEASE}"    # libraries
                              "${highway_LIB_DIRS_RELEASE}" # package_libdir
                              "${highway_BIN_DIRS_RELEASE}" # package_bindir
                              "${highway_LIBRARY_TYPE_RELEASE}"
                              "${highway_IS_HOST_WINDOWS_RELEASE}"
                              highway_DEPS_TARGET
                              highway_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "highway"    # package_name
                              "${highway_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${highway_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Release ########################################

    ########## COMPONENT highway::hwy_contrib #############

        set(highway_highway_hwy_contrib_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(highway_highway_hwy_contrib_FRAMEWORKS_FOUND_RELEASE "${highway_highway_hwy_contrib_FRAMEWORKS_RELEASE}" "${highway_highway_hwy_contrib_FRAMEWORK_DIRS_RELEASE}")

        set(highway_highway_hwy_contrib_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET highway_highway_hwy_contrib_DEPS_TARGET)
            add_library(highway_highway_hwy_contrib_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET highway_highway_hwy_contrib_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${highway_highway_hwy_contrib_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${highway_highway_hwy_contrib_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${highway_highway_hwy_contrib_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'highway_highway_hwy_contrib_DEPS_TARGET' to all of them
        conan_package_library_targets("${highway_highway_hwy_contrib_LIBS_RELEASE}"
                              "${highway_highway_hwy_contrib_LIB_DIRS_RELEASE}"
                              "${highway_highway_hwy_contrib_BIN_DIRS_RELEASE}" # package_bindir
                              "${highway_highway_hwy_contrib_LIBRARY_TYPE_RELEASE}"
                              "${highway_highway_hwy_contrib_IS_HOST_WINDOWS_RELEASE}"
                              highway_highway_hwy_contrib_DEPS_TARGET
                              highway_highway_hwy_contrib_LIBRARIES_TARGETS
                              "_RELEASE"
                              "highway_highway_hwy_contrib"
                              "${highway_highway_hwy_contrib_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET highway::hwy_contrib
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${highway_highway_hwy_contrib_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${highway_highway_hwy_contrib_LIBRARIES_TARGETS}>
                     )

        if("${highway_highway_hwy_contrib_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET highway::hwy_contrib
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         highway_highway_hwy_contrib_DEPS_TARGET)
        endif()

        set_property(TARGET highway::hwy_contrib APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${highway_highway_hwy_contrib_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET highway::hwy_contrib APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${highway_highway_hwy_contrib_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET highway::hwy_contrib APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${highway_highway_hwy_contrib_LIB_DIRS_RELEASE}>)
        set_property(TARGET highway::hwy_contrib APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${highway_highway_hwy_contrib_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET highway::hwy_contrib APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${highway_highway_hwy_contrib_COMPILE_OPTIONS_RELEASE}>)


    ########## COMPONENT highway::hwy #############

        set(highway_highway_hwy_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(highway_highway_hwy_FRAMEWORKS_FOUND_RELEASE "${highway_highway_hwy_FRAMEWORKS_RELEASE}" "${highway_highway_hwy_FRAMEWORK_DIRS_RELEASE}")

        set(highway_highway_hwy_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET highway_highway_hwy_DEPS_TARGET)
            add_library(highway_highway_hwy_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET highway_highway_hwy_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${highway_highway_hwy_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${highway_highway_hwy_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${highway_highway_hwy_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'highway_highway_hwy_DEPS_TARGET' to all of them
        conan_package_library_targets("${highway_highway_hwy_LIBS_RELEASE}"
                              "${highway_highway_hwy_LIB_DIRS_RELEASE}"
                              "${highway_highway_hwy_BIN_DIRS_RELEASE}" # package_bindir
                              "${highway_highway_hwy_LIBRARY_TYPE_RELEASE}"
                              "${highway_highway_hwy_IS_HOST_WINDOWS_RELEASE}"
                              highway_highway_hwy_DEPS_TARGET
                              highway_highway_hwy_LIBRARIES_TARGETS
                              "_RELEASE"
                              "highway_highway_hwy"
                              "${highway_highway_hwy_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET highway::hwy
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${highway_highway_hwy_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${highway_highway_hwy_LIBRARIES_TARGETS}>
                     )

        if("${highway_highway_hwy_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET highway::hwy
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         highway_highway_hwy_DEPS_TARGET)
        endif()

        set_property(TARGET highway::hwy APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${highway_highway_hwy_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET highway::hwy APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${highway_highway_hwy_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET highway::hwy APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${highway_highway_hwy_LIB_DIRS_RELEASE}>)
        set_property(TARGET highway::hwy APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${highway_highway_hwy_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET highway::hwy APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${highway_highway_hwy_COMPILE_OPTIONS_RELEASE}>)


    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET highway::highway APPEND PROPERTY INTERFACE_LINK_LIBRARIES highway::hwy_contrib)
    set_property(TARGET highway::highway APPEND PROPERTY INTERFACE_LINK_LIBRARIES highway::hwy)

########## For the modules (FindXXX)
set(highway_LIBRARIES_RELEASE highway::highway)
