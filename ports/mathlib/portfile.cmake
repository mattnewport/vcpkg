#header-only library
include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO mattnewport/mathlib
    REF v0.1.2
    SHA512 96ee47138d86b96427bf9b0c9c7aa0c2f885b6184ea97ff9d11f1e9905a4ba3a1f9cc820ec2cc79663922c4d2468cad75e0c58e30d91eb456912d748d76d3b93
    HEAD_REF VS2017-Update-5-Updates
)

# Put the licence file where vcpkg expects it
file(COPY ${SOURCE_PATH}/README.md DESTINATION ${CURRENT_PACKAGES_DIR}/share/mathlib/README.md)
file(RENAME ${CURRENT_PACKAGES_DIR}/share/mathlib/README.md ${CURRENT_PACKAGES_DIR}/share/mathlib/copyright)

# Copy the mathlib header files
file(GLOB HEADER_FILES ${SOURCE_PATH}/MathLib/include/*.h)
file(COPY ${HEADER_FILES} DESTINATION ${CURRENT_PACKAGES_DIR}/include/mathlib)