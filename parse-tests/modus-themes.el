(defcustom modus-themes-mode-line nil
  "Adjust the overall style of the mode line.

The default (nil) is a two-dimensional rectangle with a border
around it.  The active and the inactive mode lines use different
shades of grayscale values for the background and foreground.

A `3d' value will apply a three-dimensional effect to the active
mode line.  The inactive mode lines remain two-dimensional and
are toned down a bit, relative to the nil value.

The `moody' option is meant to optimize the mode line for use
with the library of the same name.  This practically means to
remove the box effect and rely on underline and overline
properties instead.  It also tones down the inactive mode lines.
Despite its intended purpose, this option can also be used
without the `moody' library.

The `borderless' option uses the same colors as the default (nil
value), but removes the border effect.  This is done by making
the box property use the same color as the background,
effectively blending the two and creating some padding.

The `borderless-3d' and `borderless-moody' approximate the `3d'
and `moody' options respectively, while removing the borders.
However, to ensure that the inactive mode lines remain visible,
they apply a slightly more prominent background to them than what
their counterparts do (same inactive background as with the
default).

Similarly, `accented', `accented-3d', and `accented-moody'
correspond to the default (nil), `3d', and `moody' styles
respectively, except that the active mode line uses a colored
background instead of the standard shade of gray.

Same principle for styles `borderless-accented',
`borderless-accented-3d', `borderless-accented-moody', which
apply a colored background to the active mode line, while they
remove any noticeable border around both the active and inactive
the mode lines."
  :group 'modus-themes
  :package-version '(modus-themes . "1.4.0")
  :version "28.1"
  :type '(choice
          (const :format "[%v] %t\n" :tag "Two-dimensional box (default)" nil)
          (const :format "[%v] %t\n" :tag "Three-dimensional style for the active mode line" 3d)
          (const :format "[%v] %t\n" :tag "No box effects, which are optimal for use with the `moody' library" moody)
          (const :format "[%v] %t\n" :tag "Like the default, but without discernible border effects" borderless)
          (const :format "[%v] %t\n" :tag "Like `3d', but without noticeable border" borderless-3d)
          (const :format "[%v] %t\n" :tag "Like `moody', but without noticeable border" borderless-moody)
          (const :format "[%v] %t\n" :tag "Two-dimensional box with a colored background" accented)
          (const :format "[%v] %t\n" :tag "Like `3d', but with a colored background" accented-3d)
          (const :format "[%v] %t\n" :tag "Like `moody', but with a colored background" accented-moody)
          (const :format "[%v] %t\n" :tag "Like `accented', but without a noticeable border" borderless-accented)
          (const :format "[%v] %t\n" :tag "Like `accented-3d', but with a noticeable border" borderless-accented-3d)
          (const :format "[%v] %t\n" :tag "Like `accented-moody', but with a noticeable border" borderless-accented-moody))
  :link '(info-link "(modus-themes) Mode line"))
