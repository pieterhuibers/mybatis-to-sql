mybatis-to-sql
==============

mybatis-to-sql is a simple VIM script which adds functionality to easily convert a
[Mybatis](http://www.mybatis.org/mybatis-3/0) file containing dynamic SQL into static SQL which can be executed in any
SQL database.

As of this version the plugin only defines a single function `MybatisToSql()`. Calling this function will currently do
two thing (more functionality is planned for future versions). It will: 

* Substitute the `&lt;` and `&gt;` codes with the less-then (`<`) and greater-then (`>`) signs respectively
* It will search for any occurences of variables defined in the `#{var}` syntax. It will ask the user with which string
	to replace each of these variables and will perform the correct substitions in the entire buffer

You can directly call the function using `:call MybatisToSql()` or you can map it to a key combination such as
<Leader>M by adding `nmap <leader>m :call MybatisToSql()<CR>` to your `.vimrc` file.

Future features will include:

	* Stripping xml tags
	* Parsing and including `include` tags
	*	Parsing and interpreting `test` clauses (asking the user for input)

Please let me know if there are features you would like to see added or fork this repo and send me pull-requests!
