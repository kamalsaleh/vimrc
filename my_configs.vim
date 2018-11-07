" echo my_config.vim is loaded!

" You need to copy the file gap.vim into the syntax folder in the main vim folder.
" and gap_indent.vim to the indent folder in the main vim folder.
" see gap/etc/vim for more infos.

if has("syntax")
  syntax on             " Default to no syntax highlightning 
endif

" For GAP files
augroup gap
  " Remove all gap autocommands
  au!
  autocmd BufRead,BufNewFile *.g,*.gi,*.gd set filetype=gap comments=s:##\ \ ,m:##\ \ ,e:##\ \ b:#
" I'm using the external program `par' for formating comment lines starting
" with `##  '. Include these lines only when you have par installed.
  autocmd BufRead,BufNewFile *.g,*.gi,*.gd set formatprg="par w76p4s0j"
  autocmd BufWritePost,FileWritePost *.g,*.gi,*.gd set formatprg="par w76p0s0j"
augroup END
