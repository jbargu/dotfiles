autocmd! BufWritePost,BufEnter * Neomake
" Async handling of plugin (neovim)
" When writing a buffer (no delay).
call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
call neomake#configure#automake('rw', 1000)
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 1s; no delay when writing).
call neomake#configure#automake('nrwi', 500)

let g:neomake_ruby_exec = '/usr/share/rvm/rubies/ruby-2.6.4/bin/ruby'
let g:neomake_ruby_checkers = ['rubocop']
let g:neomake_python_exe = ['python3']
let g:neomake_python_checkers = ['flake8']

let g:neomake_javascript_checkers = ['eshint']
let g:neomake_javascript_eslint_exe = Find_git_root() .'/node_modules/.bin/eslint'
let g:neomake_scss_checkers = ['scss-lint']

" Neoformat - format automatically on save
augroup fmt
	autocmd!
	au BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
augroup END
