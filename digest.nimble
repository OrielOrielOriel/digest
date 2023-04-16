# Package

version       = "0.1.0"
author        = "oriel"
description   = "Hashes or encodes input"
license       = "MIT"
srcDir        = "src"
installExt    = @["nim"]
bin           = @["digest"]


# Dependencies

requires "nim >= 1.6.12"

## Hashing

requires "argon2 >= 1.3.0"

## Encoding

requires base64 >= 0.3.0"
