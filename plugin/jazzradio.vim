" jazzradio
" Version: 0.0.1
" Author: 
" License: 

if exists('g:loaded_jazzradio')
  finish
endif
let g:loaded_jazzradio = 1

let s:save_cpo = &cpo
set cpo&vim

command! JazzradioUpdateChannels call jazzradio#update_channels()
command! -nargs=1 -complete=customlist,jazzradio#channel_id_complete JazzradioPlay call jazzradio#play(<f-args>)
command! JazzradioStop call jazzradio#stop()

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et: