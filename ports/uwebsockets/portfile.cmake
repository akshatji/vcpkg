vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO uNetworking/uWebSockets
    REF 03fca626a95130ab80f86adada54b29d27242759 # v18.13.0
    SHA512 0005b55ed1a86b5c4473f22512f96425da714a8ef3985e02e2d2c26a812cd49bf70b28b0ca68f66103537fc25482e14875034ce73883b7c47ff8bb6c30ec7693
    HEAD_REF master
)

file(COPY ${SOURCE_PATH}/src  DESTINATION ${CURRENT_PACKAGES_DIR}/include)
file(RENAME ${CURRENT_PACKAGES_DIR}/include/src ${CURRENT_PACKAGES_DIR}/include/uwebsockets/)

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)
