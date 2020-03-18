## Echo text in color

Add `require "https://github.com/MKamelll/colec"` to your nimble file.

Run `nimble build` in main directory.

```nim
# for the color type
import colors
# for the style types
import terminal
import colec

# Text color
echo "The Holy Grail" @ colBlue

# Background
echo "Flight" @@ colYellow

# Style
echo "The Matrix" << styleUnderscore

# all of it
echo (("The Dark Knight" @ colBlue) @@ colWhite ) << styleUnderscore
```

[List of colors](https://nim-lang.org/docs/colors.html#Color)

[List of styles](https://nim-lang.org/docs/terminal.html#Style)
