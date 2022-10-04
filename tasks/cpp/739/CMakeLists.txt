add_executable(
  739
  test.cc
  solution.cc
)

target_link_libraries(
  739
  GTest::gtest_main
)

gtest_discover_tests(739)
