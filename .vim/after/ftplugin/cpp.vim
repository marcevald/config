"CPP specific configuration

"Build c++ using CMakeLists.txt
nnoremap <C-c> :w<CR> <bar> :!clear && cmake . -Bbuild && cmake --build build/<CR>

"Run the binary.
nnoremap <Leader>r :!clear && ./build/$(cat CMakeLists.txt \| grep -i add_executable \| sed -E "s/.*\(\s*(\S+).*/\1/g")<CR>
