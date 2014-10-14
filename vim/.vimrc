syntax on

" Git rebase helper for:
"   git rebase --interactive
"
"   L   - view commit log
"   p   - pick
"   e   - edit
"   s   - squash
"   r   - reword
"   D   - delete
"   k   - move line up
"   j   - move line down

fun! RebaseLog()
  let line = getline('.')
  let hash = matchstr(line,'\(^\w\+\s\)\@<=\w*')
  vnew
  setlocal noswapfile
  setlocal nobuflisted nowrap cursorline nonumber fdc=0
  setlocal buftype=nofile
  setlocal bufhidden=wipe
  let output = system(printf('git log -p %s^1..%s', hash,hash ))
  silent put=output
  silent normal ggdd
  setlocal nomodifiable
  setfiletype git
endf
fun! RebaseAction(name)
  exec 's/^\w\+/'.a:name.'/'
endf
fun! g:InitGitRebase()
  nmap <silent><buffer> L :cal RebaseLog()<CR>
  nmap <silent><buffer> p :cal RebaseAction('pick')<CR>
  nmap <silent><buffer> r :cal RebaseAction('reword')<CR>
  nmap <silent><buffer> e :cal RebaseAction('edit')<CR>
  nmap <silent><buffer> s :cal RebaseAction('squash')<CR>
  nmap <silent><buffer> f :cal RebaseAction('fixup')<CR>
  nmap <silent><buffer> d dd
  nmap <silent><buffer> k :m-2<CR>
  nmap <silent><buffer> j :m+<CR>
endf
autocmd filetype gitrebase :cal g:InitGitRebase()
