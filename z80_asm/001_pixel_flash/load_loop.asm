    DEVICE ZXSPECTRUM48

    org $8000

start:
    ld a,$D0
    ld b, 7
    ld hl,$5800
    ld (hl),a
loop:
    inc a
    inc hl
    ld (hl),a
    djnz loop
    ret

;Deployment: Snapshot
    SAVESNA "load_loop.sna", start