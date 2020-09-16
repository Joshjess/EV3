# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.18.2)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(cpr-populate NONE)

include(ExternalProject)
ExternalProject_Add(cpr-populate
                     "UPDATE_DISCONNECTED" "False" "GIT_REPOSITORY" "https://github.com/whoshuu/cpr.git" "GIT_TAG" "c8d33915dbd88ad6c92b258869b03aba06587ff9"
                    SOURCE_DIR          "/mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/cpr-src"
                    BINARY_DIR          "/mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/cpr-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
)


