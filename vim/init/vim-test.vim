let test#strategy = "neovim"
let test#neovim#term_position = "vert botright"

nmap <silent> <leader>st :TestNearest<CR>
nmap <silent> <leader>sT :TestFile<CR>
nmap <silent> <LocalLeader>t :TestFile<CR>
nmap <silent> <leader>sa :TestSuite<CR>
nmap <silent> <leader>sl :TestLast<CR>
nmap <silent> <leader>ss :TestVisit<CR>
