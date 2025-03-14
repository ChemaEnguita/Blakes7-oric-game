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
; Room: CygnusExt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.(
	.byt RESOURCE_ROOM
	.word (res_end - res_start + 4)
	.byt 30
res_start
; No. columns, offset to tile map, offset to tiles
	.byt 59, <(column_data-res_start), >(column_data-res_start), <(tiles_start-res_start), >(tiles_start-res_start)
; No. zplanes and offsets to zplanes
	.byt 0
; No. Walkboxes and offsets to wb data and matrix
	.byt 1, <(wb_data-res_start), >(wb_data-res_start), <(wb_matrix-res_start), >(wb_matrix-res_start)
; Offset to palette
	.byt <(palette-res_start), >(palette-res_start)
; Entry and exit scripts
	.byt 200, 255
; Number of objects in the room and list of ids
	.byt 4,201,202,203,204
; Room name (null terminated)
	.asc "CygnusExt", 0
; Room tile map
column_data
	.byt 000, 000, 000, 000, 000, 025, 028, 033, 000, 000, 064, 068, 075, 093, 108, 121, 152
	.byt 000, 000, 000, 000, 000, 025, 028, 034, 038, 000, 065, 069, 076, 094, 109, 122, 153
	.byt 001, 003, 000, 021, 000, 025, 028, 028, 039, 000, 000, 069, 077, 000, 110, 123, 154
	.byt 002, 006, 000, 000, 022, 025, 028, 028, 040, 000, 000, 070, 078, 095, 111, 124, 155
	.byt 000, 000, 012, 000, 000, 025, 029, 028, 040, 000, 000, 071, 079, 096, 112, 125, 154
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 041, 000, 000, 000, 080, 097, 113, 126, 155
	.byt 000, 007, 000, 000, 000, 025, 028, 028, 041, 000, 000, 000, 081, 098, 098, 127, 153
	.byt 000, 000, 000, 011, 000, 025, 028, 028, 042, 000, 000, 000, 082, 098, 098, 128, 154
	.byt 000, 000, 000, 000, 000, 025, 030, 028, 042, 000, 000, 000, 082, 098, 098, 129, 153
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 042, 000, 000, 000, 082, 098, 098, 130, 156
	.byt 000, 000, 000, 015, 000, 025, 028, 035, 042, 000, 000, 000, 082, 098, 098, 131, 157
	.byt 000, 000, 013, 000, 000, 025, 028, 028, 042, 000, 000, 000, 083, 098, 098, 126, 158
	.byt 000, 008, 000, 000, 013, 025, 028, 028, 043, 000, 000, 000, 083, 098, 098, 132, 159
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 033, 000, 000, 000, 065, 098, 098, 133, 158
	.byt 003, 000, 014, 000, 000, 025, 028, 028, 044, 051, 000, 000, 000, 098, 098, 131, 159
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 028, 052, 000, 000, 000, 099, 098, 125, 159
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 028, 053, 000, 000, 000, 099, 098, 134, 153
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 028, 054, 000, 000, 000, 099, 098, 135, 154
	.byt 000, 000, 015, 000, 000, 025, 031, 028, 028, 055, 000, 000, 000, 099, 098, 128, 155
	.byt 000, 000, 000, 000, 018, 025, 028, 028, 028, 056, 000, 000, 000, 099, 098, 130, 154
	.byt 000, 009, 000, 000, 000, 025, 028, 028, 028, 057, 051, 000, 000, 099, 098, 129, 152
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 028, 058, 052, 000, 000, 099, 098, 136, 153
	.byt 000, 000, 016, 000, 000, 025, 028, 028, 028, 058, 053, 000, 000, 099, 098, 125, 154
	.byt 000, 010, 000, 000, 000, 026, 028, 028, 028, 058, 053, 000, 000, 099, 098, 133, 155
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 045, 058, 053, 000, 000, 099, 098, 137, 154
	.byt 000, 000, 017, 000, 023, 025, 028, 036, 028, 058, 053, 000, 000, 098, 098, 009, 155
	.byt 000, 006, 018, 000, 000, 025, 028, 028, 028, 058, 053, 000, 000, 098, 098, 138, 153
	.byt 004, 000, 000, 000, 000, 025, 028, 028, 028, 058, 066, 000, 000, 098, 098, 128, 154
	.byt 000, 002, 000, 020, 000, 025, 028, 028, 028, 058, 067, 000, 000, 098, 098, 136, 153
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 028, 059, 000, 000, 000, 098, 098, 139, 156
	.byt 000, 000, 000, 000, 000, 027, 028, 028, 028, 060, 000, 000, 083, 098, 098, 140, 152
	.byt 000, 011, 019, 000, 000, 025, 028, 035, 028, 061, 000, 000, 083, 098, 098, 009, 158
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 028, 062, 000, 000, 083, 098, 098, 141, 159
	.byt 005, 000, 000, 000, 000, 025, 028, 028, 046, 063, 000, 000, 000, 098, 098, 139, 158
	.byt 000, 000, 000, 000, 024, 026, 028, 028, 047, 000, 000, 000, 000, 098, 098, 132, 159
	.byt 000, 000, 020, 000, 000, 025, 032, 037, 048, 000, 000, 000, 000, 098, 098, 142, 159
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 049, 000, 000, 000, 005, 098, 114, 143, 153
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 050, 000, 000, 000, 082, 100, 009, 144, 154
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 040, 000, 000, 000, 084, 101, 000, 015, 152
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 040, 000, 000, 000, 085, 000, 000, 015, 153
	.byt 001, 003, 000, 021, 000, 025, 028, 028, 039, 000, 000, 000, 086, 000, 000, 144, 154
	.byt 002, 006, 000, 000, 022, 025, 028, 028, 040, 000, 000, 000, 087, 000, 000, 000, 155
	.byt 000, 000, 012, 000, 000, 025, 029, 028, 040, 000, 000, 000, 088, 000, 000, 144, 154
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 041, 000, 000, 000, 089, 102, 115, 145, 155
	.byt 000, 007, 000, 000, 000, 025, 028, 028, 041, 000, 000, 072, 090, 103, 116, 146, 153
	.byt 000, 000, 000, 011, 000, 025, 028, 028, 042, 000, 000, 073, 091, 104, 117, 147, 154
	.byt 000, 000, 000, 000, 000, 025, 030, 028, 042, 000, 000, 074, 092, 105, 118, 148, 153
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 042, 000, 000, 000, 000, 106, 000, 000, 156
	.byt 000, 000, 000, 015, 000, 025, 028, 035, 042, 000, 000, 000, 000, 107, 119, 149, 160
	.byt 000, 000, 013, 000, 000, 025, 028, 028, 042, 000, 000, 000, 000, 099, 120, 051, 158
	.byt 000, 008, 000, 000, 013, 025, 028, 028, 043, 000, 000, 000, 000, 098, 098, 150, 159
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 033, 000, 000, 000, 083, 098, 098, 151, 158
	.byt 003, 000, 014, 000, 000, 025, 028, 028, 044, 051, 000, 000, 000, 098, 098, 131, 159
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 028, 052, 000, 000, 000, 099, 098, 125, 159
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 028, 053, 000, 000, 000, 099, 098, 134, 153
	.byt 000, 000, 000, 000, 000, 025, 028, 028, 028, 054, 000, 000, 000, 099, 098, 135, 154
	.byt 000, 000, 015, 000, 000, 025, 031, 028, 028, 055, 000, 000, 000, 099, 098, 128, 155
	.byt 000, 000, 000, 000, 018, 025, 028, 028, 028, 056, 000, 000, 000, 099, 098, 130, 154
	.byt 000, 009, 000, 000, 000, 025, 028, 028, 028, 057, 051, 000, 000, 099, 098, 129, 152

; Room tile set
tiles_start
	.byt $40, $40, $40, $40, $40, $42, $40, $40	; tile #1
	.byt $40, $40, $40, $40, $40, $40, $40, $41	; tile #2
	.byt $40, $40, $40, $40, $40, $40, $50, $40	; tile #3
	.byt $40, $44, $40, $40, $40, $40, $40, $40	; tile #4
	.byt $40, $40, $40, $40, $40, $40, $42, $40	; tile #5
	.byt $40, $40, $40, $40, $50, $40, $40, $40	; tile #6
	.byt $40, $40, $40, $44, $40, $40, $40, $40	; tile #7
	.byt $40, $40, $50, $40, $40, $40, $40, $40	; tile #8
	.byt $60, $40, $40, $40, $40, $40, $40, $40	; tile #9
	.byt $40, $40, $40, $40, $40, $48, $40, $40	; tile #10
	.byt $44, $40, $40, $40, $40, $40, $40, $40	; tile #11
	.byt $40, $40, $40, $48, $40, $40, $40, $40	; tile #12
	.byt $40, $40, $40, $40, $40, $40, $41, $40	; tile #13
	.byt $40, $40, $42, $40, $40, $40, $40, $40	; tile #14
	.byt $40, $40, $40, $40, $40, $40, $40, $48	; tile #15
	.byt $40, $40, $40, $40, $40, $50, $40, $40	; tile #16
	.byt $40, $40, $40, $50, $40, $40, $40, $40	; tile #17
	.byt $40, $41, $40, $40, $40, $40, $40, $40	; tile #18
	.byt $40, $40, $40, $40, $40, $41, $40, $40	; tile #19
	.byt $40, $42, $40, $40, $40, $40, $40, $40	; tile #20
	.byt $40, $40, $40, $40, $48, $40, $40, $40	; tile #21
	.byt $40, $40, $44, $40, $40, $40, $40, $40	; tile #22
	.byt $40, $40, $40, $40, $40, $44, $40, $40	; tile #23
	.byt $40, $48, $40, $40, $40, $40, $40, $40	; tile #24
	.byt $40, $6A, $40, $6A, $40, $6A, $40, $6A	; tile #25
	.byt $40, $6A, $44, $6A, $40, $6A, $40, $6A	; tile #26
	.byt $40, $6A, $40, $6A, $40, $6A, $44, $6A	; tile #27
	.byt $40, $7F, $40, $7F, $40, $7F, $40, $7F	; tile #28
	.byt $44, $7F, $40, $7F, $40, $7F, $40, $7F	; tile #29
	.byt $40, $7F, $42, $7F, $40, $7F, $40, $7F	; tile #30
	.byt $40, $7F, $40, $7F, $42, $7F, $40, $7F	; tile #31
	.byt $41, $7F, $40, $7F, $40, $7F, $40, $7F	; tile #32
	.byt $40, $7F, $40, $7F, $40, $7F, $7F, $40	; tile #33
	.byt $40, $7F, $40, $7F, $40, $7F, $60, $DF	; tile #34
	.byt $40, $7F, $40, $7F, $60, $7F, $40, $7F	; tile #35
	.byt $48, $7F, $40, $7F, $40, $7F, $40, $7F	; tile #36
	.byt $40, $7F, $40, $7F, $40, $7F, $4C, $7F	; tile #37
	.byt $43, $40, $40, $40, $40, $40, $40, $40	; tile #38
	.byt $40, $FF, $41, $40, $40, $40, $40, $40	; tile #39
	.byt $40, $7F, $7F, $40, $40, $40, $40, $40	; tile #40
	.byt $40, $7F, $40, $FF, $40, $40, $40, $40	; tile #41
	.byt $40, $7F, $40, $7F, $7F, $40, $40, $40	; tile #42
	.byt $40, $7F, $40, $7F, $40, $FF, $40, $40	; tile #43
	.byt $40, $7F, $40, $7F, $40, $7F, $40, $FF	; tile #44
	.byt $40, $7F, $50, $7F, $40, $7F, $40, $7F	; tile #45
	.byt $40, $7F, $40, $7F, $41, $7F, $46, $7C	; tile #46
	.byt $41, $7E, $44, $78, $70, $40, $40, $40	; tile #47
	.byt $73, $40, $40, $40, $40, $40, $40, $40	; tile #48
	.byt $40, $FF, $40, $40, $40, $40, $40, $40	; tile #49
	.byt $40, $7F, $61, $FF, $40, $40, $40, $40	; tile #50
	.byt $41, $40, $40, $40, $40, $40, $40, $40	; tile #51
	.byt $DF, $FF, $40, $40, $40, $40, $40, $40	; tile #52
	.byt $FF, $7F, $7F, $40, $40, $40, $40, $40	; tile #53
	.byt $FF, $7F, $FF, $FF, $40, $40, $40, $40	; tile #54
	.byt $FF, $7F, $FF, $7F, $7F, $40, $40, $40	; tile #55
	.byt $FF, $7F, $FF, $7F, $FF, $FF, $41, $40	; tile #56
	.byt $FF, $7F, $FF, $7F, $FF, $7F, $DF, $FF	; tile #57
	.byt $FF, $7F, $FF, $7F, $FF, $7F, $FF, $7F	; tile #58
	.byt $FF, $7F, $FF, $7F, $FF, $7F, $FE, $FF	; tile #59
	.byt $FF, $7F, $FF, $7E, $FC, $FF, $40, $40	; tile #60
	.byt $FF, $7F, $FC, $FF, $40, $40, $40, $40	; tile #61
	.byt $FF, $FF, $70, $40, $40, $40, $40, $40	; tile #62
	.byt $78, $40, $40, $40, $40, $40, $40, $40	; tile #63
	.byt $40, $40, $40, $40, $40, $40, $4A, $40	; tile #64
	.byt $40, $40, $40, $40, $40, $40, $68, $40	; tile #65
	.byt $FF, $FF, $40, $40, $40, $40, $40, $40	; tile #66
	.byt $7F, $40, $40, $40, $40, $40, $40, $40	; tile #67
	.byt $4A, $40, $4A, $40, $4A, $40, $4A, $40	; tile #68
	.byt $6A, $40, $6A, $40, $6A, $40, $68, $40	; tile #69
	.byt $60, $40, $60, $40, $6A, $40, $6A, $40	; tile #70
	.byt $40, $40, $40, $40, $40, $40, $6C, $40	; tile #71
	.byt $40, $40, $5F, $7A, $7F, $7D, $5F, $40	; tile #72
	.byt $FE, $40, $C0, $4A, $7F, $68, $C0, $40	; tile #73
	.byt $40, $40, $7E, $57, $7F, $5F, $7E, $40	; tile #74
	.byt $48, $40, $48, $40, $4A, $40, $42, $40	; tile #75
	.byt $68, $40, $60, $40, $40, $40, $40, $40	; tile #76
	.byt $68, $40, $40, $40, $40, $40, $40, $40	; tile #77
	.byt $4A, $40, $4A, $40, $4A, $40, $40, $40	; tile #78
	.byt $6A, $40, $6A, $40, $4A, $40, $40, $40	; tile #79
	.byt $60, $40, $6A, $40, $6A, $40, $6A, $40	; tile #80
	.byt $40, $40, $68, $40, $6A, $40, $6A, $40	; tile #81
	.byt $40, $40, $40, $40, $6A, $40, $6A, $40	; tile #82
	.byt $40, $40, $40, $40, $40, $40, $6A, $40	; tile #83
	.byt $40, $40, $40, $40, $40, $41, $4F, $5F	; tile #84
	.byt $40, $40, $40, $40, $47, $7F, $7F, $7F	; tile #85
	.byt $40, $40, $40, $40, $7F, $7F, $7F, $40	; tile #86
	.byt $40, $40, $40, $7F, $7F, $7F, $7D, $40	; tile #87
	.byt $40, $40, $40, $40, $7F, $77, $40, $40	; tile #88
	.byt $40, $40, $40, $40, $7F, $60, $41, $42	; tile #89
	.byt $40, $40, $41, $47, $5F, $74, $6C, $48	; tile #90
	.byt $FE, $40, $FE, $7F, $FF, $40, $F1, $5F	; tile #91
	.byt $40, $40, $70, $68, $74, $5A, $5A, $48	; tile #92
	.byt $48, $40, $4A, $40, $4A, $40, $48, $40	; tile #93
	.byt $60, $40, $42, $40, $40, $40, $68, $40	; tile #94
	.byt $42, $40, $40, $40, $40, $40, $40, $40	; tile #95
	.byt $4A, $40, $4A, $40, $4A, $40, $62, $40	; tile #96
	.byt $6A, $40, $6A, $40, $6A, $40, $4A, $40	; tile #97
	.byt $6A, $40, $6A, $40, $6A, $40, $6A, $40	; tile #98
	.byt $40, $40, $6A, $40, $6A, $40, $6A, $40	; tile #99
	.byt $69, $43, $63, $46, $6E, $4C, $78, $70	; tile #100
	.byt $7C, $70, $40, $40, $40, $40, $40, $40	; tile #101
	.byt $42, $41, $41, $40, $40, $40, $40, $40	; tile #102
	.byt $58, $58, $4C, $4E, $4E, $4C, $54, $54	; tile #103
	.byt $7F, $61, $79, $5E, $6B, $66, $51, $46	; tile #104
	.byt $6C, $74, $74, $74, $68, $50, $60, $40	; tile #105
	.byt $4A, $60, $6A, $40, $5C, $4F, $47, $40	; tile #106
	.byt $6A, $40, $6A, $40, $4A, $60, $78, $5C	; tile #107
	.byt $4A, $40, $4A, $40, $48, $40, $48, $40	; tile #108
	.byt $40, $40, $40, $40, $42, $40, $60, $40	; tile #109
	.byt $40, $40, $40, $40, $40, $40, $48, $40	; tile #110
	.byt $42, $40, $60, $40, $40, $40, $40, $40	; tile #111
	.byt $60, $40, $42, $40, $4A, $40, $6A, $40	; tile #112
	.byt $40, $40, $6A, $40, $42, $40, $6A, $40	; tile #113
	.byt $69, $43, $62, $46, $66, $4C, $6C, $48	; tile #114
	.byt $40, $40, $40, $40, $41, $41, $41, $42	; tile #115
	.byt $54, $52, $68, $64, $50, $6B, $7C, $7F	; tile #116
	.byt $4D, $44, $C6, $48, $CE, $60, $DE, $40	; tile #117
	.byt $40, $40, $40, $48, $50, $78, $60, $48	; tile #118
	.byt $4E, $43, $40, $40, $40, $40, $40, $40	; tile #119
	.byt $4A, $40, $6A, $70, $5A, $48, $4C, $47	; tile #120
	.byt $42, $40, $42, $40, $40, $40, $40, $48	; tile #121
	.byt $40, $40, $48, $40, $40, $40, $40, $48	; tile #122
	.byt $68, $40, $60, $40, $40, $48, $70, $71	; tile #123
	.byt $40, $40, $60, $40, $40, $40, $40, $40	; tile #124
	.byt $6A, $40, $6A, $40, $40, $48, $70, $71	; tile #125
	.byt $6A, $40, $60, $40, $40, $40, $40, $40	; tile #126
	.byt $6A, $40, $40, $40, $40, $40, $40, $48	; tile #127
	.byt $6A, $40, $40, $40, $40, $40, $40, $40	; tile #128
	.byt $6A, $40, $6A, $40, $40, $40, $40, $48	; tile #129
	.byt $6A, $40, $6A, $40, $40, $40, $40, $40	; tile #130
	.byt $6A, $40, $6A, $40, $40, $48, $70, $51	; tile #131
	.byt $6A, $40, $60, $40, $40, $48, $70, $51	; tile #132
	.byt $6A, $40, $4A, $40, $40, $40, $40, $40	; tile #133
	.byt $6A, $40, $4A, $40, $40, $40, $40, $48	; tile #134
	.byt $48, $40, $40, $40, $40, $48, $70, $71	; tile #135
	.byt $6A, $40, $42, $40, $40, $40, $40, $48	; tile #136
	.byt $6A, $40, $40, $40, $40, $48, $70, $71	; tile #137
	.byt $42, $40, $40, $40, $40, $40, $40, $48	; tile #138
	.byt $6A, $40, $62, $40, $40, $40, $40, $40	; tile #139
	.byt $6A, $40, $68, $40, $40, $48, $70, $51	; tile #140
	.byt $4A, $40, $40, $40, $40, $48, $70, $51	; tile #141
	.byt $6A, $41, $43, $46, $4C, $48, $70, $71	; tile #142
	.byt $58, $70, $60, $40, $40, $40, $40, $48	; tile #143
	.byt $40, $40, $40, $40, $40, $48, $70, $71	; tile #144
	.byt $43, $43, $41, $43, $43, $40, $40, $40	; tile #145
	.byt $46, $41, $6E, $7C, $60, $40, $40, $48	; tile #146
	.byt $DE, $70, $CE, $7B, $5E, $E6, $40, $FE	; tile #147
	.byt $5C, $76, $67, $44, $40, $40, $40, $48	; tile #148
	.byt $40, $40, $40, $40, $40, $48, $70, $51	; tile #149
	.byt $72, $58, $5C, $46, $43, $48, $70, $51	; tile #150
	.byt $6A, $40, $4A, $40, $70, $78, $5C, $46	; tile #151
	.byt $48, $48, $7F, $7F, $7F, $7F, $7F, $7F	; tile #152
	.byt $72, $76, $7F, $7F, $7F, $7F, $7F, $7F	; tile #153
	.byt $76, $76, $7F, $7F, $7F, $7F, $7F, $7F	; tile #154
	.byt $56, $76, $7F, $7F, $7F, $7F, $7F, $7F	; tile #155
	.byt $72, $72, $7F, $7F, $7F, $7F, $7F, $7F	; tile #156
	.byt $40, $40, $7F, $7F, $7F, $7F, $7F, $7F	; tile #157
	.byt $52, $52, $7F, $7F, $7F, $7F, $7F, $7F	; tile #158
	.byt $56, $52, $7F, $7F, $7F, $7F, $7F, $7F	; tile #159
	.byt $50, $50, $7F, $7F, $7F, $7F, $7F, $7F	; tile #160
; Walkbox Data
wb_data
	.byt 000, 058, 016, 016, $01
; Walk matrix
wb_matrix
	.byt 0
; Palette Information is stored as one column only for now...
; Palette
palette
.byt 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6
.byt 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6
.byt 3, 6, 3, 6, 3, 6, 3, 6, 3, 4, 3, 4, 3, 4, 3, 4
.byt 3, 4, 3, 4, 3, 4, 3, 4, 3, 4, 3, 4, 3, 4, 3, 4
.byt 3, 4, 3, 4, 3, 4, 3, 4, 3, 4, 3, 4, 3, 4, 3, 4
.byt 3, 4, 3, 4, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3
.byt 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3
.byt 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 6, 2, 6, 2, 6
.byt 2, 6, 2, 6, 2, 6, 2, 6


res_end
.)


; Object resource 200: Ship in atmosphere
.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end - res_start +4)
	.byt 200
res_start
	.byt 0			; If OBJ_FLAG_PROP skip all costume data
	.byt 5,4		; Size (cols rows)
	.byt $ff		; Room
	.byt 5,1		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt $ff,$ff		; Walk position (col, row)
	.byt LOOK_RIGHT		; Facing direction for interaction
	.byt 0			; Color of text

	; Load the costume ID, load the resource, setup pointers, load animatory state and set it.
	; also setup direction and anim_speed	
	.byt 200			; costume ($ff for none) and skip the rest
	.byt 0			; entry in costume resource		
	.byt 0			; direction (0 or LOOK_RIGHT for animstate 0)
	.byt 0			; animation speed	
	.asc ".",0
res_end	
.)

; Costume 200 for ship in atmosphere
.(
.byt RESOURCE_COSTUME|$80
.word (res_end - res_start + 4)
.byt 200
res_start
	; Pointers to tiles
	.byt <(costume_tiles-res_start-8), >(costume_tiles-res_start-8)
	.byt <(costume_masks-res_start-8), >(costume_masks-res_start-8)
	; Number of costumes included
	.byt 1
	;Offsets to animatory states for each costume
	.byt <(anim_states - res_start), >(anim_states - res_start)
anim_states
; Animatory state 0 (shipatm1.png)
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 1, 2, 3, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
; Animatory state 1 (shipatm2.png)
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 4, 5, 6
.byt 0, 0, 0, 7, 8
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
costume_tiles
; Tile graphic 1
.byt $0, $3f, $7, $0, $0, $0, $0, $0
; Tile graphic 2
.byt $1f, $3c, $38, $3c, $7, $0, $0, $0
; Tile graphic 3
.byt $30, $8, $14, $8, $30, $0, $0, $0
; Tile graphic 4
.byt $0, $0, $0, $0, $0, $f, $1, $0
; Tile graphic 5
.byt $0, $0, $0, $0, $7, $3f, $3e, $f
; Tile graphic 6
.byt $0, $0, $0, $0, $3c, $2, $5, $2
; Tile graphic 7
.byt $1, $0, $0, $0, $0, $0, $0, $0
; Tile graphic 8
.byt $3c, $0, $0, $0, $0, $0, $0, $0
costume_masks
; Tile mask 1
.byt $ff, $40, $78, $ff, $ff, $ff, $ff, $ff
; Tile mask 2
.byt $60, $40, $40, $40, $78, $ff, $ff, $ff
; Tile mask 3
.byt $4f, $47, $43, $47, $4f, $ff, $ff, $ff
; Tile mask 4
.byt $ff, $ff, $ff, $ff, $ff, $70, $7e, $ff
; Tile mask 5
.byt $ff, $ff, $ff, $ff, $78, $40, $40, $70
; Tile mask 6
.byt $ff, $ff, $ff, $ff, $43, $41, $40, $41
; Tile mask 7
.byt $7e, $ff, $ff, $ff, $ff, $ff, $ff, $ff
; Tile mask 8
.byt $43, $ff, $ff, $ff, $ff, $ff, $ff, $ff
res_end
.)

; Object resource 201: Sign at 44,11
.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end-res_start+4)
	.byt 201
res_start
	.byt 0|OBJ_FLAG_PROP
	.byt 3,1	;Size (cols, rows)
	.byt 255	;Initial room
	.byt 44,11	;Location (col, row)
	.byt ZPLANE_1	;Zplane
	.byt 48,15	;Walk position (col, row)
	.byt FACING_LEFT
	.byt 0	; Color of text
#ifdef ENGLISH	
	.asc "Sign",0	;Object's name
#endif
#ifdef SPANISH
	.asc "Cartel",0	;Object's name
#endif	
#ifdef FRENCH
	.asc "Ecriteau",0	;Object's name
#endif	
res_end
.)

; Object resource 202: Corpse
.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end-res_start+4)
	.byt 202
res_start
	.byt 0|OBJ_FLAG_PROP
	.byt 3,4	;Size (cols, rows)
	.byt 255	;Initial room
	.byt 44,15	;Location (col, row)
	.byt ZPLANE_1	;Zplane
	.byt 48,15	;Walk position (col, row)
	.byt FACING_LEFT
	.byt 0	; Color of text
#ifdef ENGLISH	
	.asc "Corpse",0	;Object's name
#endif
#ifdef SPANISH
	.asc "Cad","Z"+1,"ver",0	;Object's name
#endif	
#ifdef FRENCH
	.asc "Corps",0	;Object's name
#endif	
res_end
.)

; Object resource 203: Exit to clearing
.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end-res_start+4)
	.byt 203
res_start
	.byt 0|OBJ_FLAG_PROP
	.byt 2,16	;Size (cols, rows)
	.byt 255	;Initial room
	.byt 58,15	;Location (col, row)
	.byt ZPLANE_1	;Zplane
	.byt 56,15	;Walk position (col, row)
	.byt FACING_RIGHT
	.byt 0	; Color of text
#ifdef ENGLISH	
	.asc "Clearing",0	;Object's name
#endif
#ifdef SPANISH
	.asc "Claro",0	;Object's name
#endif	
#ifdef FRENCH
	.asc "Clairi","Z"+1,"re",0	; "Clairière"
#endif	
res_end
.)


; Object resource 204: Exit to building
.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end-res_start+4)
	.byt 204
res_start
	.byt 0|OBJ_FLAG_PROP
	.byt 2,16	;Size (cols, rows)
	.byt 255	;Initial room
	.byt 0,15	;Location (col, row)
	.byt ZPLANE_1	;Zplane
	.byt 0,15	;Walk position (col, row)
	.byt FACING_LEFT
	.byt 0	; Color of text
#ifdef ENGLISH	
	.asc "Path",0	;Object's name
#endif
#ifdef SPANISH
	.asc "Camino",0	;Object's name
#endif	
#ifdef FRENCH
	.asc "Chemin",0	;Object's name
#endif	
res_end
.)




#include "..\scripts\caexterior.s"

