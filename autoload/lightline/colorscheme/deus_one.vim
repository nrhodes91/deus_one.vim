" =============================================================================
" Filename:     autoload/lightline/colorscheme/deus_one.vim
" Author:       https://github.com/nrhodes91
" License:      Unlicense
" Last Change:  2018/06/27
" =============================================================================

let s:term_red = 204
let s:term_green = 114
let s:term_yellow = 180
let s:term_blue = 39
let s:term_purple = 170
let s:term_white = 145
let s:term_black = 235
let s:term_grey = 236

if lightline#colorscheme#background() ==# 'light'
let s:guicolors =  {
            \ 'mono4':  '#b3b3b3',
            \ 'mono3':  '#999999',
            \ 'mono2':  '#666666',
            \ 'mono1':  '#444444',
            \ 'black':  '#cccccc',
            \ 'red':    '#b1271b',
            \ 'green':  '#387138',
            \ 'yellow': '#9c5a1c',
            \ 'blue':   '#0e49c8',
            \ 'purple': '#871785',
            \ 'cyan':   '#016793',
            \ 'white':  '#222222',
            \ }
else
let s:guicolors =  {
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
endif

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}


let s:p.normal.left =   [
            \ [ s:guicolors.black, s:guicolors.green, 'bold' ],
            \ [ s:guicolors.mono1, s:guicolors.mono4 ],
            \ [ s:guicolors.mono1, s:guicolors.black ]
            \ ]
let s:p.insert.left =   [
            \ [ s:guicolors.black, s:guicolors.blue, 'bold' ],
            \ [ s:guicolors.mono1, s:guicolors.mono4 ],
            \ s:p.normal.left[2]
            \ ]
let s:p.visual.left =   [
            \ [ s:guicolors.black, s:guicolors.purple, 'bold' ],
            \ s:p.normal.left[1],
            \ s:p.normal.left[2]
            \ ]
let s:p.replace.left =  [
            \ [ s:guicolors.black, s:guicolors.red, 'bold' ],
            \ s:p.normal.left[1],
            \ s:p.normal.left[2]
            \ ]
let s:p.inactive.left = [
            \ [ s:guicolors.mono1, s:guicolors.mono4 ]
            \ ]

let s:p.normal.middle = [ s:p.normal.left[2] ]
let s:p.insert.middle = s:p.normal.middle
let s:p.replace.middle = s:p.normal.middle

let s:p.normal.right =  [
            \ [ s:guicolors.black, s:guicolors.green, 'bold' ],
            \ [ s:guicolors.black, s:guicolors.green, 'bold' ],
            \ [ s:guicolors.green, s:guicolors.black ]
            \ ]
let s:p.insert.right =  [
            \ [ s:guicolors.black, s:guicolors.blue, 'bold' ],
            \ [ s:guicolors.black, s:guicolors.blue, 'bold' ],
            \ [ s:guicolors.blue, s:guicolors.black ]
            \ ]
let s:p.visual.right =  [
            \ [ s:guicolors.black, s:guicolors.purple, 'bold' ],
            \ [ s:guicolors.black, s:guicolors.purple, 'bold' ],
            \ [ s:guicolors.purple, s:guicolors.black ]
            \ ]
let s:p.replace.right = [
            \ [ s:guicolors.black, s:guicolors.red, 'bold' ],
            \ [ s:guicolors.black, s:guicolors.red, 'bold' ],
            \ [ s:guicolors.red, s:guicolors.black ]
            \ ]
let s:p.inactive.right = [
            \ [ s:guicolors.black, s:guicolors.blue ],
            \ s:p.inactive.left[0]
            \ ]

let s:p.normal.error =  [ [ s:guicolors.black, s:guicolors.red ] ]
let s:p.normal.warning = [ [ s:guicolors.black, '#e5c07b' ] ]

let s:p.tabline.left =  [ s:p.normal.left[1] ]
let s:p.tabline.middle = s:p.normal.middle
let s:p.tabline.right = [ s:p.normal.left[1] ]
let s:p.tabline.tabsel = [ s:p.normal.left[0] ]

let g:lightline#colorscheme#deus_one#palette = lightline#colorscheme#fill(s:p)
