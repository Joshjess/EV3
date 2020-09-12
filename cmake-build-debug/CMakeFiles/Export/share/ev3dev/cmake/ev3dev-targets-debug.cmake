#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ev3dev::ev3dev" for configuration "Debug"
set_property(TARGET ev3dev::ev3dev APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ev3dev::ev3dev PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libev3dev.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ev3dev::ev3dev )
list(APPEND _IMPORT_CHECK_FILES_FOR_ev3dev::ev3dev "${_IMPORT_PREFIX}/lib/libev3dev.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
