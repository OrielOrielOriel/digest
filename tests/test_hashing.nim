import unittest
import digestpkg/hashing

var input = "digest_test_string 1234"

test "md5":
  check doMd5(input) == "54f45384113b5c8e4a836a48c99bd285"

test "sha1":
  check doSha1(input) == "6C09D9F8E876BE239634EA259EBAEB5E934B97FE"
