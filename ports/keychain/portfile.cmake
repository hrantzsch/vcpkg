vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO hrantzsch/keychain
    REF v1.2.0
    SHA512 8faed892e6d84ad3d31056682dc4bb18ff8c12a3eababfa58e3c01ad369da1d9b0772198e15196b49b4de895a44ff7e96a59b56b87011f95ec88bcae819fe6ff
    HEAD_REF master
)

vcpkg_cmake_configure (
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()
vcpkg_fixup_pkgconfig()
vcpkg_copy_pdbs()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
