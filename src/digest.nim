import std/parseopt, os
import base64

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
    return base64.encode(input)
  else:
    raise newException(Exception, "Unsupported algorithm")

proc main() =
  var (algorithm, input) = parseArgs()
  echo algorithm
  echo input
  echo generateDigest(algorithm, input)

when isMainModule:
  main()
