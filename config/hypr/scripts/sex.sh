#!/bin/sh
sourceName='alsa_input.usb-NZXT_NZXT_USB_MIC_A00017_15_54-00.mono-fallback'
targetVolPercent='135%'
while true; do
    currentVolPercent="$(pactl get-source-volume "$sourceName" \
        | head -n 1 \
        | sed -nre 's,^Volume: [^/]+ / +([0-9]+%) / .*$,\1,p')"
    if test "$currentVolPercent" != "$targetVolPercent"; then
        echo "Volume of audio source \"$sourceName\" was" \
            "${currentVolPercent}, setting to ${targetVolPercent}" >&2
        pactl set-source-volume "$sourceName" "$targetVolPercent"
    fi
    sleep 2s
done

