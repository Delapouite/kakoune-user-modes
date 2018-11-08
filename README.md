# kakoune-user-modes

[kakoune](http://kakoune.org) user modes

## Install

Add `user-modes.kak` to your autoload dir: `~/.config/kak/autoload/`.

Or via [plug.kak](https://github.com/andreyorst/plug.kak):

```
plug 'delapouite/kakoune-user-modes' %{
  # Suggested mappings
  map global user a ': enter-user-mode anchor<ret>' -docstring 'anchor mode'
  map global user e ': enter-user-mode echo<ret>'   -docstring 'echo mode'
  map global user / ': enter-user-mode search<ret>' -docstring 'search mode'
}
```

## Usage

A collection of user modes that you may find handy.
Nothing revolutionary, just convenient mappings.

## Licence

MIT

