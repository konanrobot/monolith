
if (CMAKE_CXX_COMPILER_ID STREQUAL "Clang" OR CMAKE_COMPILER_IS_GNUCXX)
	include(CheckCXXCompilerFlag)
	check_cxx_compiler_flag(-std=c++2a SUPPORTS_STD_CXX2A)
	check_cxx_compiler_flag(-std=c++17 SUPPORTS_STD_CXX17)
	check_cxx_compiler_flag(-std=c++1z SUPPORTS_STD_CXX1Z)
	check_cxx_compiler_flag(-std=c++14 SUPPORTS_STD_CXX14)
	check_cxx_compiler_flag(-std=c++1y SUPPORTS_STD_CXX1Y)

	if(SUPPORTS_STD_CXX2A)
		message("-- Enabling C++2a support with -std=c++2a.")
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++2a")
	elseif(SUPPORTS_STD_CXX17)
		message("-- Enabling C++17 support with -std=c++17.")
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")
	elseif(SUPPORTS_STD_CXX1Z)
		message("-- Enabling C++17 support with -std=c++1z.")
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++1z")
	elseif(SUPPORTS_STD_CXX14)
		message("-- Enabling C++14 support with -std=c++14.")
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14")
	elseif(SUPPORTS_STD_CXX1Y)
		message("-- Enabling C++14 support with -std=c++1y.")
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++1y")
	else()
		message(FATAL_ERROR "Compiler does not support C++14.")
	endif()
elseif (MSVC)
  # Use the latest C++ standard.
  add_definitions("/std:c++latest")	
endif()
