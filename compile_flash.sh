keymap=xryuseix
pushd ~/qmk_firmware/keyboards/yushakobo/quick17/keymaps/$keymap
mv ~/Downloads/yushakobo_quick17_layout_mine.json layout_mine.json
rm keymap.c
qmk json2c layout_mine.json > keymap.c
qmk compile -kb yushakobo/quick17 -km $keymap
qmk flash -kb yushakobo/quick17 -km $keymap
popd