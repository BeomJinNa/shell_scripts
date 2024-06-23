set(SOURCES
	srcs/main.c
	)

add_executable(PROGRAM_NAME ${SOURCES})

target_include_directories(PROGRAM_NAME PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/includes)

target_link_libraries(PROGRAM_NAME ${CMAKE_CURRENT_SOURCE_DIR}/libft/libft.a)

add_custom_target(libft
	COMMAND make
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/libft
	)

add_dependencies(PROGRAM_NAME libft)
