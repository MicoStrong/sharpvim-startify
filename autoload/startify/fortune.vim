let s:log = [
            \'	           __                          _          ',
	        \'      _____/ /_  ____ __________ _   __(_)___ ___  ',
	        \'     / ___/ __ \/ __ `/ ___/ __ \ | / / / __ `__ \ ',
	        \'    (__  ) / / / /_/ / /  / /_/ / |/ / / / / / / / ',
	        \'   /____/_/ /_/\__,_/_/  / .___/|___/_/_/ /_/ /_/  ',
	        \'                        /_/                        ',
            \'Author: ziqiang <1120943127@qq.com>                ',
            \'Repository: https://github.com/MicoStrong/sharpvim-startify',
            \ ]

function! s:get_random_offset(max) abort
  return str2nr(matchstr(reltimestr(reltime()), '\.\zs\d\+')[1:]) % a:max
endfunction

function! startify#fortune#quote() abort
  return s:quotes[s:get_random_offset(len(s:quotes))]
endfunction

function! startify#fortune#dogesay() abort
  return map(s:log, '"   ". v:val')
endfunction
