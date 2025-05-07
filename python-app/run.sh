#!/bin/bash
export TERM=xterm

MIN="$1"

PY="$(find $HOME -type d -name "miniconda" | tail -n 1)/bin/python"

if [ ! -x "$PY" ]; then
    echo "❌ Không tìm thấy python tại $PY"
    exit 1
fi

if [ ! -f "app.py" ]; then
    echo "❌ Không tìm thấy tệp app.py"
    exit 1
fi

while true; do
    "$PY" app.py $MIN --cache=".cache/*"
    sleep 10
done
