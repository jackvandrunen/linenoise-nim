# FROM linenoise.h -- VERSION 1.0
#
# Wrapped linenoise library for Nim.
#

{.compile: "clinenoise.c".}

type
  Completions* = object
    len*: csize
    cvec*: cstringArray

  CompletionCallback* = proc (a2: cstring; a3: ptr Completions) {.cdecl.}

proc setCompletionCallback*(a2: ptr CompletionCallback) {.cdecl,
    importc: "linenoiseSetCompletionCallback".}
proc addCompletion*(a2: ptr Completions; a3: cstring) {.cdecl,
    importc: "linenoiseAddCompletion".}
proc linenoisePrompt*(prompt: cstring): cstring {.cdecl, importc: "linenoise".}
proc historyAdd*(line: cstring): cint {.cdecl, importc: "linenoiseHistoryAdd".}
proc historySetMaxLen*(len: cint): cint {.cdecl,
    importc: "linenoiseHistorySetMaxLen".}
proc historySave*(filename: cstring): cint {.cdecl,
    importc: "linenoiseHistorySave".}
proc historyLoad*(filename: cstring): cint {.cdecl,
    importc: "linenoiseHistoryLoad".}
proc clearScreen*() {.cdecl, importc: "linenoiseClearScreen".}
proc setMultiLine*(ml: cint) {.cdecl, importc: "linenoiseSetMultiLine".}
proc printKeyCodes*() {.cdecl, importc: "linenoisePrintKeyCodes".}
