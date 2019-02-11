#header-only library
include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO mattnewport/mathlib
    REF v0.1.3
    SHA512 26ecf6ce3f5974cced0733e5250b5e79d19617a71df1a541665013dda16e845d342a4c835c333de7e75f8f2f585b2b421d231d66dc4db6f0935751eb79677b5e
    HEAD_REF VS2017-Update-5-Updates
)

# Put the licence file where vcpkg expects it
file(COPY ${SOURCE_PATH}/README.md DESTINATION ${CURRENT_PACKAGES_DIR}/share/mathlib/README.md)
file(RENAME ${CURRENT_PACKAGES_DIR}/share/mathlib/README.md ${CURRENT_PACKAGES_DIR}/share/mathlib/copyright)

# Copy the mathlib header files
file(GLOB HEADER_FILES ${SOURCE_PATH}/MathLib/include/*.h)
file(COPY ${HEADER_FILES} DESTINATION ${CURRENT_PACKAGES_DIR}/include/mathlib)