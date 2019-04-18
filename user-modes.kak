declare-user-mode anchor
map global anchor a '<esc><a-;>;'     -docstring 'reduce to anchor'
map global anchor c '<esc>;'          -docstring 'reduce to cursor'
map global anchor f '<esc><a-;>'      -docstring 'flip cursor and anchor'
map global anchor h '<esc><a-:><a-;>' -docstring 'ensure anchor after cursor'
map global anchor l '<esc><a-:>'      -docstring 'ensure cursor after anchor'
map global anchor s '<esc><a-S>'      -docstring 'split at cursor and anchor'

declare-user-mode echo
map global echo o ': echo %opt{}<left>'        -docstring 'opt'
map global echo O ': echo -debug %opt{}<left>' -docstring 'opt debug'
map global echo r ': echo %reg{}<left>'        -docstring 'reg'
map global echo R ': echo -debug %reg{}<left>' -docstring 'reg debug'
map global echo s ': echo %sh{}<left>'         -docstring 'sh'
map global echo S ': echo -debug %sh{}<left>'  -docstring 'sh debug'
map global echo v ': echo %val{}<left>'        -docstring 'val'
map global echo V ': echo -debug %val{}<left>' -docstring 'val debug'

declare-user-mode search
map global search / ': exec /<ret>\Q\E<left><left>' -docstring 'regex disabled'
map global search i '/(?i)'                         -docstring 'case insensitive'

declare-user-mode case
map global case j '<esc>`'     -docstring '↓ lower'
map global case k '<esc>~'     -docstring '↑ upper'
map global case f '<esc><a-`>' -docstring '↕ flip'

declare-user-mode rotation
map global rotation h '<esc><a-(>' -docstring '← rotate selections content'
map global rotation j '<esc>('     -docstring '← rotate main selection'
map global rotation k '<esc>)'     -docstring '→ rotate main selection'
map global rotation l '<esc><a-)>' -docstring '→ rotate selections content'

declare-user-mode enter
map global enter H '<esc>I' -docstring '⇐ insert before line'
map global enter h '<esc>i' -docstring '← insert before'
map global enter j '<esc>o' -docstring '↓ insert below'
map global enter k '<esc>O' -docstring '↑ insert above'
map global enter l '<esc>a' -docstring '→ insert after'
map global enter L '<esc>A' -docstring '⇒ insert after line'
