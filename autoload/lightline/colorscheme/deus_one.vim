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

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ '#2c323d', '#98c379', 'bold' ], [ '#abb2bf', '#3e4452' ] ]
let s:p.insert.left = [ [ '#2c323d', '#61afef', 'bold' ], [ '#abb2bf', '#3E4452' ] ]
let s:p.visual.left = [ [ '#2c323d', '#c678dd', 'bold' ], s:p.normal.left[1] ]
let s:p.replace.left = [ [ '#2c323d', '#e06c75', 'bold' ], s:p.normal.left[1] ]
let s:p.inactive.left = [ [ '#abb2bf', '#3e4452' ] ]

let s:p.normal.middle = [ [ '#5c6370', '#2c323d' ] ]
let s:p.insert.middle = s:p.normal.middle
let s:p.replace.middle = s:p.normal.middle

let s:p.normal.right = [ [ '#2c323d', '#98c379' ], [ '#abb2bf', '#3e4452' ], [ '#98c379', '#2c323d' ] ]
let s:p.insert.right = [ [ '#2c323d', '#61afef' ], [ '#abb2bf', '#3E4452' ], [ '#61afef', '#2c323d' ] ]
let s:p.visual.right = [ [ '#2c323d', '#c678dd', 'bold' ], s:p.normal.right[1], [ '#c678dd', '#2c323d' ] ]
let s:p.replace.right = [ [ '#2c323d', '#e06c75', 'bold' ], s:p.normal.right[1], [ '#e06c75', '#2c323d' ] ]
let s:p.inactive.right = [ [ '#2c323d', '#61afef' ],  s:p.inactive.left[0] ]

let s:p.normal.error = [ [ '#2c323d', '#e06c75' ] ]
let s:p.normal.warning = [ [ '#2c323d', '#e5c07b' ] ]

let s:p.tabline.left = [ s:p.normal.left[1] ]
let s:p.tabline.middle = s:p.normal.middle
let s:p.tabline.right = [ s:p.normal.left[1] ]
let s:p.tabline.tabsel = [ s:p.normal.left[0] ]

let g:lightline#colorscheme#deus_one#palette = lightline#colorscheme#fill(s:p)
