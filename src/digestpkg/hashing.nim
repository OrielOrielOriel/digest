import md5
import std/sha1

proc doMd5*(input: string): string =
  return getMD5(input)

proc doSha1*(input: string): string =
  return $secureHash(input)
