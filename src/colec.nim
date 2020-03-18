#Imports
import terminal
import os
import colors

# Workaround for windows
# enableTrueColors is not working and isTrueColorSupported returns false
#[
  Ross Ridge:
    https://stackoverflow.com/questions/36760127/how-to-use-the-new-support-for-ansi-escape-sequences-in-the-windows-10-console
  Python workaround: 
    os.system('') but I lost the source
]#
when defined(windows):
  discard os.execShellCmd("")

# Same as terminal module to avoid using resetAttributes()
const
  ansiResetCode = "\e[0m"

# Foreground
proc `@`(s: string, c: Color): string =
  let colorCode = ansiForegroundColorCode(c)
  result = colorCode & s & ansiResetCode

# Background
proc `@@`(s: string, c: Color): string =
  let colorCode = ansiBackgroundColorCode(c)
  result = colorCode & s & ansiResetCode

# Style
proc `<<`(s: string, style: Style): string =
  let styleCode = ansiStyleCode(style)
  result = styleCode & s & ansiResetCode
  
# Test
when isMainModule:
  echo (("The Dark Knight" @ colBlue) @@ colWhite ) << styleUnderscore