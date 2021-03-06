find_path(SOPHUS_INCLUDE_DIR sophus/se3.h PATH_SUFFIXES include)
#find_library(SOPHUS_LIBRARY Sophus)

#if(SOPHUS_INCLUDE_DIR AND SOPHUS_LIBRARY)
    set(SOPHUS_FOUND TRUE)
#endif(SOPHUS_INCLUDE_DIR AND SOPHUS_LIBRARY)

if(SOPHUS_FOUND)
    message(STATUS "Sophus found (include: ${SOPHUS_INCLUDE_DIR})")
endif(SOPHUS_FOUND)

set(Sophus_INCLUDE_DIRS ${SOPHUS_INCLUDE_DIR})
set(Sophus_FOUND ${SOPHUS_FOUND})

