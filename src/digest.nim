import std/parseopt, os
import digestpkg/encoding, digestpkg/hashing

proc parseArgs(): (string, string) =
  var algorithm: string = ""
  var input: string = ""

  if paramCount() == 0:
    quit(0)

  for kind, key, val in getopt():
    case kind
    of cmdShortOption, cmdLongOption:
      case key
      of "algorithm", "a":
        algorithm = val
      else:
        discard
    of cmdArgument:
      input = key
    else:
      discard

  return (algorithm, input)

proc generateDigest(algorithm: string, input: string): string =
  case algorithm
  of "base64":
    return encoding.doBase64(input)
  of "md5":
    return hashing.doMd5(input)
  of "sha1":
    return hashing.doSha1(input)
  else:
    raise newException(Exception, "Unsupported algorithm")

proc main() =
  var (algorithm, input) = parseArgs()
  echo generateDigest(algorithm, input)

when isMainModule:
  main()
