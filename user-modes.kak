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

declare-user-mode format
map global format j '<esc>`'                          -docstring '↓ lowercase'
map global format k '<esc>~'                          -docstring '↑ uppercase'
map global format s '<esc><a-`>'                      -docstring '↕ switchcase'
map global format f ': format<ret>'                   -docstring 'format'
map global format c ': comment-line<ret>'             -docstring 'comment-line'
map global format C ': comment-block<ret>'            -docstring 'comment-block'
map global format t ': set global indentwidth 0<ret>' -docstring 'indent tab'
map global format 2 ': set global indentwidth 2<ret>' -docstring 'indent space 2'
map global format 4 ': set global indentwidth 4<ret>' -docstring 'indent space 4'

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

declare-user-mode trim
map global trim h '<esc>s^\h+<ret><a-d>'           -docstring '← trim selections content start'
map global trim j '<esc>S^\s+<ret><a-k>\S<ret>'    -docstring '← trim start'
map global trim T '<esc>s^\h+|\h+$<ret><a-d>'      -docstring '↔ trim selections content both'
map global trim t '<esc>_'                         -docstring '↔ trim both'
map global trim k '<esc>S\s+$|\n<ret><a-k>\S<ret>' -docstring '→ trim end'
map global trim l '<esc>s\h+$<ret><a-d>'           -docstring '→ trim selections content end'

declare-user-mode lint
map global lint d ': lint-disable<ret>'        -docstring 'disable'
map global lint e ': lint-enable<ret>'         -docstring 'enable'
map global lint l ': lint<ret>'                -docstring 'lint'
map global lint n ': lint-next-error<ret>'     -docstring 'next'
map global lint p ': lint-previous-error<ret>' -docstring 'prev'
map global lint b ': b *lint-output*<ret>'     -docstring 'output buffer'

declare-user-mode keep
map global keep m '<esc><a-k>'                                      -docstring 'regex matching'
map global keep n '<esc><a-K>'                                      -docstring 'regex not matching'
map global keep p '<esc>$'                                          -docstring 'pipe'
map global keep l '<esc>$[ ${#kak_selection} -gt  ]<left><left>'    -docstring 'length'
map global keep h '<esc>$[ $kak_main_reg_hash -le  ]<left><left>'   -docstring 'head'
map global keep e '<esc>$[ $((kak_main_reg_hash % 2)) -eq 0 ]<ret>' -docstring 'even'
map global keep o '<esc>$[ $((kak_main_reg_hash % 2)) -eq 1 ]<ret>' -docstring 'odd'
