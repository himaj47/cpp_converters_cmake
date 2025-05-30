function(convert_to_ros_msg TARGET_NAME FILE)
    find_program(msg_generator_path stm_converter REQUIRED)
    
    add_custom_target(${TARGET_NAME}
        COMMAND ${msg_generator_path} ${FILE}
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        COMMENT "generating msg file for - ${FILE} in location ${CMAKE_SOURCE_DIR}"
    )
endfunction()
