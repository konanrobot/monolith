
library_with_tests("minimum_linear"
	"cleaneling"
	"glpk"
	"glucose"
	"libprotobuf"
	"minimum_core"
	"minimum_isomorphism"
	"minisat-lib-static"
	"minisatp-lib-static"
	"scs")

link_to_coin("minimum_linear")

add_subdirectory(colgen)
add_subdirectory(data)
add_subdirectory(examples)