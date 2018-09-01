" =============================================================================
" Filename: autoload/lightline/colorscheme/deus_one.vim
" Author: https://github.com/nrhodes91
" License: Unlicense
" Last Change: 2018/06/27
" =============================================================================

let s:term_red = 204
let s:term_green = 114
let s:term_yellow = 180
let s:term_blue = 39
let s:term_purple = 170
let s:term_white = 145
let s:term_black = 235
let s:term_grey = 236

let s:gcolors =  {
            \ 'mono1':  '#abb2bf',
            \ 'mono2':  '#828997',
            \ 'mono3':  '#5c6370',
            \ 'mono4':  '#3e4452',
            \ 'black':  '#2c323d',
            \ 'red':    '#e06c75',
            \ 'green':  '#98c379',
            \ 'yellow': '#e5c07b',
            \ 'blue':   '#61afef',
            \ 'purple': '#c678dd',
            \ 'cyan':   '#0184BC',
            \ 'white':  '#dedede'
            \ }

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left =   [ [ s:gcolors.black, s:gcolors.green, 'bold' ], [ s:gcolors.mono1, '#3e4452' ] ]
let s:p.insert.left =   [ [ s:gcolors.black, s:gcolors.blue, 'bold' ], [ s:gcolors.mono1, s:gcolors.mono4 ] ]
let s:p.visual.left =   [ [ s:gcolors.black, s:gcolors.purple, 'bold' ], s:p.normal.left[1] ]
let s:p.replace.left =  [ [ s:gcolors.black, s:gcolors.red, 'bold' ], s:p.normal.left[1] ]
let s:p.inactive.left = [ [ s:gcolors.mono1, '#3e4452' ] ]

let s:p.normal.middle = [ [ '#5c6370', s:gcolors.black ] ]
let s:p.insert.middle = s:p.normal.middle
let s:p.replace.middle = s:p.normal.middle

let s:p.normal.right =  [ [ s:gcolors.black, s:gcolors.green ], [ s:gcolors.mono1, '#3e4452' ], [ s:gcolors.green, s:gcolors.black ] ]
let s:p.insert.right =  [ [ s:gcolors.black, s:gcolors.blue ], [ s:gcolors.mono1, s:gcolors.mono4 ], [ s:gcolors.blue, s:gcolors.black ] ]
let s:p.visual.right =  [ [ s:gcolors.black, s:gcolors.purple, 'bold' ], s:p.normal.right[1], [ s:gcolors.purple, s:gcolors.black ] ]
let s:p.replace.right = [ [ s:gcolors.black, s:gcolors.red, 'bold' ], s:p.normal.right[1], [ s:gcolors.red, s:gcolors.black ] ]
let s:p.inactive.right = [ [ s:gcolors.black, s:gcolors.blue ],  s:p.inactive.left[0] ]

let s:p.normal.error =  [ [ s:gcolors.black, s:gcolors.red ] ]
let s:p.normal.warning = [ [ s:gcolors.black, '#e5c07b' ] ]

let s:p.tabline.left =  [ s:p.normal.left[1] ]
let s:p.tabline.middle = s:p.normal.middle
let s:p.tabline.right = [ s:p.normal.left[1] ]
let s:p.tabline.tabsel = [ s:p.normal.left[0] ]

let g:lightline#colorscheme#deus_one#palette = lightline#colorscheme#fill(s:p)
