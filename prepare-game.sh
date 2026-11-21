#!/bin/bash
set -eu
cd "$(dirname "$0")"
base=9f202deb07897bbb880d5824323e9aee0264ac49
if [ ! -d game ]; then
    git clone https://github.com/rsigristc/OpenFusion-Pocket.git game
    git -C game checkout --detach "$base"
fi
if [ "$(git -C game rev-parse HEAD)" != "$base" ]; then
    echo "The game folder contains a different version. Extract a fresh ZIP and retry." >&2
    exit 1
fi
if ! git -C game apply --reverse --check ../iphone-port.patch 2>/dev/null; then
    git -C game apply ../iphone-port.patch
fi
icons=game/Assets/Art/AppIcon
for kind in Icon Foreground; do
    if [ ! -e "$icons/FusionFall$kind.png" ]; then
        cp "$icons/FusionSpawn$kind-v1.png" "$icons/FusionFall$kind.png"
    fi
done
echo "Ready for Unity Hub. Select this folder: $PWD/game"
