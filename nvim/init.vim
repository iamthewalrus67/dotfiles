if exists('g:vscode')
lua << EOF
  require('vscode_specific')
EOF
else
lua << EOF
  require('terminal_specific')
EOF
endif

lua << EOF
require('user')
EOF
