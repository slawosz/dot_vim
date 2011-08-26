function RunLastSpec ()
	if exists('w:current_spec')
		exe '!rspec ' . w:current_spec . ' --drb'
	else
		call RunCurrentSpec()
	endif
endfunction

function RunCurrentSpec ()
	let w:current_spec = expand("%:.") . ':' . line(".")
	exe '!rspec ' . w:current_spec . ' --drb'
endfunction
