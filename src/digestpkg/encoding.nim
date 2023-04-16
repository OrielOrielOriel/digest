import base64

proc doBase64*(input: string): string =
  return base64.encode(input)
