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
; Room: camera control
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.(
	.byt RESOURCE_ROOM
	.word (res_end - res_start + 4)
	.byt 10
res_start
; No. columns, offset to tile map, offset to tiles
	.byt 38, <(column_data-res_start), >(column_data-res_start), <(tiles_start-res_start), >(tiles_start-res_start)
; No. zplanes and offsets to zplanes
	.byt 1
	.byt <(zplane0_data-res_start), >(zplane0_data-res_start), <(zplane0_tiles-res_start), >(zplane0_tiles-res_start)	
; No. Walkboxes and offsets to wb data and matrix
	.byt 3, <(wb_data-res_start), >(wb_data-res_start), <(wb_matrix-res_start), >(wb_matrix-res_start)
; Offset to palette
	.byt 0, 0	; No palette information
; Entry and exit scripts
	.byt 200, 255
; Number of objects in the room and list of ids
	.byt 4,200,201,203,204
; Room name (null terminated)
	.asc "camcontrol", 0
; Room tile map
column_data
	.byt 001, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 007, 245
	.byt 002, 007, 007, 007, 007, 007, 069, 090, 098, 105, 122, 122, 170, 122, 214, 231, 216
	.byt 003, 008, 007, 007, 007, 007, 070, 091, 099, 106, 123, 145, 171, 194, 215, 197, 197
	.byt 004, 009, 007, 007, 007, 007, 071, 092, 100, 107, 124, 146, 107, 195, 216, 197, 197
	.byt 004, 010, 007, 007, 007, 007, 072, 093, 101, 101, 101, 101, 101, 196, 197, 197, 197
	.byt 004, 011, 007, 007, 007, 007, 007, 007, 007, 007, 125, 147, 172, 197, 197, 197, 197
	.byt 004, 004, 015, 018, 018, 018, 018, 018, 018, 018, 126, 148, 173, 198, 197, 197, 197
	.byt 004, 004, 016, 007, 007, 007, 007, 007, 007, 007, 127, 149, 174, 199, 197, 197, 197
	.byt 004, 004, 016, 007, 007, 007, 007, 007, 007, 007, 128, 150, 175, 197, 197, 197, 197
	.byt 004, 004, 016, 007, 007, 007, 007, 007, 007, 007, 007, 007, 175, 197, 197, 197, 197
	.byt 004, 004, 016, 007, 007, 007, 007, 007, 007, 007, 007, 007, 175, 197, 197, 197, 197
	.byt 004, 004, 016, 007, 007, 007, 007, 007, 007, 007, 007, 007, 175, 197, 197, 197, 197
	.byt 004, 004, 016, 007, 007, 007, 007, 007, 007, 007, 007, 007, 175, 197, 197, 197, 197
	.byt 004, 004, 016, 007, 007, 007, 007, 007, 007, 007, 007, 007, 175, 197, 197, 197, 197
	.byt 004, 004, 016, 019, 034, 052, 073, 007, 007, 007, 007, 007, 175, 197, 197, 197, 197
	.byt 004, 004, 016, 020, 035, 053, 074, 007, 007, 108, 129, 098, 122, 200, 197, 197, 197
	.byt 004, 004, 016, 021, 036, 054, 075, 007, 007, 109, 130, 151, 176, 201, 197, 197, 197
	.byt 004, 004, 016, 022, 037, 055, 076, 007, 007, 109, 131, 152, 131, 201, 197, 197, 197
	.byt 004, 004, 016, 023, 038, 056, 077, 007, 007, 109, 130, 153, 177, 201, 197, 197, 197
	.byt 004, 004, 016, 024, 039, 057, 078, 007, 007, 109, 131, 152, 131, 201, 197, 197, 197
	.byt 004, 004, 016, 025, 040, 058, 079, 007, 007, 109, 130, 154, 178, 201, 197, 197, 197
	.byt 004, 004, 016, 007, 007, 007, 007, 007, 007, 109, 131, 152, 131, 201, 197, 197, 197
	.byt 004, 004, 016, 026, 041, 041, 080, 007, 007, 110, 132, 155, 131, 201, 197, 197, 197
	.byt 004, 004, 016, 027, 042, 059, 081, 007, 007, 111, 133, 156, 179, 201, 197, 197, 197
	.byt 004, 004, 016, 028, 043, 060, 082, 007, 007, 112, 134, 157, 180, 202, 217, 197, 197
	.byt 004, 004, 016, 029, 044, 061, 083, 007, 007, 113, 135, 158, 181, 203, 218, 232, 197
	.byt 004, 004, 016, 029, 045, 062, 083, 007, 007, 109, 136, 159, 182, 204, 219, 233, 197
	.byt 004, 004, 016, 030, 046, 063, 084, 007, 007, 109, 137, 160, 183, 205, 220, 234, 197
	.byt 004, 004, 016, 031, 047, 064, 085, 007, 007, 109, 137, 161, 184, 206, 221, 235, 246
	.byt 004, 004, 016, 007, 007, 007, 007, 007, 007, 114, 138, 162, 185, 201, 222, 236, 247
	.byt 004, 004, 016, 007, 007, 007, 007, 007, 007, 115, 139, 163, 186, 207, 223, 237, 248
	.byt 004, 004, 016, 007, 007, 007, 007, 007, 007, 116, 140, 164, 187, 208, 224, 238, 249
	.byt 004, 004, 016, 007, 007, 007, 007, 007, 007, 117, 141, 165, 188, 209, 225, 239, 249
	.byt 004, 012, 017, 018, 018, 018, 018, 018, 018, 118, 142, 166, 189, 210, 226, 240, 249
	.byt 004, 013, 007, 007, 048, 065, 086, 094, 102, 007, 143, 167, 190, 211, 227, 241, 249
	.byt 004, 014, 007, 007, 049, 066, 087, 095, 103, 119, 007, 168, 191, 212, 228, 242, 250
	.byt 005, 007, 007, 032, 050, 067, 088, 096, 104, 120, 007, 169, 192, 131, 229, 243, 251
	.byt 006, 007, 007, 033, 051, 068, 089, 097, 068, 121, 144, 007, 193, 213, 230, 244, 252

; Room tile set
tiles_start
	.byt $C0, $F8, $78, $55, $7F, $55, $7F, $55	; tile #1
	.byt $C0, $C0, $C0, $F0, $73, $54, $7F, $55	; tile #2
	.byt $C0, $C0, $C0, $C0, $C0, $C0, $F0, $51	; tile #3
	.byt $C0, $C0, $C0, $C0, $C0, $C0, $C0, $C0	; tile #4
	.byt $C0, $C0, $C0, $C0, $C0, $C1, $C6, $45	; tile #5
	.byt $C0, $C0, $C1, $C6, $67, $55, $7F, $55	; tile #6
	.byt $7F, $55, $7F, $55, $7F, $55, $7F, $55	; tile #7
	.byt $7E, $55, $7F, $55, $7F, $55, $7F, $55	; tile #8
	.byt $E0, $F8, $79, $54, $7F, $55, $7F, $55	; tile #9
	.byt $C0, $C0, $C0, $E0, $63, $54, $7F, $55	; tile #10
	.byt $C0, $C0, $C0, $C0, $C0, $E0, $D8, $E7	; tile #11
	.byt $C0, $C0, $C0, $C0, $C0, $C0, $C3, $CE	; tile #12
	.byt $C0, $C0, $C0, $C3, $CC, $45, $7F, $55	; tile #13
	.byt $C3, $CE, $4F, $55, $7F, $55, $7F, $55	; tile #14
	.byt $40, $55, $5F, $55, $5F, $55, $5F, $55	; tile #15
	.byt $40, $55, $7F, $55, $7F, $55, $7F, $55	; tile #16
	.byt $4F, $55, $5F, $55, $5F, $55, $5F, $55	; tile #17
	.byt $5F, $55, $5F, $55, $5F, $55, $5F, $55	; tile #18
	.byt $40, $4F, $50, $50, $50, $52, $50, $50	; tile #19
	.byt $40, $7F, $FF, $FF, $DA, $EF, $FF, $40	; tile #20
	.byt $40, $7F, $FF, $EF, $F6, $F9, $FF, $40	; tile #21
	.byt $40, $7F, $FF, $F7, $F9, $EE, $FF, $40	; tile #22
	.byt $40, $7F, $FF, $FF, $D5, $FE, $FF, $40	; tile #23
	.byt $40, $7F, $FF, $F6, $DB, $FF, $FF, $40	; tile #24
	.byt $40, $7C, $42, $42, $42, $42, $42, $42	; tile #25
	.byt $40, $5F, $50, $50, $50, $50, $50, $50	; tile #26
	.byt $40, $7F, $FF, $53, $D3, $42, $FF, $42	; tile #27
	.byt $40, $7F, $FF, $40, $DF, $40, $FF, $40	; tile #28
	.byt $40, $7F, $FF, $40, $FF, $40, $FF, $40	; tile #29
	.byt $40, $7F, $FF, $53, $FF, $53, $FF, $53	; tile #30
	.byt $40, $7E, $42, $42, $42, $52, $42, $72	; tile #31
	.byt $7F, $55, $7F, $55, $7F, $55, $7F, $54	; tile #32
	.byt $7F, $55, $7F, $55, $7F, $55, $79, $41	; tile #33
	.byt $57, $50, $50, $50, $52, $50, $50, $50	; tile #34
	.byt $7F, $40, $FF, $40, $E7, $40, $FB, $40	; tile #35
	.byt $7F, $40, $FF, $40, $FF, $5C, $FF, $40	; tile #36
	.byt $7F, $40, $FF, $40, $C0, $40, $FF, $40	; tile #37
	.byt $7F, $40, $FF, $40, $DF, $4C, $FF, $40	; tile #38
	.byt $7F, $40, $FF, $40, $F1, $4E, $FF, $40	; tile #39
	.byt $7A, $42, $42, $42, $42, $42, $7A, $42	; tile #40
	.byt $50, $50, $50, $50, $50, $50, $50, $50	; tile #41
	.byt $41, $40, $40, $40, $40, $40, $40, $40	; tile #42
	.byt $40, $61, $52, $48, $44, $52, $60, $60	; tile #43
	.byt $F0, $CF, $FF, $FD, $F5, $F6, $FF, $FF	; tile #44
	.byt $DF, $E3, $FC, $FF, $FF, $FB, $FD, $FE	; tile #45
	.byt $40, $40, $40, $60, $60, $50, $48, $48	; tile #46
	.byt $42, $42, $42, $42, $42, $42, $42, $42	; tile #47
	.byt $7F, $55, $7F, $50, $47, $58, $50, $50	; tile #48
	.byt $7F, $54, $41, $5E, $60, $40, $40, $40	; tile #49
	.byt $60, $4F, $70, $44, $65, $65, $65, $64	; tile #50
	.byt $7D, $45, $55, $55, $55, $55, $55, $45	; tile #51
	.byt $57, $50, $52, $50, $52, $50, $52, $50	; tile #52
	.byt $7F, $40, $C0, $C0, $C2, $C2, $CA, $C0	; tile #53
	.byt $7F, $40, $C0, $CA, $CA, $EA, $EA, $C0	; tile #54
	.byt $7F, $40, $C0, $C8, $C8, $E8, $EA, $C0	; tile #55
	.byt $7F, $40, $C0, $C0, $C8, $CA, $EA, $C0	; tile #56
	.byt $7F, $40, $C0, $D0, $D0, $D4, $D4, $C0	; tile #57
	.byt $7A, $42, $52, $42, $52, $42, $52, $42	; tile #58
	.byt $40, $40, $69, $40, $40, $40, $40, $40	; tile #59
	.byt $7F, $42, $4A, $40, $40, $48, $50, $60	; tile #60
	.byt $7F, $44, $44, $45, $47, $5C, $40, $40	; tile #61
	.byt $7F, $48, $48, $48, $78, $48, $49, $48	; tile #62
	.byt $C7, $50, $F7, $44, $FD, $41, $D7, $57	; tile #63
	.byt $42, $42, $42, $42, $42, $42, $52, $52	; tile #64
	.byt $50, $50, $50, $53, $54, $50, $50, $50	; tile #65
	.byt $40, $40, $40, $7C, $43, $40, $40, $40	; tile #66
	.byt $40, $40, $40, $40, $40, $60, $50, $4C	; tile #67
	.byt $45, $45, $45, $45, $45, $45, $45, $45	; tile #68
	.byt $7F, $55, $47, $58, $5F, $5F, $5F, $5F	; tile #69
	.byt $7F, $55, $7F, $45, $70, $7F, $7F, $7F	; tile #70
	.byt $7F, $55, $7F, $55, $7F, $41, $7E, $7F	; tile #71
	.byt $7F, $55, $7F, $55, $7F, $55, $47, $65	; tile #72
	.byt $57, $50, $50, $52, $54, $50, $4F, $40	; tile #73
	.byt $7F, $40, $40, $40, $5C, $40, $7F, $40	; tile #74
	.byt $7F, $40, $40, $5C, $40, $40, $7F, $40	; tile #75
	.byt $7F, $40, $40, $40, $7C, $40, $7F, $40	; tile #76
	.byt $7F, $40, $40, $40, $76, $40, $7F, $40	; tile #77
	.byt $7F, $40, $40, $70, $43, $40, $7F, $40	; tile #78
	.byt $7A, $42, $42, $42, $42, $42, $7C, $40	; tile #79
	.byt $50, $50, $50, $50, $50, $50, $5F, $40	; tile #80
	.byt $FE, $42, $F7, $6A, $FF, $40, $7F, $40	; tile #81
	.byt $40, $40, $60, $60, $40, $40, $7F, $40	; tile #82
	.byt $40, $40, $40, $40, $40, $40, $7F, $40	; tile #83
	.byt $42, $40, $40, $40, $40, $40, $7F, $40	; tile #84
	.byt $42, $42, $42, $42, $42, $42, $7E, $40	; tile #85
	.byt $50, $50, $50, $50, $56, $53, $50, $50	; tile #86
	.byt $40, $40, $40, $40, $40, $40, $60, $50	; tile #87
	.byt $43, $40, $40, $40, $40, $40, $40, $40	; tile #88
	.byt $75, $45, $45, $45, $45, $45, $45, $45	; tile #89
	.byt $43, $58, $5B, $5B, $5B, $5B, $5B, $5B	; tile #90
	.byt $7F, $47, $78, $7F, $7F, $7F, $7F, $7F	; tile #91
	.byt $7F, $7E, $5D, $63, $7B, $7B, $7B, $7B	; tile #92
	.byt $57, $75, $77, $75, $77, $75, $77, $75	; tile #93
	.byt $50, $50, $50, $50, $50, $56, $51, $50	; tile #94
	.byt $48, $47, $40, $40, $40, $40, $40, $40	; tile #95
	.byt $40, $60, $59, $46, $40, $40, $40, $40	; tile #96
	.byt $45, $75, $45, $45, $45, $45, $45, $45	; tile #97
	.byt $40, $5F, $5F, $5F, $5F, $5F, $5F, $5F	; tile #98
	.byt $5F, $60, $6F, $6F, $6F, $6F, $6F, $6F	; tile #99
	.byt $7B, $7B, $43, $7B, $7B, $7B, $7B, $7B	; tile #100
	.byt $77, $75, $77, $75, $77, $75, $77, $75	; tile #101
	.byt $48, $46, $71, $54, $7E, $55, $7F, $55	; tile #102
	.byt $40, $40, $42, $61, $58, $44, $72, $51	; tile #103
	.byt $40, $40, $40, $60, $50, $48, $42, $60	; tile #104
	.byt $5F, $5F, $5F, $5F, $5E, $5E, $5D, $5C	; tile #105
	.byt $6F, $6F, $5F, $5F, $7F, $7F, $7F, $5F	; tile #106
	.byt $7B, $7B, $7B, $7B, $7B, $7B, $7B, $7B	; tile #107
	.byt $7F, $55, $7F, $50, $7B, $53, $7B, $57	; tile #108
	.byt $7F, $55, $7F, $40, $7F, $7F, $7F, $7F	; tile #109
	.byt $70, $47, $59, $5C, $5F, $57, $5F, $6D	; tile #110
	.byt $43, $7C, $7F, $7F, $5F, $4F, $6F, $4F	; tile #111
	.byt $7F, $41, $7C, $7F, $7F, $7E, $7E, $7D	; tile #112
	.byt $7F, $55, $7F, $40, $5F, $7F, $7F, $7F	; tile #113
	.byt $7F, $55, $7F, $41, $7B, $79, $7B, $7D	; tile #114
	.byt $7F, $55, $7F, $55, $7F, $55, $7E, $56	; tile #115
	.byt $7F, $55, $7F, $7D, $43, $40, $40, $40	; tile #116
	.byt $7F, $55, $7F, $55, $7F, $4F, $41, $40	; tile #117
	.byt $5F, $55, $5F, $55, $5F, $55, $7F, $4D	; tile #118
	.byt $7C, $55, $7F, $55, $7F, $55, $7F, $55	; tile #119
	.byt $50, $48, $64, $53, $78, $54, $7F, $55	; tile #120
	.byt $45, $45, $45, $45, $65, $55, $4D, $41	; tile #121
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F	; tile #122
	.byt $63, $7C, $7F, $7F, $7F, $7F, $7F, $7F	; tile #123
	.byt $7B, $5B, $6B, $6B, $6B, $6B, $6B, $6B	; tile #124
	.byt $7F, $55, $7F, $55, $7F, $54, $78, $53	; tile #125
	.byt $5F, $55, $5F, $55, $70, $4F, $7F, $7F	; tile #126
	.byt $7F, $55, $7F, $55, $40, $7F, $7F, $7F	; tile #127
	.byt $7F, $55, $7F, $55, $7F, $45, $79, $7C	; tile #128
	.byt $77, $57, $6F, $4F, $6F, $5F, $5F, $5F	; tile #129
	.byt $63, $5D, $5D, $63, $7F, $7F, $55, $7F	; tile #130
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #131
	.byt $6F, $67, $6F, $75, $77, $77, $7B, $79	; tile #132
	.byt $5F, $52, $5F, $5F, $6F, $4F, $6F, $57	; tile #133
	.byt $7D, $51, $7D, $7D, $7D, $7D, $7E, $7A	; tile #134
	.byt $7F, $57, $7F, $57, $7F, $7F, $7E, $7C	; tile #135
	.byt $7F, $57, $7F, $57, $7F, $7F, $40, $4F	; tile #136
	.byt $63, $5D, $5D, $63, $7F, $7F, $40, $7F	; tile #137
	.byt $7D, $7D, $7E, $7E, $7E, $7F, $41, $7E	; tile #138
	.byt $7E, $54, $7C, $54, $7C, $50, $58, $40	; tile #139
	.byt $40, $4C, $43, $40, $40, $48, $45, $40	; tile #140
	.byt $40, $40, $40, $50, $44, $40, $40, $50	; tile #141
	.byt $57, $55, $57, $55, $57, $55, $57, $55	; tile #142
	.byt $7F, $55, $7F, $55, $7F, $45, $43, $41	; tile #143
	.byt $79, $55, $7F, $55, $7F, $55, $7F, $55	; tile #144
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7E, $7D	; tile #145
	.byt $6B, $6B, $6B, $6B, $6B, $5B, $7B, $7B	; tile #146
	.byt $71, $51, $70, $50, $7E, $55, $7F, $55	; tile #147
	.byt $7F, $7F, $4F, $40, $40, $50, $5E, $54	; tile #148
	.byt $7F, $7F, $7F, $40, $40, $40, $4F, $45	; tile #149
	.byt $78, $78, $40, $41, $47, $55, $7F, $55	; tile #150
	.byt $40, $7F, $7F, $7F, $7F, $41, $7F, $7F	; tile #151
	.byt $40, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #152
	.byt $40, $7F, $7F, $7F, $7F, $40, $7F, $7F	; tile #153
	.byt $40, $7F, $7F, $7F, $7F, $60, $7F, $7F	; tile #154
	.byt $43, $7D, $7D, $7E, $7E, $7F, $7F, $7F	; tile #155
	.byt $77, $5A, $7B, $75, $7E, $5D, $5F, $67	; tile #156
	.byt $6E, $7F, $7F, $7F, $7F, $5F, $6F, $57	; tile #157
	.byt $64, $5E, $6F, $77, $7F, $78, $7B, $77	; tile #158
	.byt $40, $40, $70, $7F, $7F, $40, $7F, $7F	; tile #159
	.byt $7F, $43, $40, $40, $7F, $40, $7F, $7F	; tile #160
	.byt $7F, $7F, $5F, $43, $70, $48, $64, $72	; tile #161
	.byt $7F, $7F, $7F, $7F, $7F, $4D, $47, $41	; tile #162
	.byt $78, $78, $7C, $77, $5F, $76, $7F, $6D	; tile #163
	.byt $40, $44, $41, $40, $70, $7C, $7F, $6F	; tile #164
	.byt $40, $40, $40, $40, $40, $40, $41, $70	; tile #165
	.byt $56, $74, $70, $74, $74, $69, $58, $70	; tile #166
	.byt $40, $40, $40, $50, $48, $44, $40, $40	; tile #167
	.byt $7F, $55, $4F, $45, $43, $41, $44, $45	; tile #168
	.byt $7F, $55, $7F, $55, $7F, $55, $5F, $65	; tile #169
	.byt $5F, $5F, $5F, $5F, $5E, $5D, $5E, $5F	; tile #170
	.byt $7B, $77, $6F, $5F, $7F, $7F, $7F, $5F	; tile #171
	.byt $7F, $55, $7F, $55, $7E, $55, $7A, $55	; tile #172
	.byt $5E, $54, $5E, $54, $40, $54, $6A, $54	; tile #173
	.byt $4F, $45, $4F, $45, $40, $45, $4A, $45	; tile #174
	.byt $7F, $55, $7F, $55, $40, $55, $6A, $55	; tile #175
	.byt $41, $7F, $7F, $41, $7F, $7F, $7F, $7F	; tile #176
	.byt $40, $7F, $7F, $40, $7F, $7F, $7F, $7F	; tile #177
	.byt $60, $7F, $7F, $60, $7F, $7F, $7F, $7F	; tile #178
	.byt $6F, $75, $7B, $7B, $7D, $7E, $7F, $7F	; tile #179
	.byt $7B, $75, $7E, $5D, $7F, $77, $5F, $65	; tile #180
	.byt $6F, $7F, $40, $77, $7F, $5D, $7F, $75	; tile #181
	.byt $7F, $7F, $41, $5C, $7F, $77, $7F, $5D	; tile #182
	.byt $7F, $7F, $7F, $7F, $5F, $55, $6F, $4F	; tile #183
	.byt $7B, $7B, $7B, $7D, $7D, $41, $79, $71	; tile #184
	.byt $70, $78, $7E, $7F, $7F, $7F, $7F, $7F	; tile #185
	.byt $7F, $5B, $4F, $46, $63, $63, $69, $61	; tile #186
	.byt $7F, $5B, $7F, $73, $73, $7F, $7E, $79	; tile #187
	.byt $7F, $7F, $7F, $7F, $77, $4B, $7B, $6B	; tile #188
	.byt $70, $60, $62, $61, $70, $70, $78, $78	; tile #189
	.byt $48, $42, $40, $44, $40, $60, $40, $40	; tile #190
	.byt $4D, $4D, $5D, $5D, $5D, $7D, $7D, $7D	; tile #191
	.byt $79, $7E, $7F, $7F, $7F, $7F, $7F, $7F	; tile #192
	.byt $7F, $55, $5F, $65, $77, $79, $7B, $7D	; tile #193
	.byt $6F, $77, $77, $77, $77, $77, $77, $77	; tile #194
	.byt $7B, $7B, $7B, $7B, $7B, $78, $72, $65	; tile #195
	.byt $77, $75, $76, $75, $72, $45, $6A, $55	; tile #196
	.byt $6A, $55, $6A, $55, $6A, $55, $6A, $55	; tile #197
	.byt $6A, $40, $60, $55, $6A, $55, $6A, $55	; tile #198
	.byt $4A, $40, $40, $55, $6A, $55, $6A, $55	; tile #199
	.byt $5F, $5F, $40, $55, $6A, $55, $6A, $55	; tile #200
	.byt $7F, $7F, $40, $55, $6A, $55, $6A, $55	; tile #201
	.byt $77, $7B, $40, $55, $6A, $55, $6A, $55	; tile #202
	.byt $7F, $5D, $7F, $47, $61, $54, $6A, $55	; tile #203
	.byt $7F, $77, $7F, $5D, $7F, $77, $47, $40	; tile #204
	.byt $6F, $56, $70, $70, $78, $5C, $7C, $41	; tile #205
	.byt $63, $43, $40, $45, $42, $45, $4A, $55	; tile #206
	.byt $69, $65, $49, $53, $6B, $53, $66, $4E	; tile #207
	.byt $77, $76, $6F, $6A, $5F, $5A, $7F, $73	; tile #208
	.byt $7B, $6D, $7D, $6D, $7D, $6D, $71, $4D	; tile #209
	.byt $78, $7C, $7C, $7E, $7F, $7F, $7F, $7F	; tile #210
	.byt $51, $49, $43, $43, $43, $47, $67, $70	; tile #211
	.byt $7D, $7D, $7D, $7D, $7D, $7D, $7D, $43	; tile #212
	.byt $7D, $7D, $7D, $7D, $79, $71, $61, $41	; tile #213
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5E	; tile #214
	.byt $77, $76, $74, $71, $72, $65, $4A, $55	; tile #215
	.byt $4A, $55, $6A, $55, $6A, $55, $6A, $55	; tile #216
	.byt $6A, $54, $60, $40, $60, $40, $60, $54	; tile #217
	.byt $6A, $40, $40, $55, $6A, $40, $40, $40	; tile #218
	.byt $60, $40, $40, $54, $6A, $40, $40, $41	; tile #219
	.byt $4A, $45, $42, $45, $42, $45, $4A, $54	; tile #220
	.byt $6A, $55, $6A, $55, $6A, $54, $63, $5F	; tile #221
	.byt $6A, $54, $69, $57, $4F, $7F, $7F, $7F	; tile #222
	.byt $5D, $7D, $7D, $7C, $7D, $7D, $7C, $7F	; tile #223
	.byt $5C, $73, $4F, $7F, $7F, $7E, $41, $7F	; tile #224
	.byt $7D, $7D, $7D, $7D, $7D, $41, $7F, $7F	; tile #225
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $78	; tile #226
	.byt $7F, $7F, $7F, $7F, $7F, $7E, $60, $40	; tile #227
	.byt $7F, $7F, $7F, $7E, $70, $40, $40, $40	; tile #228
	.byt $7C, $78, $60, $40, $40, $41, $47, $45	; tile #229
	.byt $43, $45, $4F, $55, $7F, $55, $7F, $55	; tile #230
	.byt $5C, $59, $52, $45, $4A, $55, $4A, $55	; tile #231
	.byt $6A, $55, $6A, $54, $6A, $55, $6A, $55	; tile #232
	.byt $6A, $40, $5F, $40, $40, $40, $6A, $55	; tile #233
	.byt $43, $7F, $7F, $40, $40, $40, $68, $55	; tile #234
	.byt $7F, $7F, $7F, $40, $40, $40, $40, $55	; tile #235
	.byt $7F, $7F, $7C, $40, $40, $40, $40, $55	; tile #236
	.byt $7F, $7F, $40, $40, $40, $40, $40, $55	; tile #237
	.byt $7F, $78, $40, $40, $40, $40, $4A, $50	; tile #238
	.byt $78, $40, $40, $40, $40, $41, $6A, $40	; tile #239
	.byt $40, $40, $40, $40, $47, $50, $6A, $40	; tile #240
	.byt $40, $40, $40, $4F, $70, $40, $40, $40	; tile #241
	.byt $40, $45, $72, $41, $40, $4C, $43, $40	; tile #242
	.byt $67, $51, $69, $54, $6A, $55, $4A, $61	; tile #243
	.byt $7F, $55, $7F, $55, $5F, $45, $67, $51	; tile #244
	.byt $7F, $55, $7E, $55, $7A, $55, $6A, $55	; tile #245
	.byt $6A, $50, $60, $40, $60, $54, $6A, $55	; tile #246
	.byt $40, $40, $40, $40, $40, $40, $6A, $55	; tile #247
	.byt $40, $40, $42, $40, $40, $40, $60, $55	; tile #248
	.byt $40, $40, $6A, $40, $40, $40, $40, $55	; tile #249
	.byt $40, $40, $60, $40, $40, $40, $4A, $55	; tile #250
	.byt $50, $49, $41, $46, $78, $41, $6A, $55	; tile #251
	.byt $49, $44, $4A, $45, $4A, $55, $6A, $55	; tile #252
	
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
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 007, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 001, 008, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 003, 008, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 004, 008, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 001, 005, 008, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 002, 006, 009, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000

zplane0_tiles
	.byt $40, $40, $40, $40, $40, $40, $40, $41	; tile #1
	.byt $40, $44, $44, $4C, $4C, $5C, $7C, $7C	; tile #2
	.byt $40, $40, $40, $40, $40, $40, $43, $7F	; tile #3
	.byt $40, $40, $40, $40, $43, $5F, $7F, $7F	; tile #4
	.byt $43, $47, $4F, $7F, $7F, $7F, $7F, $7F	; tile #5
	.byt $7C, $7C, $7C, $7C, $7C, $7C, $7C, $7C	; tile #6
	.byt $40, $41, $43, $43, $43, $41, $40, $40	; tile #7
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $40	; tile #8
	.byt $7C, $7C, $7C, $7C, $7C, $7C, $7C, $40	; tile #9

	
; Walkbox Data
wb_data
	.byt 002, 013, 014, 016, $01
	.byt 014, 020, 013, 016, $01
	.byt 021, 025, 015, 015, $01
; Walk matrix
wb_matrix
	.byt 0, 1, 1
	.byt 0, 1, 2
	.byt 1, 1, 2

res_end
.)



; Object resource: Exit door
.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 200
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 3,7		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 1,14		; Pos (col, row)
	.byt ZPLANE_0		; Zplane
	.byt 3,14		; Walk position (col, row)
	.byt FACING_LEFT	; Facing direction for interaction
	.byt 00			; Color of text

	; tiles and pointers to animatory states are setup in the costume
	; Load the costume ID, load the resource, setup pointers, load animatory state and set it.
	; also setup direction and anim_speed	
	;.byt 202		; costume ($ff for none) and skip the rest
	;.byt 0			; entry in costume resource		
	;.byt 0			; direction (0 or LOOK_RIGHT for animstate 0)
	;.byt 0			; animation speed	
#ifdef ENGLISH
	.asc "Door",0
#endif
#ifdef SPANISH
	.asc "Puerta",0
#endif
#ifdef FRENCH
	.asc "Porte",0
#endif
res_end	
.)

; Object resource: Console
.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 201
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 2,2		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 31,14		; Pos (col, row)
	.byt ZPLANE_0		; Zplane
	.byt 27,15		; Walk position (col, row)
	.byt FACING_RIGHT	; Facing direction for interaction
	.byt 00			; Color of text

	; tiles and pointers to animatory states are setup in the costume
	; Load the costume ID, load the resource, setup pointers, load animatory state and set it.
	; also setup direction and anim_speed	
	;.byt 202		; costume ($ff for none) and skip the rest
	;.byt 0			; entry in costume resource		
	;.byt 0			; direction (0 or LOOK_RIGHT for animstate 0)
	;.byt 0			; animation speed	
#ifdef ENGLISH
	.asc "Console",0
#endif
#ifdef SPANISH
	.asc "Consola",0
#endif
#ifdef FRENCH
	.asc "Terminal",0 ; [laurentd75]: terminal, plutot que ocnsole en francais
#endif
res_end	
.)


; Object resource: Coffee
.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 202
res_start
	.byt 0	; If OBJ_FLAG_PROP skip all costume data
	.byt 1,1		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 8-1,10		; Pos (col, row)
	.byt ZPLANE_0		; Zplane
	.byt 3,15		; Walk position (col, row)
	.byt FACING_RIGHT	; Facing direction for interaction
	.byt 00			; Color of text

	; tiles and pointers to animatory states are setup in the costume
	; Load the costume ID, load the resource, setup pointers, load animatory state and set it.
	; also setup direction and anim_speed	
	.byt 200		; costume ($ff for none) and skip the rest
	.byt 0			; entry in costume resource		
	.byt 0			; direction (0 or LOOK_RIGHT for animstate 0)
	.byt 0			; animation speed	
#ifdef ENGLISH
	.asc "Coffee",0
#endif
#ifdef SPANISH
	.asc "Caf","Z"+2,0
#endif
#ifdef FRENCH
	.asc "Caf","Z"+2,0
#endif

res_end	
.)



; Object resource: screen 1
.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 203
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 7,4		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 14,6		; Pos (col, row)
	.byt ZPLANE_0		; Zplane
	.byt 15,15		; Walk position (col, row)
	.byt FACING_RIGHT	; Facing direction for interaction
	.byt 00			; Color of text

	; tiles and pointers to animatory states are setup in the costume
	; Load the costume ID, load the resource, setup pointers, load animatory state and set it.
	; also setup direction and anim_speed	
	;.byt 0		; costume ($ff for none) and skip the rest
	;.byt 0			; entry in costume resource		
	;.byt 0			; direction (0 or LOOK_RIGHT for animstate 0)
	;.byt 0			; animation speed	
#ifdef ENGLISH
	.asc "Screen",0
#endif
#ifdef SPANISH
	.asc "Pantalla",0
#endif
#ifdef FRENCH
	.asc "Ecran",0
#endif
res_end	
.)

; Object resource: screen 2
.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 204
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 7,4		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 22,6		; Pos (col, row)
	.byt ZPLANE_0		; Zplane
	.byt 21,15		; Walk position (col, row)
	.byt FACING_RIGHT	; Facing direction for interaction
	.byt 00			; Color of text

	; tiles and pointers to animatory states are setup in the costume
	; Load the costume ID, load the resource, setup pointers, load animatory state and set it.
	; also setup direction and anim_speed	
	;.byt 0		; costume ($ff for none) and skip the rest
	;.byt 0			; entry in costume resource		
	;.byt 0			; direction (0 or LOOK_RIGHT for animstate 0)
	;.byt 0			; animation speed	
#ifdef ENGLISH
	.asc "Screen",0
#endif
#ifdef SPANISH
	.asc "Pantalla",0
#endif
#ifdef FRENCH
	.asc "Ecran",0
#endif
res_end	
.)

.(
.byt RESOURCE_COSTUME
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
; Animatory state 0 (cup.png)
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 1, 0, 0, 0, 0
costume_tiles
; Tile graphic 1
.byt $0, $0, $3f, $0, $1e, $2d, $12, $c
costume_masks
; Tile mask 1
.byt $ff, $ff, $40, $40, $40, $40, $61, $73
res_end
.)




#include "..\scripts\camcontrol.s"


