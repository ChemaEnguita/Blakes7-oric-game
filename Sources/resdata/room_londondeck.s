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

*=$500

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Room: london-deck
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.(
	.byt RESOURCE_ROOM
	.word (res_end - res_start + 4)
	.byt 18
res_start
; No. columns, offset to tile map, offset to tiles
	.byt 38, <(column_data-res_start), >(column_data-res_start), <(tiles_start-res_start), >(tiles_start-res_start)
; No. zplanes and offsets to zplanes
	.byt 0
; No. Walkboxes and offsets to wb data and matrix
	.byt 0, <(wb_data-res_start), >(wb_data-res_start), <(wb_matrix-res_start), >(wb_matrix-res_start)
; Offset to palette
	.byt 0, 0	; No palette information
; Entry and exit scripts
	.byt 200, 255
; Number of objects in the room and list of ids
	.byt 0
; Room name (null terminated)
	.asc "london-deck", 0
; Room tile map
column_data
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 001, 014, 027, 046, 064, 003, 112, 128, 142, 155, 169, 191, 000, 000, 000, 000
	.byt 000, 001, 014, 027, 047, 064, 003, 113, 129, 143, 156, 170, 192, 000, 000, 000, 000
	.byt 000, 001, 014, 027, 048, 064, 003, 114, 130, 144, 157, 171, 193, 000, 000, 000, 000
	.byt 000, 001, 014, 027, 047, 064, 003, 115, 131, 145, 158, 172, 194, 000, 000, 000, 000
	.byt 000, 001, 014, 027, 049, 065, 089, 116, 132, 146, 159, 173, 195, 000, 000, 000, 000
	.byt 000, 001, 014, 028, 050, 066, 090, 117, 133, 147, 160, 174, 196, 000, 000, 000, 000
	.byt 000, 001, 014, 029, 000, 067, 091, 118, 134, 148, 161, 175, 197, 000, 000, 000, 000
	.byt 000, 001, 014, 030, 000, 068, 092, 119, 135, 149, 162, 176, 198, 000, 000, 000, 000
	.byt 000, 001, 014, 031, 051, 069, 093, 120, 136, 150, 163, 177, 199, 000, 000, 000, 000
	.byt 000, 001, 015, 032, 052, 070, 094, 000, 083, 151, 164, 178, 200, 000, 000, 000, 000
	.byt 000, 002, 002, 002, 002, 071, 095, 000, 000, 000, 165, 179, 201, 000, 000, 000, 000
	.byt 000, 003, 003, 003, 003, 072, 096, 121, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 004, 016, 033, 003, 073, 000, 122, 137, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 005, 000, 034, 003, 074, 097, 123, 138, 152, 166, 180, 202, 000, 000, 000, 000
	.byt 000, 005, 000, 034, 003, 003, 098, 100, 139, 048, 048, 048, 203, 000, 000, 000, 000
	.byt 000, 005, 017, 035, 003, 003, 098, 100, 139, 048, 048, 048, 203, 000, 000, 000, 000
	.byt 000, 006, 018, 036, 003, 003, 098, 100, 139, 048, 048, 048, 203, 000, 000, 000, 000
	.byt 000, 003, 003, 003, 003, 003, 098, 100, 139, 048, 048, 048, 203, 000, 000, 000, 000
	.byt 000, 003, 003, 003, 003, 003, 098, 100, 139, 048, 048, 048, 203, 000, 000, 000, 000
	.byt 000, 007, 019, 037, 053, 075, 098, 100, 139, 048, 048, 181, 106, 000, 000, 000, 000
	.byt 000, 008, 020, 038, 054, 076, 099, 124, 139, 153, 167, 182, 204, 000, 000, 000, 000
	.byt 000, 009, 021, 039, 055, 077, 100, 125, 140, 000, 000, 183, 205, 000, 000, 000, 000
	.byt 000, 010, 022, 040, 056, 078, 101, 000, 000, 000, 000, 098, 205, 000, 000, 000, 000
	.byt 000, 011, 023, 041, 057, 079, 102, 000, 000, 000, 000, 184, 206, 000, 000, 000, 000
	.byt 000, 012, 024, 042, 058, 080, 103, 000, 000, 000, 000, 185, 205, 000, 000, 000, 000
	.byt 000, 012, 000, 043, 059, 081, 104, 000, 000, 000, 000, 098, 205, 000, 000, 000, 000
	.byt 000, 012, 000, 044, 060, 082, 105, 000, 000, 000, 000, 098, 205, 000, 000, 000, 000
	.byt 000, 012, 025, 000, 000, 083, 106, 000, 000, 000, 000, 186, 207, 000, 000, 000, 000
	.byt 000, 012, 026, 045, 000, 000, 107, 000, 000, 000, 000, 187, 205, 000, 000, 000, 000
	.byt 000, 012, 012, 012, 061, 084, 103, 000, 000, 000, 000, 188, 205, 000, 000, 000, 000
	.byt 000, 012, 012, 012, 061, 085, 108, 000, 000, 000, 000, 098, 208, 000, 000, 000, 000
	.byt 000, 012, 012, 012, 061, 086, 109, 126, 141, 154, 168, 098, 205, 000, 000, 000, 000
	.byt 000, 012, 012, 012, 062, 087, 110, 127, 000, 000, 000, 189, 205, 000, 000, 000, 000
	.byt 000, 013, 013, 013, 063, 088, 111, 111, 111, 111, 111, 190, 209, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000

; Room tile set
tiles_start
	.byt $73, $6D, $D2, $6D, $73, $7F, $7F, $7F	; tile #1
	.byt $6F, $65, $6F, $65, $6F, $65, $6F, $65	; tile #2
	.byt $7F, $55, $7F, $55, $7F, $55, $7F, $55	; tile #3
	.byt $7F, $55, $7F, $55, $7F, $55, $7F, $60	; tile #4
	.byt $7F, $55, $7F, $55, $7F, $55, $7F, $40	; tile #5
	.byt $7F, $55, $7F, $55, $7F, $55, $7F, $75	; tile #6
	.byt $40, $EA, $FF, $EB, $FF, $FD, $DE, $FB	; tile #7
	.byt $40, $C4, $C6, $D6, $FF, $FF, $FB, $D6	; tile #8
	.byt $5F, $40, $42, $40, $42, $48, $42, $40	; tile #9
	.byt $68, $41, $40, $41, $44, $51, $40, $41	; tile #10
	.byt $60, $52, $60, $52, $60, $52, $60, $52	; tile #11
	.byt $40, $6A, $40, $6A, $40, $6A, $40, $6A	; tile #12
	.byt $40, $68, $40, $68, $40, $68, $40, $68	; tile #13
	.byt $CC, $DE, $DE, $CC, $7F, $7F, $7F, $7F	; tile #14
	.byt $CF, $DF, $DF, $CD, $7F, $7F, $7F, $7F	; tile #15
	.byt $40, $50, $50, $50, $50, $50, $50, $50	; tile #16
	.byt $40, $4C, $40, $44, $40, $44, $40, $40	; tile #17
	.byt $5F, $55, $5F, $55, $5F, $55, $5F, $55	; tile #18
	.byt $DB, $FD, $DF, $FE, $DF, $FE, $DF, $E9	; tile #19
	.byt $FA, $D6, $F4, $EE, $E8, $F6, $FC, $D6	; tile #20
	.byt $42, $40, $52, $40, $42, $40, $42, $40	; tile #21
	.byt $40, $41, $48, $41, $40, $49, $40, $41	; tile #22
	.byt $60, $52, $60, $50, $60, $50, $60, $40	; tile #23
	.byt $40, $60, $40, $40, $40, $40, $40, $40	; tile #24
	.byt $40, $6A, $40, $4A, $40, $40, $40, $40	; tile #25
	.byt $40, $6A, $40, $6A, $40, $6A, $40, $4A	; tile #26
	.byt $7F, $73, $6D, $6D, $73, $7F, $7C, $7C	; tile #27
	.byt $7F, $73, $6D, $6D, $72, $7C, $60, $60	; tile #28
	.byt $7F, $73, $6F, $78, $40, $40, $40, $40	; tile #29
	.byt $7F, $7F, $7F, $4F, $47, $43, $40, $40	; tile #30
	.byt $7F, $DE, $FF, $DE, $FF, $DE, $FF, $7F	; tile #31
	.byt $7F, $7F, $FF, $DE, $FF, $DE, $FF, $7F	; tile #32
	.byt $50, $50, $50, $50, $50, $50, $4F, $60	; tile #33
	.byt $40, $40, $40, $40, $40, $40, $7F, $40	; tile #34
	.byt $40, $40, $40, $40, $40, $40, $7E, $40	; tile #35
	.byt $5F, $55, $5F, $55, $5F, $55, $5F, $75	; tile #36
	.byt $ED, $EB, $ED, $FF, $D6, $FD, $FE, $FF	; tile #37
	.byt $D4, $DE, $DE, $FE, $EA, $DA, $FE, $FE	; tile #38
	.byt $42, $40, $42, $40, $42, $48, $42, $40	; tile #39
	.byt $40, $41, $48, $41, $48, $41, $40, $41	; tile #40
	.byt $60, $50, $60, $50, $66, $56, $61, $50	; tile #41
	.byt $40, $4C, $78, $61, $42, $55, $58, $7C	; tile #42
	.byt $40, $4C, $4F, $67, $5F, $6F, $4F, $5F	; tile #43
	.byt $40, $40, $40, $40, $40, $60, $60, $70	; tile #44
	.byt $40, $42, $40, $42, $40, $42, $40, $42	; tile #45
	.byt $7F, $7F, $7F, $FC, $7F, $FE, $7F, $7F	; tile #46
	.byt $7F, $7F, $CF, $7F, $C7, $7F, $C7, $7F	; tile #47
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #48
	.byt $7F, $7F, $7F, $7E, $7E, $7E, $7C, $7C	; tile #49
	.byt $60, $40, $40, $40, $40, $40, $40, $40	; tile #50
	.byt $5F, $4F, $4F, $4F, $47, $43, $43, $43	; tile #51
	.byt $7E, $7F, $7E, $7F, $7E, $7F, $7E, $7F	; tile #52
	.byt $DF, $F1, $D0, $F0, $D0, $F0, $D0, $F0	; tile #53
	.byt $FE, $FE, $FE, $FE, $F6, $FA, $FE, $F4	; tile #54
	.byt $42, $40, $4A, $40, $42, $40, $42, $40	; tile #55
	.byt $40, $41, $54, $41, $40, $51, $42, $45	; tile #56
	.byt $66, $56, $65, $55, $66, $56, $63, $43	; tile #57
	.byt $7F, $7F, $7F, $7F, $4F, $47, $7F, $6F	; tile #58
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $77, $7F	; tile #59
	.byt $78, $70, $70, $60, $60, $60, $60, $60	; tile #60
	.byt $40, $6A, $40, $6A, $40, $40, $40, $40	; tile #61
	.byt $40, $6A, $40, $6A, $40, $4A, $40, $41	; tile #62
	.byt $40, $68, $40, $68, $40, $68, $40, $78	; tile #63
	.byt $7F, $7F, $40, $40, $40, $40, $7F, $55	; tile #64
	.byt $7C, $7C, $40, $40, $40, $40, $7C, $54	; tile #65
	.byt $40, $42, $47, $47, $43, $47, $5F, $5E	; tile #66
	.byt $40, $40, $40, $40, $60, $78, $7C, $47	; tile #67
	.byt $40, $40, $40, $40, $41, $43, $4E, $7E	; tile #68
	.byt $43, $43, $43, $40, $60, $40, $40, $40	; tile #69
	.byt $7E, $7F, $7E, $40, $40, $40, $40, $40	; tile #70
	.byt $6F, $6F, $60, $40, $40, $40, $40, $40	; tile #71
	.byt $7F, $7F, $43, $40, $40, $40, $42, $40	; tile #72
	.byt $7F, $55, $7F, $4F, $40, $40, $7E, $41	; tile #73
	.byt $7F, $55, $7F, $75, $4F, $47, $43, $43	; tile #74
	.byt $F0, $F0, $F0, $F0, $F0, $F0, $F0, $7F	; tile #75
	.byt $FA, $F6, $FE, $FE, $FE, $FE, $FE, $7F	; tile #76
	.byt $42, $40, $4A, $41, $42, $45, $4A, $55	; tile #77
	.byt $4B, $54, $64, $50, $60, $50, $60, $50	; tile #78
	.byt $42, $43, $41, $41, $41, $41, $40, $40	; tile #79
	.byt $40, $41, $7F, $43, $7F, $6F, $70, $40	; tile #80
	.byt $77, $7F, $7E, $78, $70, $40, $40, $40	; tile #81
	.byt $40, $40, $40, $40, $46, $4F, $5F, $5F	; tile #82
	.byt $40, $40, $40, $40, $40, $40, $40, $60	; tile #83
	.byt $41, $40, $40, $40, $40, $40, $40, $40	; tile #84
	.byt $67, $40, $40, $40, $40, $40, $40, $40	; tile #85
	.byt $7F, $40, $40, $40, $40, $40, $40, $40	; tile #86
	.byt $40, $60, $50, $40, $40, $48, $48, $48	; tile #87
	.byt $78, $78, $58, $58, $58, $58, $58, $58	; tile #88
	.byt $7D, $55, $7D, $55, $7D, $55, $7D, $55	; tile #89
	.byt $40, $40, $43, $43, $43, $42, $40, $60	; tile #90
	.byt $5F, $7F, $7F, $7F, $6E, $4F, $4D, $41	; tile #91
	.byt $7E, $5E, $7C, $50, $7B, $6C, $58, $70	; tile #92
	.byt $42, $40, $4D, $41, $40, $40, $40, $40	; tile #93
	.byt $40, $40, $40, $7F, $40, $40, $40, $40	; tile #94
	.byt $40, $40, $40, $78, $4E, $43, $40, $40	; tile #95
	.byt $40, $40, $40, $40, $40, $70, $58, $4C	; tile #96
	.byt $42, $43, $52, $53, $52, $53, $52, $53	; tile #97
	.byt $7F, $55, $6A, $55, $6A, $55, $6A, $55	; tile #98
	.byt $7F, $55, $6B, $55, $6B, $55, $6B, $55	; tile #99
	.byt $6A, $55, $6A, $55, $6A, $55, $6A, $55	; tile #100
	.byt $61, $50, $60, $50, $61, $57, $60, $40	; tile #101
	.byt $40, $78, $40, $40, $7F, $40, $40, $40	; tile #102
	.byt $40, $40, $40, $40, $7F, $40, $40, $40	; tile #103
	.byt $40, $43, $43, $42, $78, $40, $40, $40	; tile #104
	.byt $7F, $7F, $78, $40, $40, $40, $40, $40	; tile #105
	.byt $70, $60, $40, $40, $40, $40, $40, $40	; tile #106
	.byt $40, $40, $40, $4E, $41, $40, $40, $40	; tile #107
	.byt $40, $40, $40, $40, $7C, $46, $41, $40	; tile #108
	.byt $40, $40, $40, $40, $40, $40, $70, $48	; tile #109
	.byt $48, $48, $48, $48, $48, $48, $48, $40	; tile #110
	.byt $58, $58, $58, $58, $58, $58, $58, $58	; tile #111
	.byt $7F, $40, $7F, $7F, $7F, $7F, $6D, $52	; tile #112
	.byt $7F, $40, $7F, $7F, $7F, $7F, $6B, $50	; tile #113
	.byt $7F, $40, $7F, $7F, $7F, $7B, $50, $6E	; tile #114
	.byt $7F, $40, $7F, $7F, $7F, $7F, $40, $75	; tile #115
	.byt $7D, $41, $7D, $7F, $7F, $7D, $42, $55	; tile #116
	.byt $60, $70, $50, $7F, $7F, $6A, $6A, $6D	; tile #117
	.byt $43, $43, $40, $7F, $7F, $68, $45, $7F	; tile #118
	.byt $60, $40, $40, $7F, $7F, $40, $5D, $7E	; tile #119
	.byt $40, $40, $40, $40, $40, $60, $40, $78	; tile #120
	.byt $46, $43, $41, $41, $40, $40, $40, $40	; tile #121
	.byt $40, $40, $40, $60, $60, $60, $50, $48	; tile #122
	.byt $52, $53, $52, $53, $52, $43, $52, $43	; tile #123
	.byt $6B, $55, $6B, $55, $6B, $55, $6B, $55	; tile #124
	.byt $6A, $54, $68, $54, $68, $54, $6C, $5C	; tile #125
	.byt $48, $48, $48, $48, $48, $44, $44, $44	; tile #126
	.byt $48, $40, $40, $40, $40, $40, $40, $40	; tile #127
	.byt $40, $6A, $75, $40, $57, $54, $40, $40	; tile #128
	.byt $40, $76, $52, $40, $7F, $40, $40, $40	; tile #129
	.byt $62, $62, $7B, $40, $68, $40, $40, $40	; tile #130
	.byt $4B, $5C, $4E, $4E, $47, $47, $43, $43	; tile #131
	.byt $7F, $40, $40, $40, $40, $40, $66, $60	; tile #132
	.byt $6B, $43, $41, $41, $40, $44, $42, $40	; tile #133
	.byt $60, $60, $70, $78, $78, $7D, $5C, $4E	; tile #134
	.byt $40, $4A, $41, $40, $60, $60, $40, $40	; tile #135
	.byt $78, $5C, $5C, $4E, $66, $77, $43, $4B	; tile #136
	.byt $44, $46, $40, $42, $41, $41, $40, $40	; tile #137
	.byt $42, $43, $42, $43, $42, $63, $62, $73	; tile #138
	.byt $40, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #139
	.byt $7C, $7C, $7C, $78, $70, $70, $70, $60	; tile #140
	.byt $44, $44, $44, $44, $42, $42, $42, $42	; tile #141
	.byt $40, $50, $40, $7F, $7F, $7F, $7F, $7F	; tile #142
	.byt $6A, $40, $42, $7A, $7F, $7F, $7F, $7F	; tile #143
	.byt $68, $40, $60, $70, $78, $70, $70, $40	; tile #144
	.byt $41, $41, $40, $40, $40, $40, $40, $40	; tile #145
	.byt $70, $70, $78, $78, $5C, $53, $40, $50	; tile #146
	.byt $40, $40, $40, $40, $40, $7F, $40, $40	; tile #147
	.byt $4E, $47, $47, $43, $7E, $40, $42, $44	; tile #148
	.byt $40, $50, $40, $47, $5F, $40, $40, $44	; tile #149
	.byt $41, $40, $48, $7F, $50, $40, $40, $6A	; tile #150
	.byt $70, $70, $78, $60, $48, $68, $5C, $76	; tile #151
	.byt $5A, $59, $55, $55, $45, $47, $42, $42	; tile #152
	.byt $7F, $7F, $7E, $7C, $7C, $78, $78, $70	; tile #153
	.byt $42, $42, $44, $44, $44, $44, $44, $44	; tile #154
	.byt $7F, $50, $40, $40, $7F, $7F, $5A, $6F	; tile #155
	.byt $7F, $40, $40, $54, $7E, $7D, $6D, $5A	; tile #156
	.byt $56, $40, $52, $40, $40, $54, $50, $50	; tile #157
	.byt $60, $40, $40, $40, $40, $54, $40, $40	; tile #158
	.byt $60, $4A, $6A, $55, $49, $6A, $52, $45	; tile #159
	.byt $49, $65, $75, $4A, $55, $6A, $42, $60	; tile #160
	.byt $52, $55, $55, $6A, $55, $65, $60, $5F	; tile #161
	.byt $6A, $55, $55, $6A, $55, $50, $47, $7F	; tile #162
	.byt $6A, $55, $55, $6A, $54, $43, $7F, $7F	; tile #163
	.byt $6B, $54, $55, $69, $7C, $53, $7F, $7F	; tile #164
	.byt $40, $40, $40, $40, $50, $40, $68, $68	; tile #165
	.byt $42, $42, $43, $41, $41, $41, $41, $41	; tile #166
	.byt $70, $70, $70, $70, $70, $70, $70, $70	; tile #167
	.byt $44, $48, $48, $48, $48, $48, $48, $48	; tile #168
	.byt $75, $56, $7A, $4F, $40, $68, $65, $54	; tile #169
	.byt $6E, $6A, $76, $5B, $4A, $40, $54, $62	; tile #170
	.byt $6D, $6A, $40, $6A, $7B, $6C, $41, $60	; tile #171
	.byt $6D, $40, $44, $40, $51, $5A, $41, $6A	; tile #172
	.byt $50, $47, $53, $49, $4E, $4A, $4B, $65	; tile #173
	.byt $47, $7F, $7F, $7F, $7E, $40, $40, $5F	; tile #174
	.byt $7F, $7F, $7F, $7F, $60, $40, $57, $7F	; tile #175
	.byt $7F, $7F, $7F, $7A, $40, $41, $7F, $6A	; tile #176
	.byt $7F, $7F, $7F, $40, $40, $5F, $7D, $6B	; tile #177
	.byt $7F, $7F, $68, $40, $42, $7F, $69, $55	; tile #178
	.byt $70, $78, $40, $40, $78, $54, $54, $55	; tile #179
	.byt $41, $41, $41, $41, $42, $42, $42, $42	; tile #180
	.byt $7F, $7F, $7F, $7F, $7F, $7E, $7E, $7C	; tile #181
	.byt $40, $40, $41, $43, $42, $45, $46, $4D	; tile #182
	.byt $5F, $75, $6A, $55, $6A, $55, $6A, $55	; tile #183
	.byt $7F, $55, $6A, $55, $6A, $55, $6A, $54	; tile #184
	.byt $7F, $54, $68, $51, $62, $45, $4A, $55	; tile #185
	.byt $7F, $55, $4A, $55, $4A, $55, $4A, $55	; tile #186
	.byt $7F, $54, $6A, $55, $6A, $55, $6A, $55	; tile #187
	.byt $7F, $55, $4A, $45, $62, $51, $68, $54	; tile #188
	.byt $7E, $55, $6A, $55, $6A, $55, $6A, $55	; tile #189
	.byt $58, $58, $68, $58, $68, $50, $68, $50	; tile #190
	.byt $52, $55, $64, $40, $40, $40, $40, $40	; tile #191
	.byt $54, $4A, $62, $40, $40, $40, $40, $40	; tile #192
	.byt $6A, $51, $55, $40, $40, $40, $40, $40	; tile #193
	.byt $40, $55, $41, $40, $40, $40, $40, $40	; tile #194
	.byt $52, $4D, $40, $40, $40, $40, $40, $40	; tile #195
	.byt $66, $4D, $45, $40, $40, $40, $40, $40	; tile #196
	.byt $6A, $76, $5B, $40, $40, $40, $40, $40	; tile #197
	.byt $7E, $6B, $6D, $40, $40, $40, $40, $40	; tile #198
	.byt $7D, $56, $76, $40, $40, $40, $40, $40	; tile #199
	.byt $75, $6A, $6A, $40, $40, $40, $40, $40	; tile #200
	.byt $54, $6A, $60, $40, $40, $40, $40, $40	; tile #201
	.byt $42, $43, $43, $40, $40, $40, $40, $40	; tile #202
	.byt $7F, $7F, $7F, $40, $40, $40, $40, $40	; tile #203
	.byt $4A, $55, $5A, $40, $40, $40, $40, $40	; tile #204
	.byt $6A, $55, $6A, $40, $40, $40, $40, $40	; tile #205
	.byt $68, $51, $62, $40, $40, $40, $40, $40	; tile #206
	.byt $4A, $55, $4A, $40, $40, $40, $40, $40	; tile #207
	.byt $4A, $45, $62, $40, $40, $40, $40, $40	; tile #208
	.byt $68, $50, $68, $40, $40, $40, $40, $40	; tile #209
; Walkbox Data
wb_data
; Walk matrix
wb_matrix


res_end
.)


; Exterior of the liberator
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Room: No name
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.(
	.byt RESOURCE_ROOM|$80
	.word (res_end - res_start + 4)
	.byt 200
res_start
; No. columns, offset to tile map, offset to tiles
	.byt 38, <(column_data-res_start), >(column_data-res_start), <(tiles_start-res_start), >(tiles_start-res_start)
; No. zplanes and offsets to zplanes
	.byt 0
; No. Walkboxes and offsets to wb data and matrix
	.byt 0, <(wb_data-res_start), >(wb_data-res_start), <(wb_matrix-res_start), >(wb_matrix-res_start)
; Offset to palette
	.byt <(palette-res_start), >(palette-res_start)
; Entry and exit scripts
	.byt 255, 255
; Number of objects in the room and list of ids
	.byt 0
; Room name (null terminated)
	.asc "No name", 0
; Room tile map
column_data
	.byt 000, 002, 000, 000, 000, 000, 077, 000, 000, 000, 000, 000, 000, 064, 000, 000, 000
	.byt 000, 000, 000, 000, 064, 000, 000, 000, 000, 000, 000, 000, 028, 000, 064, 000, 000
	.byt 001, 000, 000, 000, 064, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 030, 028, 000, 064, 000, 065, 097, 000, 000, 000, 000, 000, 073, 003, 000
	.byt 000, 009, 000, 000, 000, 000, 000, 000, 000, 120, 000, 000, 000, 000, 000, 078, 000
	.byt 002, 000, 031, 000, 000, 073, 003, 000, 000, 000, 000, 000, 029, 000, 000, 027, 000
	.byt 003, 000, 000, 000, 000, 000, 078, 000, 000, 000, 000, 000, 187, 000, 000, 000, 000
	.byt 000, 000, 000, 029, 000, 000, 027, 000, 000, 121, 000, 078, 188, 000, 000, 000, 000
	.byt 004, 000, 000, 000, 065, 000, 000, 000, 000, 122, 000, 161, 000, 030, 028, 000, 000
	.byt 000, 010, 000, 000, 000, 000, 049, 000, 000, 122, 000, 162, 000, 000, 000, 000, 000
	.byt 000, 011, 000, 000, 000, 000, 000, 000, 000, 122, 000, 163, 000, 000, 073, 003, 000
	.byt 000, 012, 000, 049, 000, 000, 000, 000, 098, 123, 000, 164, 189, 000, 000, 078, 000
	.byt 000, 013, 032, 050, 000, 000, 050, 000, 099, 124, 000, 165, 190, 000, 000, 000, 000
	.byt 000, 014, 033, 000, 000, 000, 078, 000, 100, 125, 145, 166, 191, 000, 000, 000, 000
	.byt 000, 015, 034, 000, 000, 000, 027, 000, 101, 126, 146, 167, 192, 212, 000, 000, 000
	.byt 000, 016, 035, 000, 065, 000, 000, 000, 102, 127, 147, 168, 193, 213, 000, 000, 000
	.byt 000, 017, 036, 051, 000, 000, 049, 000, 103, 128, 000, 169, 194, 214, 000, 050, 000
	.byt 000, 018, 037, 052, 000, 000, 000, 000, 104, 129, 000, 170, 195, 215, 000, 078, 000
	.byt 005, 019, 038, 053, 066, 073, 003, 000, 105, 130, 000, 171, 196, 216, 000, 027, 000
	.byt 006, 020, 039, 054, 067, 000, 078, 031, 106, 131, 000, 172, 197, 217, 000, 000, 000
	.byt 007, 021, 040, 055, 068, 000, 000, 084, 107, 132, 148, 173, 198, 218, 231, 000, 000
	.byt 008, 022, 041, 056, 069, 000, 000, 085, 108, 133, 149, 174, 199, 219, 232, 000, 000
	.byt 000, 023, 042, 057, 000, 000, 000, 086, 109, 134, 150, 175, 200, 220, 233, 000, 000
	.byt 000, 024, 043, 058, 070, 000, 000, 087, 110, 135, 151, 176, 201, 221, 234, 239, 000
	.byt 000, 025, 044, 059, 071, 074, 000, 088, 111, 136, 152, 177, 202, 222, 235, 240, 000
	.byt 000, 026, 045, 060, 072, 075, 079, 089, 112, 137, 153, 178, 203, 223, 236, 000, 000
	.byt 000, 000, 046, 061, 000, 076, 080, 090, 113, 138, 154, 179, 204, 224, 237, 000, 000
	.byt 000, 000, 047, 062, 000, 000, 081, 091, 114, 139, 155, 180, 205, 225, 238, 000, 050
	.byt 000, 027, 048, 063, 000, 000, 000, 092, 115, 140, 156, 181, 206, 226, 000, 000, 078
	.byt 000, 000, 000, 000, 000, 000, 082, 093, 116, 141, 157, 182, 207, 227, 000, 000, 027
	.byt 000, 000, 000, 000, 000, 000, 083, 094, 117, 142, 158, 183, 208, 228, 000, 000, 000
	.byt 000, 000, 000, 064, 000, 000, 000, 095, 118, 143, 159, 184, 209, 229, 000, 000, 000
	.byt 000, 028, 028, 000, 064, 000, 000, 096, 119, 144, 160, 185, 210, 230, 000, 027, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 078, 031, 000, 000, 186, 211, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 073, 000, 000, 027, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 065, 000, 000, 073, 003, 000, 000, 000, 000, 073, 003, 000
	.byt 000, 029, 029, 000, 000, 000, 000, 049, 000, 078, 000, 028, 000, 000, 000, 078, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000

; Room tile set
tiles_start
	.byt $40, $40, $40, $40, $41, $40, $40, $40	; tile #1
	.byt $40, $40, $50, $40, $40, $40, $40, $40	; tile #2
	.byt $40, $40, $42, $40, $40, $40, $40, $40	; tile #3
	.byt $40, $40, $40, $40, $60, $40, $40, $40	; tile #4
	.byt $40, $40, $40, $40, $40, $40, $4F, $5F	; tile #5
	.byt $40, $40, $40, $40, $50, $5F, $6D, $77	; tile #6
	.byt $40, $40, $40, $40, $40, $60, $5A, $42	; tile #7
	.byt $40, $40, $40, $40, $40, $40, $40, $7C	; tile #8
	.byt $40, $40, $40, $60, $40, $40, $40, $40	; tile #9
	.byt $40, $40, $40, $40, $40, $41, $40, $40	; tile #10
	.byt $40, $40, $40, $40, $40, $7F, $40, $40	; tile #11
	.byt $40, $40, $40, $40, $40, $78, $47, $40	; tile #12
	.byt $40, $40, $40, $40, $4F, $40, $7F, $40	; tile #13
	.byt $40, $40, $40, $40, $60, $5F, $60, $5F	; tile #14
	.byt $40, $40, $40, $40, $40, $60, $5F, $7C	; tile #15
	.byt $40, $40, $40, $40, $45, $4F, $5A, $7D	; tile #16
	.byt $40, $40, $40, $42, $7F, $7E, $61, $5C	; tile #17
	.byt $41, $41, $47, $4B, $7E, $6B, $47, $6B	; tile #18
	.byt $75, $7F, $5F, $7B, $6F, $7F, $6E, $7F	; tile #19
	.byt $5B, $79, $5D, $7D, $5E, $76, $7F, $5A	; tile #20
	.byt $74, $7F, $7F, $77, $7D, $75, $7F, $7A	; tile #21
	.byt $46, $73, $5F, $7F, $6F, $55, $5B, $6D	; tile #22
	.byt $40, $40, $60, $70, $7C, $7E, $7F, $5F	; tile #23
	.byt $40, $40, $40, $40, $40, $40, $67, $78	; tile #24
	.byt $40, $40, $40, $40, $40, $40, $74, $7F	; tile #25
	.byt $40, $40, $40, $40, $40, $40, $40, $68	; tile #26
	.byt $40, $42, $50, $40, $40, $40, $40, $40	; tile #27
	.byt $40, $40, $44, $40, $40, $40, $40, $40	; tile #28
	.byt $40, $40, $40, $40, $40, $40, $42, $40	; tile #29
	.byt $40, $40, $48, $40, $40, $40, $48, $40	; tile #30
	.byt $40, $40, $40, $40, $40, $40, $40, $60	; tile #31
	.byt $40, $43, $40, $40, $40, $40, $40, $40	; tile #32
	.byt $40, $7F, $40, $40, $40, $40, $40, $40	; tile #33
	.byt $43, $7E, $41, $40, $40, $40, $40, $40	; tile #34
	.byt $7F, $6D, $5D, $6D, $58, $4E, $43, $40	; tile #35
	.byt $76, $7E, $76, $5C, $74, $47, $79, $4E	; tile #36
	.byt $6E, $6B, $63, $6D, $5F, $45, $7B, $5F	; tile #37
	.byt $77, $7F, $7F, $6D, $7F, $6F, $7B, $5F	; tile #38
	.byt $7E, $56, $7E, $76, $5E, $77, $5D, $6D	; tile #39
	.byt $7F, $6F, $7A, $7F, $7F, $6A, $75, $7F	; tile #40
	.byt $69, $7F, $7D, $6D, $7F, $6D, $56, $56	; tile #41
	.byt $5F, $7B, $6F, $7B, $7F, $6F, $7B, $7D	; tile #42
	.byt $7D, $7E, $5E, $76, $7E, $7E, $7E, $6E	; tile #43
	.byt $5F, $6F, $75, $5C, $5D, $5D, $57, $5F	; tile #44
	.byt $7E, $7F, $7F, $73, $6F, $7F, $7F, $7B	; tile #45
	.byt $40, $7E, $5F, $77, $7F, $7B, $6F, $7D	; tile #46
	.byt $40, $40, $70, $7C, $7E, $7F, $77, $7E	; tile #47
	.byt $40, $40, $40, $40, $40, $60, $70, $78	; tile #48
	.byt $40, $48, $40, $40, $40, $40, $40, $40	; tile #49
	.byt $40, $40, $40, $50, $40, $40, $40, $40	; tile #50
	.byt $43, $40, $40, $40, $40, $40, $40, $40	; tile #51
	.byt $6D, $5F, $56, $47, $4D, $47, $42, $40	; tile #52
	.byt $77, $7B, $7F, $5D, $77, $7D, $7F, $77	; tile #53
	.byt $7B, $5D, $73, $7A, $6A, $77, $4C, $5C	; tile #54
	.byt $54, $7E, $6F, $62, $68, $42, $60, $62	; tile #55
	.byt $77, $6A, $7F, $6F, $52, $5A, $40, $45	; tile #56
	.byt $7F, $6E, $7B, $7D, $6E, $72, $60, $45	; tile #57
	.byt $7E, $77, $7C, $68, $60, $60, $40, $40	; tile #58
	.byt $5E, $4F, $7B, $5F, $6D, $6A, $40, $50	; tile #59
	.byt $7F, $7F, $5D, $7F, $6F, $7B, $64, $40	; tile #60
	.byt $7F, $6F, $7B, $5E, $7F, $4A, $77, $40	; tile #61
	.byt $77, $7A, $7F, $7F, $75, $7F, $6D, $62	; tile #62
	.byt $78, $78, $78, $58, $78, $50, $60, $60	; tile #63
	.byt $40, $40, $40, $44, $40, $40, $40, $40	; tile #64
	.byt $40, $40, $48, $40, $40, $40, $40, $40	; tile #65
	.byt $68, $6A, $40, $40, $40, $40, $40, $40	; tile #66
	.byt $7F, $45, $40, $40, $40, $40, $40, $40	; tile #67
	.byt $50, $76, $40, $40, $40, $40, $40, $40	; tile #68
	.byt $48, $7E, $40, $40, $40, $40, $40, $40	; tile #69
	.byt $72, $6B, $40, $40, $40, $40, $40, $40	; tile #70
	.byt $40, $54, $6B, $6D, $5A, $4E, $4E, $40	; tile #71
	.byt $40, $40, $70, $78, $78, $6C, $7C, $5E	; tile #72
	.byt $40, $41, $40, $40, $40, $40, $40, $40	; tile #73
	.byt $40, $40, $42, $41, $41, $40, $40, $40	; tile #74
	.byt $5F, $4B, $4F, $77, $6A, $7B, $45, $40	; tile #75
	.byt $40, $40, $60, $70, $60, $78, $78, $7C	; tile #76
	.byt $40, $40, $40, $48, $40, $40, $40, $40	; tile #77
	.byt $40, $40, $40, $40, $40, $40, $40, $41	; tile #78
	.byt $4A, $40, $44, $40, $41, $40, $41, $40	; tile #79
	.byt $68, $7E, $5E, $4B, $57, $47, $57, $43	; tile #80
	.byt $40, $40, $40, $40, $40, $60, $60, $70	; tile #81
	.byt $40, $40, $40, $40, $40, $40, $40, $54	; tile #82
	.byt $40, $40, $40, $40, $40, $40, $60, $6A	; tile #83
	.byt $40, $40, $40, $40, $48, $40, $41, $40	; tile #84
	.byt $40, $41, $64, $41, $50, $60, $46, $48	; tile #85
	.byt $40, $40, $56, $41, $6F, $6A, $5C, $4F	; tile #86
	.byt $40, $40, $40, $40, $7A, $78, $78, $5E	; tile #87
	.byt $40, $40, $40, $40, $6A, $40, $40, $40	; tile #88
	.byt $40, $43, $6D, $69, $50, $5E, $4F, $45	; tile #89
	.byt $7D, $4D, $5F, $45, $60, $7E, $6D, $7F	; tile #90
	.byt $68, $78, $5C, $76, $40, $7F, $6F, $75	; tile #91
	.byt $42, $40, $41, $48, $41, $68, $7B, $7D	; tile #92
	.byt $6A, $41, $48, $4E, $5B, $7D, $6F, $7A	; tile #93
	.byt $51, $55, $68, $4B, $64, $6A, $75, $7A	; tile #94
	.byt $50, $48, $6A, $42, $69, $4A, $61, $40	; tile #95
	.byt $40, $40, $40, $40, $40, $60, $50, $50	; tile #96
	.byt $40, $40, $40, $40, $40, $60, $40, $40	; tile #97
	.byt $40, $40, $40, $40, $43, $42, $47, $47	; tile #98
	.byt $40, $40, $40, $4F, $77, $7B, $7F, $7D	; tile #99
	.byt $40, $40, $40, $72, $7F, $5B, $7D, $6D	; tile #100
	.byt $40, $40, $41, $7E, $7E, $56, $7F, $7F	; tile #101
	.byt $40, $42, $5F, $73, $7D, $6D, $5A, $5F	; tile #102
	.byt $40, $55, $7F, $6F, $7B, $7F, $6A, $7F	; tile #103
	.byt $40, $4D, $77, $77, $5D, $7F, $52, $5F	; tile #104
	.byt $41, $76, $5F, $76, $7F, $5F, $6D, $77	; tile #105
	.byt $60, $5A, $6F, $75, $6F, $75, $74, $77	; tile #106
	.byt $44, $61, $7C, $6E, $7A, $5E, $43, $40	; tile #107
	.byt $60, $40, $47, $70, $40, $40, $5D, $40	; tile #108
	.byt $5A, $6E, $4F, $45, $47, $56, $55, $46	; tile #109
	.byt $5D, $7E, $6D, $7D, $77, $7D, $74, $7D	; tile #110
	.byt $7F, $40, $42, $50, $4A, $40, $41, $5A	; tile #111
	.byt $57, $43, $6B, $41, $6B, $41, $41, $7D	; tile #112
	.byt $5B, $7F, $6B, $7D, $7F, $76, $5D, $7C	; tile #113
	.byt $7F, $5F, $6F, $7D, $6F, $75, $5F, $46	; tile #114
	.byt $5E, $6E, $7F, $7B, $5F, $77, $7D, $6E	; tile #115
	.byt $6F, $7D, $5F, $56, $5F, $6D, $7F, $6A	; tile #116
	.byt $7F, $5B, $77, $7F, $6B, $7B, $4F, $42	; tile #117
	.byt $6A, $58, $7F, $76, $5F, $7F, $6D, $5A	; tile #118
	.byt $68, $50, $54, $76, $7C, $7F, $7F, $6B	; tile #119
	.byt $40, $40, $40, $40, $40, $44, $40, $40	; tile #120
	.byt $47, $40, $40, $40, $40, $40, $40, $40	; tile #121
	.byt $7F, $40, $40, $40, $40, $40, $40, $40	; tile #122
	.byt $7D, $4F, $47, $43, $41, $40, $40, $40	; tile #123
	.byt $5F, $7A, $5F, $7F, $5D, $46, $40, $40	; tile #124
	.byt $7D, $6D, $7F, $7A, $77, $60, $40, $40	; tile #125
	.byt $7F, $6F, $7E, $76, $7E, $45, $40, $40	; tile #126
	.byt $5B, $5B, $7A, $7D, $77, $73, $4C, $40	; tile #127
	.byt $51, $75, $6F, $7F, $75, $7F, $68, $40	; tile #128
	.byt $50, $57, $7B, $6D, $7F, $77, $48, $40	; tile #129
	.byt $6A, $57, $7E, $6F, $7E, $6F, $50, $41	; tile #130
	.byt $76, $76, $75, $7F, $6B, $6F, $50, $60	; tile #131
	.byt $4A, $41, $58, $7F, $54, $7A, $49, $44	; tile #132
	.byt $40, $6D, $41, $40, $70, $46, $41, $70	; tile #133
	.byt $47, $42, $5D, $45, $43, $4A, $68, $5A	; tile #134
	.byt $68, $7E, $58, $5E, $74, $7D, $68, $5A	; tile #135
	.byt $6A, $40, $40, $40, $40, $40, $55, $40	; tile #136
	.byt $63, $41, $41, $53, $40, $43, $56, $47	; tile #137
	.byt $5F, $56, $75, $5D, $40, $44, $7B, $6D	; tile #138
	.byt $7D, $75, $4A, $40, $4E, $47, $44, $70	; tile #139
	.byt $7F, $6B, $5F, $41, $7A, $5F, $55, $5D	; tile #140
	.byt $7F, $4B, $5E, $57, $7E, $7F, $6D, $7E	; tile #141
	.byt $6F, $77, $7D, $6F, $7F, $76, $7D, $77	; tile #142
	.byt $7F, $5F, $7B, $7D, $56, $78, $4B, $40	; tile #143
	.byt $7F, $7E, $52, $5C, $60, $68, $50, $50	; tile #144
	.byt $40, $40, $40, $40, $43, $44, $49, $48	; tile #145
	.byt $40, $48, $52, $54, $69, $48, $45, $51	; tile #146
	.byt $40, $40, $40, $60, $40, $40, $40, $50	; tile #147
	.byt $6A, $41, $54, $40, $45, $40, $40, $40	; tile #148
	.byt $48, $46, $61, $51, $4E, $65, $48, $40	; tile #149
	.byt $55, $57, $6D, $5F, $40, $6A, $40, $40	; tile #150
	.byt $70, $54, $40, $60, $40, $40, $40, $5F	; tile #151
	.byt $42, $60, $40, $40, $40, $40, $44, $78	; tile #152
	.byt $5D, $5D, $60, $40, $40, $40, $57, $41	; tile #153
	.byt $7F, $6A, $40, $40, $40, $40, $40, $70	; tile #154
	.byt $78, $68, $40, $40, $40, $40, $42, $40	; tile #155
	.byt $4F, $5A, $4B, $44, $51, $5D, $41, $48	; tile #156
	.byt $6F, $7F, $6A, $76, $51, $4A, $42, $40	; tile #157
	.byt $6C, $72, $69, $54, $4B, $61, $5A, $40	; tile #158
	.byt $7A, $42, $54, $42, $54, $40, $40, $40	; tile #159
	.byt $40, $60, $40, $40, $40, $40, $40, $40	; tile #160
	.byt $40, $40, $40, $40, $40, $40, $40, $7F	; tile #161
	.byt $40, $40, $40, $40, $40, $40, $41, $7E	; tile #162
	.byt $40, $40, $40, $40, $40, $40, $7F, $40	; tile #163
	.byt $40, $40, $42, $50, $4B, $48, $68, $5E	; tile #164
	.byt $40, $40, $40, $48, $60, $48, $64, $75	; tile #165
	.byt $52, $40, $42, $60, $42, $41, $43, $49	; tile #166
	.byt $64, $60, $44, $42, $40, $4A, $53, $5B	; tile #167
	.byt $40, $60, $50, $48, $62, $69, $52, $7A	; tile #168
	.byt $40, $40, $40, $40, $60, $40, $40, $50	; tile #169
	.byt $40, $40, $40, $41, $64, $41, $40, $42	; tile #170
	.byt $40, $40, $40, $40, $42, $40, $40, $51	; tile #171
	.byt $40, $40, $40, $40, $41, $40, $41, $51	; tile #172
	.byt $40, $40, $40, $40, $40, $44, $49, $5A	; tile #173
	.byt $40, $40, $40, $41, $68, $42, $52, $7A	; tile #174
	.byt $40, $42, $45, $42, $54, $47, $75, $5F	; tile #175
	.byt $47, $51, $4E, $63, $5F, $4B, $7F, $7B	; tile #176
	.byt $44, $77, $5A, $4F, $77, $5B, $7B, $5D	; tile #177
	.byt $48, $77, $7D, $7F, $58, $6F, $6A, $74	; tile #178
	.byt $5A, $55, $7F, $7F, $43, $7D, $65, $42	; tile #179
	.byt $40, $60, $60, $7C, $7F, $6F, $7D, $7E	; tile #180
	.byt $45, $60, $47, $41, $72, $7D, $74, $7F	; tile #181
	.byt $40, $45, $7F, $76, $7F, $5F, $6F, $58	; tile #182
	.byt $40, $68, $7F, $7E, $7F, $77, $7D, $73	; tile #183
	.byt $40, $69, $7F, $7B, $7F, $5F, $7F, $7B	; tile #184
	.byt $40, $50, $78, $5F, $7B, $5E, $7B, $7F	; tile #185
	.byt $40, $40, $40, $40, $70, $78, $78, $5C	; tile #186
	.byt $4F, $40, $40, $40, $40, $40, $40, $40	; tile #187
	.byt $7E, $40, $40, $40, $40, $40, $40, $40	; tile #188
	.byt $54, $42, $40, $40, $40, $40, $40, $40	; tile #189
	.byt $44, $40, $6A, $40, $40, $40, $40, $40	; tile #190
	.byt $47, $4E, $57, $4F, $47, $43, $41, $40	; tile #191
	.byt $76, $7F, $6A, $7F, $6A, $7F, $7F, $57	; tile #192
	.byt $60, $75, $72, $56, $77, $6E, $6D, $5D	; tile #193
	.byt $40, $44, $72, $5B, $64, $41, $74, $56	; tile #194
	.byt $41, $64, $49, $7E, $4F, $56, $78, $68	; tile #195
	.byt $44, $47, $7C, $71, $40, $40, $40, $40	; tile #196
	.byt $67, $6A, $5F, $68, $40, $41, $43, $43	; tile #197
	.byt $77, $7F, $75, $42, $5D, $57, $58, $50	; tile #198
	.byt $7C, $56, $74, $73, $6D, $78, $41, $65	; tile #199
	.byt $75, $5F, $77, $5B, $5F, $4D, $7F, $55	; tile #200
	.byt $5F, $77, $5F, $7D, $6F, $7D, $7F, $6E	; tile #201
	.byt $7D, $5E, $7A, $7E, $6F, $7D, $77, $7F	; tile #202
	.byt $7B, $7E, $77, $5B, $7F, $5F, $5D, $5D	; tile #203
	.byt $7F, $7F, $49, $7F, $7E, $7B, $45, $76	; tile #204
	.byt $7F, $6B, $7F, $7F, $7F, $4D, $7F, $6F	; tile #205
	.byt $7D, $7F, $5F, $7F, $77, $7F, $7F, $77	; tile #206
	.byt $56, $57, $4E, $4F, $4B, $6B, $4F, $4B	; tile #207
	.byt $77, $5F, $7E, $5F, $7F, $7F, $6F, $7F	; tile #208
	.byt $7F, $7B, $7F, $7D, $7F, $5F, $7B, $7F	; tile #209
	.byt $7D, $5F, $7F, $7F, $5F, $7B, $7F, $7D	; tile #210
	.byt $7C, $6E, $7C, $6C, $7C, $6C, $78, $60	; tile #211
	.byt $5C, $42, $40, $40, $40, $40, $7F, $40	; tile #212
	.byt $7E, $40, $40, $40, $40, $4F, $70, $40	; tile #213
	.byt $60, $40, $41, $40, $41, $7E, $40, $41	; tile #214
	.byt $40, $40, $7F, $40, $7F, $40, $47, $78	; tile #215
	.byt $40, $4F, $70, $4F, $70, $40, $7F, $40	; tile #216
	.byt $43, $7F, $49, $7E, $45, $43, $7F, $40	; tile #217
	.byt $7F, $6F, $7B, $7F, $6A, $75, $7F, $5B	; tile #218
	.byt $7B, $7C, $6B, $7D, $70, $55, $7B, $5D	; tile #219
	.byt $6F, $4D, $7F, $6F, $5F, $45, $7F, $7F	; tile #220
	.byt $7F, $7B, $5F, $7F, $6F, $7B, $7F, $7F	; tile #221
	.byt $7F, $77, $5F, $7F, $6F, $77, $7F, $7B	; tile #222
	.byt $5D, $5F, $5F, $5E, $5F, $56, $5F, $5F	; tile #223
	.byt $5E, $53, $7F, $7E, $77, $7B, $7F, $6A	; tile #224
	.byt $7E, $57, $7F, $7F, $6A, $7F, $7F, $5E	; tile #225
	.byt $7F, $7F, $77, $7B, $7E, $79, $67, $6C	; tile #226
	.byt $6F, $67, $5E, $57, $7F, $5F, $74, $40	; tile #227
	.byt $7B, $7F, $7D, $7F, $6F, $7A, $40, $40	; tile #228
	.byt $7E, $7F, $6F, $7E, $40, $40, $40, $40	; tile #229
	.byt $7F, $7E, $74, $60, $40, $40, $40, $40	; tile #230
	.byt $42, $40, $40, $40, $40, $40, $40, $40	; tile #231
	.byt $6E, $40, $40, $40, $40, $40, $40, $40	; tile #232
	.byt $7E, $77, $5F, $4F, $47, $45, $41, $40	; tile #233
	.byt $7B, $7E, $5F, $7F, $77, $7F, $7F, $4D	; tile #234
	.byt $7E, $7E, $7F, $5D, $7B, $7B, $67, $5C	; tile #235
	.byt $78, $7F, $75, $7D, $77, $7F, $68, $42	; tile #236
	.byt $42, $7A, $57, $55, $7F, $7E, $40, $40	; tile #237
	.byt $74, $7C, $70, $70, $40, $40, $40, $40	; tile #238
	.byt $63, $40, $40, $40, $40, $40, $40, $40	; tile #239
	.byt $72, $40, $40, $40, $40, $40, $40, $40	; tile #240
; Walkbox Data
wb_data
; Walk matrix
wb_matrix
; Palette Information is stored as one column only for now...
; Palette
palette
.byt 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7
.byt 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7
.byt 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7
.byt 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7
.byt 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7
.byt 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7
.byt 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7
.byt 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7, 2, 7
.byt 2, 7, 2, 7, 2, 7, 2, 7


res_end
.)


#include "..\scripts\londondeck.s"


