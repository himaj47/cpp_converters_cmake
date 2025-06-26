function(convert_to_ros_msg TARGET_NAME FILE)
    find_program(msg_generator_path stm_converter REQUIRED)

    get_filename_component(basename ${FILE} NAME_WE)
    set(msg_description "${CMAKE_CURRENT_BINARY_DIR}/${basename}_desc.yaml")

    add_custom_command(
    OUTPUT ${msg_description}
    COMMAND ${msg_generator_path} ${FILE} --out-description "${msg_description}" --package "${PROJECT_NAME}"
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    DEPENDS ${FILE}
    VERBATIM
    COMMENT "Generating message description from ${FILE}"
    )

    install(
        FILES ${msg_description}
        DESTINATION share/${PROJECT_NAME}/msg_descriptions
    )
 
    add_custom_target(${TARGET_NAME}
        DEPENDS ${msg_description}
    )
endfunction()
