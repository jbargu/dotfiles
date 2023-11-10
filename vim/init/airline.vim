" set by `:Tmuxline airline jbargu_preset`
" preset is located under `autoload/presets/jbargu_preset.vim`
"
" airline options
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='gruvbox'
let g:tmuxline_preset = 'jbargu_preset'

"let g:airline_theme='dark'

let g:airline_section_b = ''
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_z = '%l/%L:%c'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_tab_nr = 0

let g:airline#extensions#tabline#buffer_idx_format = {
			\ '0': '0 ',
			\ '1': '1 ',
			\ '2': '2 ',
			\ '3': '3 ',
			\ '4': '4 ',
			\ '5': '5 ',
			\ '6': '6 ',
			\ '7': '7 ',
			\ '8': '8 ',
			\ '9': '9 '
			\}

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap t1 <Plug>AirlineSelectTab1
nmap t2 <Plug>AirlineSelectTab2
nmap t3 <Plug>AirlineSelectTab3
nmap t4 <Plug>AirlineSelectTab4
nmap t5 <Plug>AirlineSelectTab5
nmap t6 <Plug>AirlineSelectTab6
nmap t7 <Plug>AirlineSelectTab7
nmap t8 <Plug>AirlineSelectTab8
nmap t9 <Plug>AirlineSelectTab9
nmap t- <Plug>AirlineSelectPrevTab
nmap t+ <Plug>AirlineSelectNextTab

if (has("gui_running"))
		set guioptions=egmrt
		set background=light
		colorscheme obsidian
		let g:airline_left_sep=''
		let g:airline_right_sep=''
		let g:airline_powerline_fonts=0
		let g:airline_theme='solarized'
endif

