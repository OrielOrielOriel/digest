# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest
import digestpkg/encoding

var input = "digest_test_string 1234"

test "base64":
  check doBase64(input) == "ZGlnZXN0X3Rlc3Rfc3RyaW5nIDEyMzQ="
