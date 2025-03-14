;;;;;;;;;;;;;;;;;;;;;;;;;;;
; OASIS resource data file
;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Common header
#include "..\params.h"
#include "..\object.h"
#include "..\script.h"
#include "..\resource.h"
#include "..\verbs.h"

#include "..\gameids.h"

#include "..\language.h"

*=$500


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Room: FoyerA
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.(
	.byt RESOURCE_ROOM
	.word (res_end - res_start + 4)
	.byt 4
res_start
; No. columns, offset to tile map, offset to tiles
	.byt 69, <(column_data-res_start), >(column_data-res_start), <(tiles_start-res_start), >(tiles_start-res_start)
; No. zplanes and offsets to zplanes
	.byt 1
	.byt <(zplane0_data-res_start), >(zplane0_data-res_start), <(zplane0_tiles-res_start), >(zplane0_tiles-res_start)		
; No. Walkboxes and offsets to wb data and matrix
	.byt 8, <(wb_data-res_start), >(wb_data-res_start), <(wb_matrix-res_start), >(wb_matrix-res_start)
; Offset to palette
	.byt <(palette-res_start), >(palette-res_start)
; Entry and exit scripts
	.byt 200, 255
; Number of objects in the room and list of ids
	.byt 5, 200, 201, 202, 203, 204
; Room name (null terminated)
	.asc "FoyerA", 0
; Room tile map
column_data
	.byt 001, 001, 001, 001, 030, 033, 001, 056, 074, 074, 074, 074, 074, 074, 074, 149, 160
	.byt 001, 001, 001, 001, 031, 034, 044, 057, 001, 001, 001, 001, 001, 001, 019, 150, 161
	.byt 001, 001, 001, 001, 032, 035, 045, 058, 075, 075, 102, 110, 075, 075, 134, 151, 162
	.byt 001, 001, 001, 001, 001, 036, 046, 059, 076, 076, 103, 076, 076, 076, 135, 152, 001
	.byt 001, 001, 001, 001, 001, 037, 001, 060, 075, 075, 075, 075, 075, 075, 136, 153, 001
	.byt 002, 002, 002, 002, 002, 002, 002, 002, 002, 002, 002, 002, 002, 002, 137, 154, 001
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 020, 001, 001
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 020, 001, 001
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 020, 001, 001
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 020, 001, 001
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 020, 001, 001
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 020, 001, 001
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 020, 001, 001
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 122, 138, 001, 001
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 123, 139, 155, 001
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 112, 124, 140, 156, 098
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 113, 125, 113, 125, 098
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 113, 125, 113, 125, 098
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 113, 125, 113, 125, 098
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 114, 126, 113, 125, 098
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 115, 124, 113, 125, 098
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 113, 125, 113, 125, 098
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 113, 125, 113, 125, 098
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 116, 125, 113, 125, 098
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 117, 127, 141, 157, 098
	.byt 001, 001, 001, 001, 019, 024, 001, 019, 024, 024, 001, 001, 001, 128, 142, 158, 001
	.byt 001, 001, 001, 001, 020, 038, 019, 061, 077, 093, 024, 001, 001, 129, 143, 001, 001
	.byt 001, 001, 001, 001, 020, 039, 020, 062, 078, 094, 104, 098, 001, 001, 020, 001, 001
	.byt 001, 001, 001, 001, 020, 040, 047, 063, 079, 095, 105, 098, 001, 001, 020, 001, 001
	.byt 001, 001, 001, 001, 020, 041, 020, 064, 080, 096, 106, 098, 001, 001, 020, 001, 001
	.byt 003, 009, 015, 001, 021, 029, 020, 065, 081, 097, 107, 108, 001, 001, 020, 001, 001
	.byt 001, 001, 001, 003, 009, 015, 021, 029, 029, 029, 108, 001, 001, 001, 020, 001, 001
	.byt 001, 001, 001, 001, 001, 001, 003, 009, 015, 001, 001, 001, 001, 001, 020, 001, 001
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 003, 009, 015, 001, 001, 020, 001, 001
	.byt 004, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 003, 009, 144, 001, 001
	.byt 005, 010, 016, 015, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 145, 001, 001
	.byt 005, 011, 011, 011, 010, 016, 015, 001, 001, 001, 001, 001, 001, 130, 146, 001, 001
	.byt 005, 011, 011, 011, 011, 011, 011, 010, 082, 015, 001, 001, 118, 131, 001, 001, 001
	.byt 005, 011, 011, 011, 011, 011, 011, 011, 083, 001, 003, 009, 119, 001, 001, 001, 001
	.byt 005, 011, 011, 011, 011, 011, 011, 011, 083, 001, 001, 001, 001, 001, 001, 001, 001
	.byt 005, 011, 011, 011, 011, 011, 011, 011, 083, 001, 001, 001, 001, 001, 001, 001, 001
	.byt 005, 011, 011, 011, 011, 011, 048, 011, 083, 001, 001, 001, 001, 001, 001, 001, 001
	.byt 005, 011, 011, 011, 011, 011, 049, 066, 084, 001, 001, 001, 001, 001, 001, 001, 001
	.byt 005, 011, 011, 011, 011, 011, 050, 067, 085, 001, 001, 001, 001, 001, 001, 001, 001
	.byt 005, 011, 011, 011, 011, 042, 051, 068, 086, 098, 001, 001, 001, 001, 001, 001, 001
	.byt 005, 011, 011, 011, 011, 043, 052, 069, 087, 098, 001, 001, 001, 001, 001, 001, 001
	.byt 005, 011, 011, 011, 011, 011, 053, 070, 088, 098, 001, 001, 001, 001, 001, 001, 001
	.byt 005, 011, 011, 011, 011, 011, 054, 071, 089, 001, 001, 001, 001, 001, 001, 001, 001
	.byt 005, 011, 011, 011, 011, 011, 055, 072, 090, 001, 001, 001, 001, 001, 001, 001, 001
	.byt 006, 012, 017, 022, 011, 011, 011, 073, 091, 001, 001, 001, 001, 001, 001, 001, 001
	.byt 007, 013, 013, 023, 012, 017, 022, 011, 083, 001, 001, 001, 001, 001, 001, 001, 001
	.byt 008, 014, 018, 013, 013, 013, 023, 012, 092, 099, 001, 001, 001, 001, 001, 001, 001
	.byt 001, 001, 001, 008, 014, 018, 013, 013, 013, 100, 001, 001, 001, 001, 001, 001, 001
	.byt 001, 001, 001, 001, 001, 001, 008, 014, 018, 101, 001, 001, 001, 001, 001, 001, 001
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 003, 109, 111, 120, 001, 001, 001, 001
	.byt 003, 009, 015, 001, 001, 001, 001, 001, 001, 001, 001, 001, 121, 001, 001, 001, 001
	.byt 001, 001, 001, 003, 009, 015, 001, 001, 001, 001, 001, 001, 021, 132, 001, 001, 001
	.byt 001, 001, 001, 001, 001, 001, 003, 009, 015, 001, 001, 001, 001, 133, 147, 001, 001
	.byt 001, 001, 019, 024, 001, 001, 001, 001, 001, 003, 009, 015, 001, 001, 148, 120, 001
	.byt 001, 001, 020, 025, 001, 001, 001, 001, 001, 001, 001, 001, 003, 009, 015, 121, 001
	.byt 001, 001, 020, 026, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 159, 001
	.byt 001, 001, 020, 027, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 020, 001
	.byt 001, 001, 020, 028, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 020, 001
	.byt 001, 001, 021, 029, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 020, 001
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 020, 001
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 020, 001
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 020, 001
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 020, 001
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 020, 001

; Room tile set
tiles_start
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #1
	.byt $77, $77, $77, $77, $77, $77, $77, $77	; tile #2
	.byt $5F, $5F, $5F, $5F, $6F, $6F, $6F, $6F	; tile #3
	.byt $7D, $7D, $7D, $7C, $7E, $7E, $7E, $7E	; tile #4
	.byt $C0, $C0, $C0, $C0, $C0, $C0, $C0, $40	; tile #5
	.byt $C0, $C0, $C0, $40, $45, $4A, $45, $4A	; tile #6
	.byt $C0, $C0, $C0, $40, $55, $6A, $55, $6A	; tile #7
	.byt $5F, $5F, $5F, $5F, $4F, $6F, $4F, $6F	; tile #8
	.byt $77, $77, $77, $77, $7B, $7B, $7B, $7B	; tile #9
	.byt $5F, $55, $5F, $55, $6F, $65, $6F, $65	; tile #10
	.byt $7F, $55, $7F, $55, $7F, $55, $7F, $55	; tile #11
	.byt $65, $42, $65, $52, $71, $52, $71, $52	; tile #12
	.byt $55, $6A, $55, $6A, $55, $6A, $55, $6A	; tile #13
	.byt $57, $67, $57, $67, $53, $6B, $53, $6B	; tile #14
	.byt $7D, $7D, $7D, $7D, $7E, $7E, $7E, $7E	; tile #15
	.byt $77, $75, $77, $75, $7B, $79, $7B, $79	; tile #16
	.byt $79, $50, $79, $54, $7C, $54, $7C, $54	; tile #17
	.byt $55, $69, $55, $69, $54, $6A, $54, $6A	; tile #18
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7E	; tile #19
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $40	; tile #20
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $5F	; tile #21
	.byt $7E, $54, $7E, $55, $7F, $55, $7F, $55	; tile #22
	.byt $55, $4A, $55, $4A, $45, $4A, $45, $4A	; tile #23
	.byt $7E, $7E, $7E, $7E, $7E, $7E, $7E, $7E	; tile #24
	.byt $C0, $C4, $C4, $C4, $C4, $C7, $C0, $40	; tile #25
	.byt $C0, $C0, $C2, $C4, $C8, $C0, $C0, $40	; tile #26
	.byt $C0, $D9, $C4, $C8, $C4, $D8, $C0, $40	; tile #27
	.byt $C0, $F0, $D0, $E0, $E0, $E0, $C0, $40	; tile #28
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F	; tile #29
	.byt $7F, $7F, $7F, $7F, $79, $77, $71, $7D	; tile #30
	.byt $7F, $7F, $7F, $7F, $7F, $67, $5C, $45	; tile #31
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $55	; tile #32
	.byt $73, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #33
	.byt $5C, $65, $7D, $7F, $7F, $7F, $67, $5B	; tile #34
	.byt $75, $55, $55, $7B, $7F, $7F, $7F, $7F	; tile #35
	.byt $5F, $59, $57, $57, $57, $79, $7F, $7F	; tile #36
	.byt $7F, $7F, $67, $5F, $47, $5F, $67, $7F	; tile #37
	.byt $C0, $CF, $D0, $CE, $C1, $DE, $C0, $40	; tile #38
	.byt $C0, $D0, $D0, $D0, $D1, $DC, $C0, $40	; tile #39
	.byt $C0, $C6, $D1, $E2, $C1, $C6, $C0, $40	; tile #40
	.byt $C0, $C4, $CC, $D4, $DE, $C4, $C0, $40	; tile #41
	.byt $7F, $55, $7F, $55, $7F, $55, $7F, $54	; tile #42
	.byt $7F, $55, $7F, $55, $7F, $55, $71, $4E	; tile #43
	.byt $5B, $5A, $66, $7E, $7F, $7F, $7F, $41	; tile #44
	.byt $4F, $6B, $6B, $6B, $79, $7F, $7F, $7F	; tile #45
	.byt $7F, $57, $57, $6F, $6F, $6F, $7F, $7F	; tile #46
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $5E	; tile #47
	.byt $7F, $55, $7F, $55, $7F, $54, $7F, $55	; tile #48
	.byt $7F, $55, $7F, $50, $47, $7E, $4F, $53	; tile #49
	.byt $7F, $55, $7F, $40, $7F, $4F, $71, $7E	; tile #50
	.byt $79, $50, $7F, $55, $4F, $75, $7B, $5D	; tile #51
	.byt $73, $5D, $65, $55, $6D, $4A, $6A, $4A	; tile #52
	.byt $5F, $55, $5F, $55, $5F, $54, $73, $4F	; tile #53
	.byt $7F, $55, $7F, $55, $40, $7F, $7F, $40	; tile #54
	.byt $7F, $55, $7F, $55, $7F, $45, $7B, $44	; tile #55
	.byt $7E, $7E, $7D, $7D, $7B, $7B, $7B, $7B	; tile #56
	.byt $7E, $43, $7C, $7F, $7F, $7F, $7F, $7F	; tile #57
	.byt $43, $7C, $47, $68, $6F, $6F, $6F, $6F	; tile #58
	.byt $7F, $47, $78, $4F, $77, $7B, $7D, $7D	; tile #59
	.byt $7F, $7F, $7F, $5F, $6F, $6F, $6F, $6F	; tile #60
	.byt $7E, $7E, $7E, $7E, $7E, $7E, $7E, $40	; tile #61
	.byt $C0, $C0, $D0, $C2, $C0, $C0, $C0, $C0	; tile #62
	.byt $5E, $5E, $5E, $5E, $5E, $5E, $5E, $40	; tile #63
	.byt $C4, $C0, $C8, $C0, $C0, $C2, $C0, $FF	; tile #64
	.byt $C0, $D0, $C0, $C0, $C2, $C0, $C0, $E0	; tile #65
	.byt $7C, $55, $7F, $55, $7F, $55, $78, $57	; tile #66
	.byt $7F, $5F, $67, $50, $7F, $40, $7F, $40	; tile #67
	.byt $6E, $72, $7D, $7E, $41, $7E, $63, $5C	; tile #68
	.byt $74, $55, $49, $4A, $61, $40, $4E, $54	; tile #69
	.byt $5C, $7B, $67, $5C, $63, $40, $63, $5C	; tile #70
	.byt $7F, $7E, $61, $55, $7F, $41, $7C, $5F	; tile #71
	.byt $7F, $40, $7F, $55, $7F, $55, $4F, $71	; tile #72
	.byt $5F, $45, $7F, $55, $7F, $55, $7F, $55	; tile #73
	.byt $7B, $7B, $7B, $7B, $7B, $7B, $7B, $7B	; tile #74
	.byt $6F, $6F, $6F, $6F, $6F, $6F, $6F, $6F	; tile #75
	.byt $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D	; tile #76
	.byt $C1, $C1, $C1, $C5, $D1, $C1, $C1, $C1	; tile #77
	.byt $C0, $C0, $C0, $C2, $C0, $C4, $C0, $C0	; tile #78
	.byt $C0, $C0, $C0, $E9, $C0, $E4, $C0, $C0	; tile #79
	.byt $C0, $C0, $C0, $C0, $C0, $E8, $C0, $C0	; tile #80
	.byt $E0, $E2, $E0, $E0, $E0, $E2, $E0, $E0	; tile #81
	.byt $77, $75, $77, $75, $7B, $79, $7B, $78	; tile #82
	.byt $7F, $55, $7F, $55, $7F, $55, $7F, $40	; tile #83
	.byt $6C, $4F, $76, $55, $7B, $55, $7F, $40	; tile #84
	.byt $7F, $60, $5E, $54, $7E, $54, $7E, $40	; tile #85
	.byt $72, $4E, $40, $FF, $EF, $FF, $FF, $FF	; tile #86
	.byt $6A, $6A, $40, $FF, $FF, $FF, $FF, $FF	; tile #87
	.byt $6F, $77, $41, $FD, $FD, $FD, $FB, $E7	; tile #88
	.byt $63, $7C, $7F, $5F, $67, $58, $5F, $40	; tile #89
	.byt $7D, $7E, $46, $79, $7F, $5C, $63, $40	; tile #90
	.byt $7F, $55, $7F, $55, $5F, $55, $7F, $40	; tile #91
	.byt $79, $50, $79, $50, $7C, $54, $7C, $40	; tile #92
	.byt $C1, $C8, $D0, $C0, $C0, $C2, $C0, $FF	; tile #93
	.byt $FF, $C0, $C0, $C8, $C0, $C0, $C0, $FF	; tile #94
	.byt $FF, $C1, $C1, $C1, $D1, $C1, $C1, $FF	; tile #95
	.byt $FF, $C0, $C0, $C0, $C0, $C0, $C4, $C0	; tile #96
	.byt $E0, $E0, $E0, $E0, $E0, $E0, $E0, $E0	; tile #97
	.byt $40, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #98
	.byt $7E, $7E, $7E, $7E, $7F, $7F, $7F, $7F	; tile #99
	.byt $55, $4A, $55, $40, $7F, $7F, $7F, $7F	; tile #100
	.byt $55, $6A, $55, $40, $7F, $7F, $7F, $7F	; tile #101
	.byt $6F, $6F, $6D, $6F, $6D, $6F, $6D, $6F	; tile #102
	.byt $7D, $5D, $7D, $5D, $7D, $5D, $7D, $5D	; tile #103
	.byt $C0, $C0, $C0, $C0, $C1, $C0, $C0, $C0	; tile #104
	.byt $C0, $C0, $E0, $C0, $C8, $C0, $C0, $C0	; tile #105
	.byt $C8, $C0, $C0, $C4, $C0, $C0, $C0, $C0	; tile #106
	.byt $40, $5F, $5F, $5F, $5F, $5F, $5F, $5F	; tile #107
	.byt $5F, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #108
	.byt $77, $77, $77, $77, $77, $7B, $7B, $7B	; tile #109
	.byt $6D, $6F, $6F, $6F, $6F, $6F, $6F, $6F	; tile #110
	.byt $7B, $7D, $7D, $7D, $7D, $7E, $7E, $7E	; tile #111
	.byt $70, $65, $4A, $55, $4B, $57, $4A, $57	; tile #112
	.byt $40, $55, $6A, $55, $6A, $55, $6A, $55	; tile #113
	.byt $43, $55, $68, $54, $6A, $54, $6A, $54	; tile #114
	.byt $70, $65, $4A, $55, $4A, $55, $4A, $55	; tile #115
	.byt $40, $55, $6A, $55, $6B, $55, $6A, $55	; tile #116
	.byt $43, $55, $6A, $54, $6A, $74, $7A, $54	; tile #117
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7E, $7D	; tile #118
	.byt $7D, $7D, $7B, $77, $6F, $5F, $7F, $7F	; tile #119
	.byt $7E, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #120
	.byt $7F, $5F, $6F, $77, $7B, $7D, $7E, $7F	; tile #121
	.byt $7F, $7F, $7F, $7E, $7C, $79, $7A, $79	; tile #122
	.byt $7F, $7F, $7F, $43, $69, $54, $6A, $74	; tile #123
	.byt $4A, $55, $4A, $55, $4A, $55, $4A, $40	; tile #124
	.byt $6A, $55, $6A, $55, $6A, $55, $6A, $40	; tile #125
	.byt $6A, $54, $6A, $54, $6A, $54, $6A, $40	; tile #126
	.byt $7A, $54, $6A, $54, $6A, $54, $6A, $40	; tile #127
	.byt $7F, $7F, $7F, $70, $6A, $55, $4B, $55	; tile #128
	.byt $7F, $7F, $7F, $5F, $6F, $57, $67, $77	; tile #129
	.byt $7F, $7F, $7F, $7F, $7E, $7D, $7B, $77	; tile #130
	.byt $7B, $77, $6F, $5F, $7F, $7F, $7F, $7F	; tile #131
	.byt $6F, $77, $7B, $7D, $7E, $7F, $7F, $7F	; tile #132
	.byt $7F, $7F, $7F, $7F, $7F, $5F, $6F, $77	; tile #133
	.byt $6F, $6F, $6F, $6F, $6E, $69, $67, $5E	; tile #134
	.byt $7B, $77, $77, $6E, $5E, $79, $67, $5F	; tile #135
	.byt $6F, $5F, $5F, $7F, $7F, $7F, $7F, $7F	; tile #136
	.byt $77, $77, $77, $77, $77, $77, $77, $70	; tile #137
	.byt $7B, $79, $7A, $79, $7A, $7C, $7F, $40	; tile #138
	.byt $6A, $54, $62, $55, $4A, $55, $4A, $55	; tile #139
	.byt $40, $55, $6A, $5D, $7A, $75, $6A, $75	; tile #140
	.byt $40, $55, $6A, $55, $6E, $57, $6B, $55	; tile #141
	.byt $4A, $45, $60, $54, $6A, $54, $6A, $54	; tile #142
	.byt $67, $57, $67, $57, $67, $4F, $7F, $40	; tile #143
	.byt $7D, $7D, $7D, $7D, $7E, $7E, $7E, $40	; tile #144
	.byt $7F, $7F, $7E, $7D, $7B, $77, $6F, $5F	; tile #145
	.byt $6F, $5F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #146
	.byt $7B, $7D, $7E, $7F, $7F, $7F, $7F, $7F	; tile #147
	.byt $7F, $7F, $7F, $5F, $6F, $77, $7B, $7D	; tile #148
	.byt $79, $7C, $7E, $7F, $7F, $7F, $7F, $7F	; tile #149
	.byt $79, $47, $7E, $59, $67, $7F, $7F, $7F	; tile #150
	.byt $79, $67, $5F, $7F, $7F, $7F, $7F, $7C	; tile #151
	.byt $7F, $7F, $7F, $7F, $7C, $73, $4F, $7F	; tile #152
	.byt $7F, $7C, $73, $4F, $7F, $7F, $7F, $7F	; tile #153
	.byt $4F, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #154
	.byt $4A, $55, $4A, $55, $4A, $55, $62, $7C	; tile #155
	.byt $6A, $75, $6A, $75, $7A, $55, $6A, $40	; tile #156
	.byt $6B, $55, $6B, $57, $6E, $55, $6A, $40	; tile #157
	.byt $6A, $54, $6A, $54, $6A, $54, $61, $4F	; tile #158
	.byt $5F, $5F, $5F, $5F, $6F, $6F, $6F, $40	; tile #159
	.byt $7F, $7F, $7F, $7F, $7F, $7C, $73, $4F	; tile #160
	.byt $7F, $7F, $7C, $73, $4F, $7F, $7F, $7F	; tile #161
	.byt $73, $4F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #162
; Walkbox Data
wb_data
	.byt 036, 054, 009, 010, $01
	.byt 038, 051, 012, 013, $02
	.byt 036, 054, 014, 014, $02
	.byt 027, 055, 015, 016, $02
	.byt 056, 068, 016, 016, $02
	.byt 041, 049, 011, 011, $02
	.byt 010, 026, 016, 016, $02
	.byt 000, 009, 015, 016, $22	
	
; Walk matrix
wb_matrix
	.byt 0, 5, 5, 5, 5, 5, 5, 5
	.byt 5, 1, 2, 2, 2, 5, 2, 2
	.byt 1, 1, 2, 3, 3, 1, 3, 3
	.byt 2, 2, 2, 3, 4, 2, 6, 6
	.byt 3, 3, 3, 3, 4, 3, 3, 3
	.byt 0, 1, 1, 1, 1, 5, 1, 1
	.byt 3, 3, 3, 3, 3, 3, 6, 7
	.byt 6, 6, 6, 6, 6, 6, 6, 7
; Palette Information is stored as one column only for now...
; Palette
palette
.byt 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2
.byt 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2
.byt 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2
.byt 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2
.byt 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2
.byt 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2
.byt 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2
.byt 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2, 6, 2
.byt 6, 2, 6, 2, 6, 2, 6, 2


zplane0_data
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000, 000
	.byt 002, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000, 000
	.byt 000, 004, 006, 002, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 019, 000, 000
	.byt 000, 000, 000, 000, 004, 006, 002, 001, 001, 001, 001, 001, 001, 015, 020, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 004, 006, 002, 001, 001, 011, 016, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 004, 006, 012, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 003, 005, 007, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 001, 001, 001, 003, 005, 007, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 001, 001, 001, 001, 001, 001, 003, 005, 008, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 003, 009, 010, 013, 000, 000, 000, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 014, 000, 000, 000, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 017, 000, 000, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 018, 021, 000, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 022, 013, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 014, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000
	.byt 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 001, 000

zplane0_tiles
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #1
	.byt $7E, $7E, $7E, $7E, $7F, $7F, $7F, $7F	; tile #2
	.byt $7F, $7F, $7F, $7F, $5F, $5F, $5F, $5F	; tile #3
	.byt $60, $60, $60, $60, $70, $70, $70, $70	; tile #4
	.byt $4F, $4F, $4F, $4F, $47, $47, $47, $47	; tile #5
	.byt $78, $78, $78, $78, $7C, $7C, $7C, $7C	; tile #6
	.byt $43, $43, $43, $43, $41, $41, $41, $41	; tile #7
	.byt $43, $43, $43, $43, $41, $41, $41, $40	; tile #8
	.byt $4F, $4F, $4F, $4F, $4F, $47, $47, $47	; tile #9
	.byt $47, $43, $43, $43, $43, $41, $41, $41	; tile #10
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7E	; tile #11
	.byt $7E, $7E, $7C, $78, $70, $60, $40, $40	; tile #12
	.byt $41, $40, $40, $40, $40, $40, $40, $40	; tile #13
	.byt $7F, $7F, $5F, $4F, $47, $43, $41, $40	; tile #14
	.byt $7F, $7F, $7F, $7F, $7F, $7E, $7C, $78	; tile #15
	.byt $7C, $78, $70, $60, $40, $40, $40, $40	; tile #16
	.byt $5F, $4F, $47, $43, $41, $40, $40, $40	; tile #17
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $5F, $4F	; tile #18
	.byt $7F, $7F, $7F, $7E, $7C, $78, $70, $60	; tile #19
	.byt $70, $60, $40, $40, $40, $40, $40, $40	; tile #20
	.byt $47, $43, $41, $40, $40, $40, $40, $40	; tile #21
	.byt $7F, $7F, $7F, $7F, $5F, $4F, $47, $43	; tile #22

res_end
.)


.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 200
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 2,5		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 11+26,9		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 10+26,9		; Walk position (col, row)
	.byt FACING_LEFT	; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH
	.asc "Hallway",0
#endif
#ifdef SPANISH
	.asc "Pasillo",0
#endif
#ifdef FRENCH
	.asc "Couloir",0
#endif
	
res_end	
.)

; Object resource: Camera 1
.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 201
res_start
	.byt 0			; If OBJ_FLAG_PROP skip all costume data
	.byt 4,4		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 18+26,4		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 18+26,13		; Walk position (col, row)
	.byt FACING_UP		; Facing direction for interaction
	.byt 00			; Color of text

	; META: TODO
	; tiles and pointers to animatory states are setup in the costume
	; Load the costume ID, load the resource, setup pointers, load animatory state and set it.
	; also setup direction and anim_speed	
	.byt 2			; costume ($ff for none) and skip the rest
	.byt 0			; entry in costume resource		
	.byt 0			; direction (0 or LOOK_RIGHT for animstate 0)
	.byt 0			; animation speed	
#ifdef ENGLISH
	.asc "Camera",0
#endif
#ifdef SPANISH
	.asc "C","Z"+1,"mara",0
#endif
#ifdef FRENCH
	.asc "Cam","Z"+2,"ra",0 ; "Caméra"
#endif
res_end	
.)



; Object resource: Camera 2
.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 202
res_start
	.byt 0			; If OBJ_FLAG_PROP skip all costume data
	.byt 4,4		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 14,4+3		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 14,16		; Walk position (col, row)
	.byt FACING_UP		; Facing direction for interaction
	.byt 00			; Color of text

	; META: TODO
	; tiles and pointers to animatory states are setup in the costume
	; Load the costume ID, load the resource, setup pointers, load animatory state and set it.
	; also setup direction and anim_speed	
	.byt 2			; costume ($ff for none) and skip the rest
	.byt 0			; entry in costume resource		
	.byt 0			; direction (0 or LOOK_RIGHT for animstate 0)
	.byt 0			; animation speed	
#ifdef ENGLISH
	.asc "Camera",0
#endif
#ifdef SPANISH
	.asc "C","Z"+1,"mara",0
#endif
#ifdef FRENCH
	.asc "Cam","Z"+2,"ra",0 ; "Caméra"
#endif
res_end	
.)

.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 203
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 4,8		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 0,14		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 2,16		; Walk position (col, row)
	.byt FACING_LEFT	; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH
	.asc "Service Door",0
#endif
#ifdef SPANISH
	.asc "Puerta",0
#endif
#ifdef FRENCH
	.asc "Porte",0
#endif
res_end	
.)


; Object resource: Couch
.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 204
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 13,4		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 14,15		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 27,15		; Walk position (col, row)
	.byt FACING_LEFT	; Facing direction for interaction
	.byt 00			; Color of text

	; META: TODO
	; tiles and pointers to animatory states are setup in the costume
	; Load the costume ID, load the resource, setup pointers, load animatory state and set it.
	; also setup direction and anim_speed	
	;.byt 2			; costume ($ff for none) and skip the rest
	;.byt 0			; entry in costume resource		
	;.byt 0			; direction (0 or LOOK_RIGHT for animstate 0)
	;.byt 0			; animation speed	
#ifdef ENGLISH
	.asc "Couch",0
#endif
#ifdef SPANISH
	.asc "Sof","Z"+1,0
#endif
#ifdef FRENCH
	.asc "Canap","Z"+2,0 ; "Canapé"
#endif

res_end	
.)



; Object resource: Ravella
.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 250
res_start
	.byt 0			; If OBJ_FLAG_PROP skip all costume data
	.byt 5,7		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 63,16		; Pos (col, row)
	.byt ZPLANE_2		; Zplane
	.byt 56,16		; Walk position (col, row)
	.byt FACING_RIGHT	; Facing direction for interaction
	.byt 6			; Color of text

	; META: TODO
	; tiles and pointers to animatory states are setup in the costume
	; Load the costume ID, load the resource, setup pointers, load animatory state and set it.
	; also setup direction and anim_speed	
	.byt 200		; costume ($ff for none) and skip the rest
	.byt 0			; entry in costume resource		
	.byt LOOK_RIGHT		; direction (0 or LOOK_RIGHT for animstate 0)
	.byt 1			; animation speed	
	.asc "Ravella",0
res_end	
.)


#include "..\characters\Ravella\cost_res.s"


#include "..\scripts\mainfoyer.s"
