set clipboard+=unnamedplus

if exists('g:vscode')
lua << EOF
  require('vscode')
EOF
else
lua << EOF
  require('terminal')
EOF
endif

lua << EOF
require('user')
EOF
