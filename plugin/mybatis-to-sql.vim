" mybatis-to-sql - Convert Mybatis files to SQL
" Author:       Pieter Huibers
" Version:      0.1

function! MybatisToSql()
  let hits = []
	/#{.*}
  %s//\=len(add(hits, submatch(0))) ? submatch(0) : ''/ge
	let singlehits=filter(copy(hits), 'index(hits, v:val, v:key+1)==-1')
	for hit in singlehits
		let rep = input(hit . ' -> ')
		echo ' '
		execute ':%s/' . hit . '/' . rep . '/g'
	endfor
	%s/&lt;/</ge
	%s/&gt;/>/ge
endfunction
