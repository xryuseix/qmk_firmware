keymap=xryuseix
pushd ~/qmk_firmware/keyboards/yushakobo/quick17/keymaps/$keymap
qmk compile -kb yushakobo/quick17 -km $keymap
qmk flash -kb yushakobo/quick17 -km $keymap
popd