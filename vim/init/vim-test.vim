let test#strategy = "neovim"
let test#neovim#term_position = "vert botright"

nmap <silent> <LocalLeader>tt :TestNearest<CR>
nmap <silent> <LocalLeader>tf :TestFile<CR>
nmap <silent> <LocalLeader>ts :TestSuite<CR>
nmap <silent> <LocalLeader>t :TestLast<CR>
nmap <silent> <LocalLeader>tv :TestVisit<CR>

let test#rust#cargonextest#options = '--nocapture'
