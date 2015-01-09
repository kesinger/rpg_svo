find_path(BOOST_INCLUDE_DIR boost/thread.hpp PATH_SUFFIXES include)
find_library(BOOST_THREAD_LIBRARY boost_system) #-gcc-mt-1_53)
find_library(BOOST_SYSTEM_LIBRARY boost_thread) #-gcc-mt-1_53)

if(BOOST_INCLUDE_DIR AND BOOST_THREAD_LIBRARY AND BOOST_SYSTEM_LIBRARY)
    set(BOOST_FOUND TRUE)
endif(BOOST_INCLUDE_DIR AND BOOST_THREAD_LIBRARY AND BOOST_SYSTEM_LIBRARY)

if(BOOST_FOUND)
    message(STATUS "Boost found (include: ${BOOST_INCLUDE_DIR}, libs: ${BOOST_THREAD_LIBRARY} ${BOOST_SYSTEM_LIBRARY})")
endif(BOOST_FOUND)

set(Boost_INCLUDE_DIRS ${BOOST_INCLUDE_DIR})
set(Boost_LIBRARIES ${BOOST_THREAD_LIBRARY} ${BOOST_SYSTEM_LIBRARY})
set(Boost_FOUND ${BOOST_FOUND})
