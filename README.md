# kakoune-user-modes

[kakoune](http://kakoune.org) user modes

## Install

Add `user-modes.kak` to your autoload dir: `~/.config/kak/autoload/`.

Or via [plug.kak](https://github.com/andreyorst/plug.kak):

```
plug 'delapouite/kakoune-user-modes' %{
  # Suggested mappings
  map global user a ': enter-user-mode anchor<ret>'   -docstring 'anchor mode'
  map global user e ': enter-user-mode echo<ret>'     -docstring 'echo mode'
  map global user f ': enter-user-mode format<ret>'   -docstring 'format mode'
  map global user i ': enter-user-mode enter<ret>'    -docstring 'enter mode'
  map global user r ': enter-user-mode rotation<ret>' -docstring 'rotation mode'
  map global user t ': enter-user-mode trim<ret>'     -docstring 'trim mode'
  map global user / ': enter-user-mode search<ret>'   -docstring 'search mode'
}
```

## Usage

A collection of user modes that you may find handy.
Nothing revolutionary, just convenient mappings to avoid using `<alt>`

## Tips

```
alias global u enter-user-mode
```

With this alias, `:u` provides a quick fuzzy-access to all user-modes 

## See also

- [buffers user-mode](https://github.com/Delapouite/kakoune-buffers)
- [mirror user-mode](https://github.com/Delapouite/kakoune-mirror)
- [text-objects user-mode](https://github.com/Delapouite/kakoune-text-objects)

## Licence

MIT

