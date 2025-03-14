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
; Room: caveentry
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.(
	.byt RESOURCE_ROOM
	.word (res_end - res_start + 4)
	.byt 32
res_start
; No. columns, offset to tile map, offset to tiles
	.byt 38, <(column_data-res_start), >(column_data-res_start), <(tiles_start-res_start), >(tiles_start-res_start)
; No. zplanes and offsets to zplanes
	.byt 1
	.byt <(zplane_data-res_start), >(zplane_data-res_start), <(zplane_tiles-res_start), >(zplane_tiles-res_start)		
; No. Walkboxes and offsets to wb data and matrix
	.byt 3, <(wb_data-res_start), >(wb_data-res_start), <(wb_matrix-res_start), >(wb_matrix-res_start)
; Offset to palette
	.byt <(palette-res_start), >(palette-res_start)
; Entry and exit scripts
	.byt 255, 255
; Number of objects in the room and list of ids
	.byt 2,200,201
; Room name (null terminated)
	.asc "caveentry", 0
; Room tile map
column_data
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 001, 023, 041, 058, 073, 087, 105, 105, 140, 152, 002, 002, 002, 002, 002, 000
	.byt 000, 002, 002, 002, 002, 002, 002, 002, 122, 141, 002, 002, 002, 002, 002, 002, 000
	.byt 000, 002, 002, 002, 002, 002, 002, 106, 123, 002, 002, 002, 191, 020, 228, 239, 000
	.byt 000, 003, 024, 002, 002, 074, 088, 107, 002, 142, 153, 172, 192, 002, 002, 002, 000
	.byt 000, 000, 025, 042, 059, 075, 002, 002, 124, 143, 154, 173, 002, 002, 002, 002, 000
	.byt 000, 002, 002, 002, 002, 002, 089, 108, 021, 144, 002, 002, 002, 209, 229, 240, 000
	.byt 000, 002, 002, 043, 060, 026, 090, 109, 125, 145, 027, 174, 193, 210, 230, 002, 000
	.byt 000, 004, 026, 044, 002, 076, 091, 110, 126, 146, 155, 052, 194, 211, 002, 002, 000
	.byt 000, 002, 027, 045, 061, 077, 092, 111, 127, 002, 156, 175, 002, 002, 002, 002, 000
	.byt 000, 002, 028, 021, 062, 078, 093, 002, 128, 147, 157, 176, 002, 002, 002, 002, 000
	.byt 000, 002, 029, 046, 063, 021, 094, 043, 129, 148, 158, 177, 002, 002, 231, 241, 000
	.byt 000, 005, 030, 047, 064, 000, 095, 112, 027, 149, 135, 178, 002, 212, 030, 242, 000
	.byt 000, 006, 000, 000, 000, 000, 000, 113, 130, 002, 159, 000, 195, 213, 000, 243, 000
	.byt 000, 007, 000, 000, 000, 000, 000, 000, 131, 002, 159, 000, 021, 214, 232, 244, 000
	.byt 000, 008, 000, 000, 000, 000, 000, 000, 131, 002, 160, 179, 196, 215, 002, 245, 000
	.byt 000, 008, 000, 000, 000, 000, 000, 000, 131, 002, 161, 000, 197, 216, 233, 246, 000
	.byt 000, 009, 000, 000, 000, 000, 000, 000, 131, 002, 162, 000, 000, 217, 002, 002, 000
	.byt 000, 010, 000, 000, 000, 000, 000, 000, 131, 002, 163, 000, 198, 218, 002, 002, 000
	.byt 000, 011, 031, 031, 031, 031, 031, 000, 131, 002, 135, 180, 199, 052, 002, 002, 000
	.byt 000, 012, 000, 000, 000, 000, 000, 000, 131, 002, 164, 181, 200, 219, 002, 002, 000
	.byt 000, 013, 032, 000, 000, 000, 000, 000, 131, 002, 128, 032, 002, 220, 026, 026, 000
	.byt 000, 014, 033, 031, 065, 079, 000, 000, 131, 002, 002, 182, 147, 002, 002, 002, 000
	.byt 000, 015, 034, 048, 021, 080, 096, 114, 132, 002, 002, 000, 201, 002, 002, 002, 000
	.byt 000, 016, 035, 049, 021, 021, 097, 115, 133, 148, 027, 183, 202, 002, 002, 002, 000
	.byt 000, 017, 036, 050, 066, 081, 098, 116, 134, 002, 165, 184, 203, 221, 002, 002, 000
	.byt 000, 018, 037, 051, 067, 002, 099, 002, 135, 002, 161, 000, 002, 222, 234, 247, 000
	.byt 000, 019, 038, 052, 068, 082, 100, 117, 136, 002, 166, 185, 002, 002, 002, 002, 000
	.byt 000, 002, 039, 053, 069, 002, 101, 118, 137, 002, 167, 186, 002, 002, 002, 248, 000
	.byt 000, 002, 002, 054, 070, 083, 102, 119, 138, 150, 030, 187, 204, 223, 235, 249, 000
	.byt 000, 020, 020, 055, 002, 002, 002, 002, 027, 151, 168, 188, 205, 224, 236, 250, 000
	.byt 000, 021, 021, 056, 071, 084, 103, 120, 139, 080, 169, 021, 021, 225, 237, 085, 000
	.byt 000, 021, 021, 021, 021, 021, 021, 021, 021, 021, 170, 189, 206, 021, 021, 251, 000
	.byt 000, 022, 040, 057, 072, 085, 021, 021, 021, 021, 021, 021, 207, 226, 085, 021, 000
	.byt 000, 002, 002, 002, 002, 086, 104, 121, 121, 121, 171, 190, 208, 227, 238, 252, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000

; Room tile set
tiles_start
	.byt $7F, $7F, $7F, $5F, $4F, $6F, $57, $67	; tile #1
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #2
	.byt $40, $40, $60, $60, $60, $7C, $7C, $7E	; tile #3
	.byt $77, $77, $67, $6F, $6F, $6F, $5F, $5F	; tile #4
	.byt $7F, $7F, $7F, $7F, $7F, $7E, $7C, $78	; tile #5
	.byt $7F, $7F, $7F, $70, $40, $40, $40, $40	; tile #6
	.byt $7F, $7F, $7C, $40, $40, $40, $40, $40	; tile #7
	.byt $7F, $7F, $40, $40, $40, $40, $40, $40	; tile #8
	.byt $7F, $41, $40, $40, $40, $40, $40, $40	; tile #9
	.byt $7F, $7F, $43, $41, $40, $40, $40, $40	; tile #10
	.byt $75, $72, $75, $72, $45, $42, $45, $42	; tile #11
	.byt $5F, $5F, $5F, $5F, $47, $40, $40, $40	; tile #12
	.byt $7F, $7F, $7F, $7F, $7F, $4F, $43, $41	; tile #13
	.byt $40, $60, $7C, $7E, $7F, $7F, $7F, $7F	; tile #14
	.byt $40, $40, $40, $40, $67, $70, $7F, $7F	; tile #15
	.byt $40, $40, $40, $40, $7E, $47, $73, $79	; tile #16
	.byt $40, $40, $40, $40, $40, $7C, $7F, $7F	; tile #17
	.byt $7F, $7F, $47, $43, $41, $40, $62, $7C	; tile #18
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $5F, $4F	; tile #19
	.byt $7E, $7E, $7E, $7E, $7E, $7E, $7E, $7E	; tile #20
	.byt $55, $6A, $55, $6A, $55, $6A, $55, $6A	; tile #21
	.byt $5F, $6F, $4F, $6F, $4F, $6F, $4F, $6F	; tile #22
	.byt $57, $67, $57, $67, $57, $67, $53, $69	; tile #23
	.byt $7E, $7E, $7E, $7E, $7E, $7F, $7F, $7F	; tile #24
	.byt $40, $40, $40, $40, $40, $40, $60, $70	; tile #25
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F	; tile #26
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7E	; tile #27
	.byt $7F, $7F, $7D, $7C, $79, $62, $45, $6A	; tile #28
	.byt $7F, $7E, $40, $68, $54, $68, $54, $62	; tile #29
	.byt $60, $40, $40, $40, $40, $40, $40, $40	; tile #30
	.byt $45, $42, $45, $42, $45, $42, $45, $42	; tile #31
	.byt $41, $40, $40, $40, $40, $40, $40, $40	; tile #32
	.byt $7F, $7F, $43, $40, $40, $40, $40, $48	; tile #33
	.byt $7F, $7F, $7F, $7F, $4F, $41, $40, $40	; tile #34
	.byt $7C, $7E, $7F, $7F, $7F, $7F, $7F, $4F	; tile #35
	.byt $7F, $5F, $5F, $4F, $67, $79, $7C, $78	; tile #36
	.byt $7E, $7E, $7E, $7F, $7F, $7F, $7F, $7F	; tile #37
	.byt $57, $67, $53, $49, $54, $4A, $61, $78	; tile #38
	.byt $7F, $7F, $7F, $7F, $7F, $4F, $43, $69	; tile #39
	.byt $4F, $6F, $4F, $6F, $4F, $5F, $5F, $6F	; tile #40
	.byt $54, $6A, $54, $6A, $54, $6A, $54, $6A	; tile #41
	.byt $78, $7C, $7D, $7D, $7D, $7D, $7D, $7D	; tile #42
	.byt $7F, $7F, $7F, $7F, $7F, $7E, $7E, $7D	; tile #43
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $7F, $7F	; tile #44
	.byt $7D, $7C, $7D, $7C, $79, $72, $75, $72	; tile #45
	.byt $55, $62, $55, $62, $55, $62, $55, $62	; tile #46
	.byt $40, $40, $40, $40, $40, $60, $40, $60	; tile #47
	.byt $40, $60, $50, $68, $54, $6A, $55, $6A	; tile #48
	.byt $47, $43, $41, $41, $40, $68, $54, $6A	; tile #49
	.byt $78, $78, $78, $78, $70, $70, $40, $40	; tile #50
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $4F, $67	; tile #51
	.byt $7E, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #52
	.byt $54, $4A, $54, $4A, $45, $62, $75, $78	; tile #53
	.byt $7F, $7F, $4F, $6F, $4F, $67, $53, $6B	; tile #54
	.byt $7E, $7E, $7F, $7F, $7F, $7F, $7F, $7F	; tile #55
	.byt $55, $6A, $55, $62, $61, $72, $71, $7A	; tile #56
	.byt $4F, $6F, $4F, $67, $57, $67, $57, $67	; tile #57
	.byt $54, $6A, $54, $6A, $54, $6A, $54, $68	; tile #58
	.byt $7D, $7B, $7B, $7B, $7B, $77, $77, $77	; tile #59
	.byt $7D, $7D, $7B, $7B, $73, $6F, $6F, $4F	; tile #60
	.byt $65, $6A, $65, $6A, $65, $6A, $65, $6A	; tile #61
	.byt $55, $6A, $55, $6A, $54, $6A, $54, $68	; tile #62
	.byt $55, $62, $45, $4A, $55, $6A, $55, $6A	; tile #63
	.byt $40, $60, $40, $60, $40, $60, $40, $60	; tile #64
	.byt $41, $42, $41, $42, $41, $40, $41, $40	; tile #65
	.byt $40, $6A, $54, $6A, $54, $68, $54, $69	; tile #66
	.byt $77, $77, $79, $7C, $7E, $7F, $7F, $7F	; tile #67
	.byt $7F, $7F, $7F, $7F, $5F, $4F, $67, $77	; tile #68
	.byt $7D, $7C, $7E, $7E, $7E, $7E, $7E, $7E	; tile #69
	.byt $54, $6A, $54, $6A, $54, $69, $55, $69	; tile #70
	.byt $79, $7A, $79, $7A, $79, $7A, $79, $7A	; tile #71
	.byt $53, $6B, $53, $69, $55, $68, $54, $6A	; tile #72
	.byt $55, $69, $55, $69, $55, $69, $55, $69	; tile #73
	.byt $7F, $7F, $7F, $7F, $7E, $7C, $7D, $7D	; tile #74
	.byt $77, $77, $6F, $4F, $5F, $7F, $7F, $7F	; tile #75
	.byt $7F, $7F, $7F, $7F, $7E, $7E, $7E, $7E	; tile #76
	.byt $65, $6A, $55, $4A, $55, $6A, $55, $6A	; tile #77
	.byt $51, $6A, $55, $6A, $55, $6A, $55, $6A	; tile #78
	.byt $41, $40, $41, $40, $40, $40, $40, $40	; tile #79
	.byt $55, $6A, $55, $6A, $55, $4A, $55, $4A	; tile #80
	.byt $55, $69, $55, $69, $51, $69, $50, $68	; tile #81
	.byt $77, $7B, $79, $7D, $7D, $7D, $7D, $7E	; tile #82
	.byt $55, $49, $55, $49, $55, $4B, $53, $4B	; tile #83
	.byt $79, $7A, $79, $7A, $79, $7A, $75, $72	; tile #84
	.byt $54, $6A, $55, $6A, $55, $6A, $55, $6A	; tile #85
	.byt $7F, $5F, $4F, $6F, $47, $67, $57, $67	; tile #86
	.byt $55, $69, $55, $69, $55, $69, $55, $6A	; tile #87
	.byt $7D, $7D, $7D, $7D, $7B, $7B, $7B, $7B	; tile #88
	.byt $7F, $7F, $7F, $7F, $7F, $7E, $7C, $7C	; tile #89
	.byt $5F, $5F, $5F, $5F, $5F, $7F, $7F, $4F	; tile #90
	.byt $7C, $7C, $7D, $7A, $79, $7A, $79, $72	; tile #91
	.byt $55, $6A, $51, $63, $47, $6F, $4F, $5F	; tile #92
	.byt $55, $40, $7F, $7F, $7F, $7F, $7F, $7F	; tile #93
	.byt $54, $40, $7E, $7F, $7F, $7F, $7F, $7F	; tile #94
	.byt $40, $40, $40, $40, $60, $70, $78, $7E	; tile #95
	.byt $45, $4A, $45, $4A, $45, $4A, $45, $4A	; tile #96
	.byt $55, $6A, $55, $6A, $55, $68, $43, $5F	; tile #97
	.byt $50, $60, $50, $60, $50, $40, $7F, $7F	; tile #98
	.byt $7F, $5F, $4F, $47, $47, $47, $78, $7E	; tile #99
	.byt $7E, $7F, $7F, $7F, $7F, $7F, $7F, $4F	; tile #100
	.byt $5F, $5F, $5F, $6F, $67, $77, $73, $7B	; tile #101
	.byt $53, $4B, $53, $4B, $53, $47, $57, $47	; tile #102
	.byt $75, $72, $75, $72, $75, $72, $75, $72	; tile #103
	.byt $57, $67, $57, $67, $57, $67, $57, $63	; tile #104
	.byt $50, $68, $50, $68, $50, $68, $50, $68	; tile #105
	.byt $7F, $7F, $7F, $7F, $7E, $7D, $79, $77	; tile #106
	.byt $7B, $77, $6F, $4F, $7F, $7F, $7F, $7F	; tile #107
	.byt $79, $7A, $71, $72, $75, $72, $65, $4A	; tile #108
	.byt $4F, $6F, $4F, $67, $56, $64, $51, $68	; tile #109
	.byt $75, $62, $65, $4A, $55, $6A, $54, $69	; tile #110
	.byt $5F, $5F, $5F, $5F, $5F, $7F, $7F, $7F	; tile #111
	.byt $6E, $6F, $6F, $6F, $4F, $7F, $7F, $7F	; tile #112
	.byt $40, $40, $40, $60, $60, $70, $70, $78	; tile #113
	.byt $41, $43, $4F, $5F, $5F, $5F, $5F, $5F	; tile #114
	.byt $7F, $7F, $5F, $67, $73, $7B, $7B, $7B	; tile #115
	.byt $7E, $7E, $7C, $7D, $7D, $7D, $7B, $7B	; tile #116
	.byt $63, $7C, $5F, $6F, $6F, $67, $77, $77	; tile #117
	.byt $7B, $4B, $73, $79, $7E, $7E, $7F, $7F	; tile #118
	.byt $57, $47, $57, $47, $57, $4F, $4F, $4F	; tile #119
	.byt $75, $72, $75, $7A, $79, $7A, $79, $72	; tile #120
	.byt $53, $6B, $53, $6B, $53, $6B, $53, $6B	; tile #121
	.byt $7F, $7F, $7F, $7C, $7D, $5B, $53, $47	; tile #122
	.byt $67, $6F, $5F, $7F, $7F, $7F, $7F, $7F	; tile #123
	.byt $7C, $7C, $7D, $7A, $75, $72, $75, $6A	; tile #124
	.byt $50, $6A, $55, $6A, $55, $6A, $55, $6A	; tile #125
	.byt $55, $49, $55, $49, $44, $6B, $51, $69	; tile #126
	.byt $7F, $7F, $7F, $7F, $5F, $5F, $43, $58	; tile #127
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $43	; tile #128
	.byt $7D, $63, $7F, $7F, $7F, $7F, $7F, $7F	; tile #129
	.byt $78, $70, $70, $70, $70, $70, $47, $7F	; tile #130
	.byt $40, $40, $40, $40, $40, $40, $7F, $7F	; tile #131
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $43, $78	; tile #132
	.byt $7B, $7B, $79, $7C, $7F, $7F, $7F, $7F	; tile #133
	.byt $7B, $7B, $7B, $7B, $7F, $7F, $7F, $40	; tile #134
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $40	; tile #135
	.byt $77, $77, $77, $7F, $7F, $78, $47, $7F	; tile #136
	.byt $7F, $7F, $7F, $7F, $7F, $40, $7F, $7F	; tile #137
	.byt $4F, $6F, $6F, $6F, $6F, $4F, $4F, $67	; tile #138
	.byt $75, $72, $65, $6A, $65, $4A, $55, $4A	; tile #139
	.byt $50, $68, $50, $68, $51, $67, $47, $67	; tile #140
	.byt $4F, $4F, $5F, $7F, $7F, $7F, $7F, $7F	; tile #141
	.byt $7F, $7F, $7F, $7E, $7E, $7E, $7E, $7E	; tile #142
	.byt $55, $4A, $55, $4A, $55, $6A, $54, $6A	; tile #143
	.byt $55, $6A, $55, $6A, $55, $60, $5F, $7F	; tile #144
	.byt $55, $6A, $55, $6A, $40, $7F, $7F, $7F	; tile #145
	.byt $54, $6A, $51, $65, $4D, $79, $73, $67	; tile #146
	.byt $7C, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #147
	.byt $40, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #148
	.byt $41, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #149
	.byt $73, $79, $7E, $7F, $7F, $7F, $7F, $7F	; tile #150
	.byt $7E, $7E, $46, $70, $7C, $7E, $7F, $7F	; tile #151
	.byt $4F, $4F, $5F, $5F, $5F, $7F, $7F, $7F	; tile #152
	.byt $7E, $7E, $7D, $7C, $7D, $78, $79, $7A	; tile #153
	.byt $55, $69, $53, $6B, $57, $67, $47, $6F	; tile #154
	.byt $6F, $6F, $5F, $40, $40, $60, $48, $58	; tile #155
	.byt $7F, $7F, $7F, $7F, $47, $58, $4C, $44	; tile #156
	.byt $7F, $7F, $7F, $7F, $7F, $40, $42, $43	; tile #157
	.byt $7F, $7F, $7F, $7F, $7F, $5F, $43, $70	; tile #158
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $40, $40	; tile #159
	.byt $7F, $7F, $7F, $7F, $7F, $60, $5C, $44	; tile #160
	.byt $7F, $7F, $7F, $7F, $7F, $40, $40, $40	; tile #161
	.byt $7F, $7F, $7F, $7F, $7F, $4F, $40, $40	; tile #162
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $43, $40	; tile #163
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $58	; tile #164
	.byt $7F, $7F, $7F, $7F, $7F, $78, $44, $4C	; tile #165
	.byt $7F, $7F, $7F, $78, $40, $40, $40, $40	; tile #166
	.byt $7F, $7F, $46, $44, $44, $5C, $50, $70	; tile #167
	.byt $40, $40, $40, $40, $45, $4A, $55, $6A	; tile #168
	.byt $45, $4A, $55, $62, $51, $68, $54, $6A	; tile #169
	.byt $55, $6A, $55, $6A, $55, $6A, $55, $4A	; tile #170
	.byt $51, $69, $55, $69, $51, $6B, $53, $6B	; tile #171
	.byt $71, $72, $75, $72, $74, $72, $75, $71	; tile #172
	.byt $4F, $5F, $5F, $5F, $7F, $7F, $7F, $7F	; tile #173
	.byt $7E, $7C, $7C, $7D, $7D, $7D, $7A, $7A	; tile #174
	.byt $44, $42, $79, $7E, $7F, $7F, $7F, $7F	; tile #175
	.byt $40, $40, $40, $40, $7F, $7F, $7F, $7F	; tile #176
	.byt $58, $4E, $43, $41, $61, $7C, $7F, $7F	; tile #177
	.byt $40, $40, $40, $40, $60, $70, $40, $70	; tile #178
	.byt $44, $44, $44, $46, $42, $42, $43, $41	; tile #179
	.byt $47, $44, $4C, $48, $58, $50, $50, $70	; tile #180
	.byt $70, $40, $40, $40, $40, $40, $40, $40	; tile #181
	.byt $7C, $78, $78, $70, $70, $60, $60, $60	; tile #182
	.byt $40, $40, $43, $46, $4C, $48, $58, $70	; tile #183
	.byt $58, $50, $60, $40, $40, $40, $40, $40	; tile #184
	.byt $40, $40, $41, $41, $41, $41, $43, $7F	; tile #185
	.byt $60, $60, $63, $4F, $5F, $7F, $7F, $7F	; tile #186
	.byt $41, $72, $7C, $7E, $7F, $7F, $7F, $7F	; tile #187
	.byt $55, $6A, $55, $6A, $55, $4A, $65, $6A	; tile #188
	.byt $45, $6A, $55, $62, $51, $68, $55, $68	; tile #189
	.byt $53, $63, $57, $67, $57, $67, $57, $67	; tile #190
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7E, $7E	; tile #191
	.byt $73, $77, $67, $67, $4F, $5F, $5F, $7F	; tile #192
	.byt $78, $7C, $78, $78, $78, $78, $7C, $78	; tile #193
	.byt $7F, $7F, $7F, $7F, $5F, $5F, $5F, $5F	; tile #194
	.byt $75, $72, $75, $72, $75, $72, $79, $7A	; tile #195
	.byt $40, $6A, $55, $6A, $55, $6A, $54, $62	; tile #196
	.byt $40, $6A, $50, $60, $40, $50, $58, $78	; tile #197
	.byt $40, $43, $42, $42, $47, $4F, $5F, $5F	; tile #198
	.byt $70, $70, $70, $40, $60, $60, $78, $7C	; tile #199
	.byt $47, $47, $47, $47, $47, $47, $47, $47	; tile #200
	.byt $40, $78, $7F, $7F, $7F, $7F, $7F, $7F	; tile #201
	.byt $60, $60, $70, $78, $7C, $7E, $7E, $7E	; tile #202
	.byt $40, $5F, $5F, $4F, $4F, $47, $47, $43	; tile #203
	.byt $7F, $7E, $7E, $7E, $78, $78, $78, $78	; tile #204
	.byt $65, $42, $41, $42, $41, $42, $41, $42	; tile #205
	.byt $54, $6A, $54, $6A, $55, $6A, $55, $6A	; tile #206
	.byt $55, $6A, $55, $4A, $55, $4A, $45, $6A	; tile #207
	.byt $57, $67, $57, $67, $57, $67, $53, $6B	; tile #208
	.byt $7F, $7F, $7E, $7C, $7C, $7C, $78, $78	; tile #209
	.byt $70, $60, $40, $40, $40, $40, $41, $41	; tile #210
	.byt $5F, $5F, $5F, $5F, $7F, $7F, $7F, $7F	; tile #211
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7C	; tile #212
	.byt $79, $7A, $79, $78, $70, $60, $40, $40	; tile #213
	.byt $55, $68, $50, $40, $40, $40, $40, $40	; tile #214
	.byt $41, $41, $43, $43, $47, $5F, $5F, $7F	; tile #215
	.byt $78, $78, $78, $7C, $7C, $7C, $7C, $7C	; tile #216
	.byt $40, $40, $41, $41, $47, $5F, $5F, $5F	; tile #217
	.byt $5F, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #218
	.byt $43, $43, $61, $71, $79, $7E, $7E, $7E	; tile #219
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $5F	; tile #220
	.byt $43, $41, $70, $70, $7F, $7F, $7F, $7F	; tile #221
	.byt $7F, $7F, $7F, $5F, $4F, $6F, $6F, $6F	; tile #222
	.byt $78, $78, $78, $78, $70, $70, $60, $60	; tile #223
	.byt $41, $42, $41, $52, $59, $78, $78, $7A	; tile #224
	.byt $55, $6A, $55, $6A, $55, $6A, $55, $42	; tile #225
	.byt $45, $62, $55, $62, $55, $60, $52, $68	; tile #226
	.byt $53, $6B, $53, $69, $55, $68, $44, $4A	; tile #227
	.byt $7E, $7E, $7E, $7E, $7D, $7D, $7D, $7D	; tile #228
	.byt $78, $78, $78, $79, $7B, $7B, $7B, $7B	; tile #229
	.byt $43, $4F, $5F, $7F, $7F, $7F, $7F, $7F	; tile #230
	.byt $7F, $7F, $7F, $7E, $7E, $7E, $7E, $7C	; tile #231
	.byt $43, $43, $43, $47, $4F, $4F, $4F, $4F	; tile #232
	.byt $7E, $7E, $7E, $7C, $7D, $79, $7B, $7B	; tile #233
	.byt $6F, $67, $77, $77, $77, $73, $7B, $7D	; tile #234
	.byt $60, $70, $71, $71, $61, $63, $63, $47	; tile #235
	.byt $79, $7A, $79, $7A, $79, $72, $75, $72	; tile #236
	.byt $51, $68, $55, $68, $54, $6A, $54, $6A	; tile #237
	.byt $45, $42, $45, $42, $41, $42, $40, $40	; tile #238
	.byt $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D	; tile #239
	.byt $7B, $73, $77, $77, $77, $67, $6F, $6F	; tile #240
	.byt $7C, $7C, $78, $78, $70, $71, $67, $77	; tile #241
	.byt $40, $40, $40, $41, $4F, $7F, $7F, $7F	; tile #242
	.byt $40, $40, $41, $4F, $7F, $7F, $7F, $7F	; tile #243
	.byt $5F, $5F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #244
	.byt $7F, $7F, $7F, $7E, $7E, $7E, $7C, $7D	; tile #245
	.byt $67, $6F, $5F, $5F, $7F, $7F, $7F, $7F	; tile #246
	.byt $7D, $7D, $7C, $7E, $7E, $7E, $7E, $7E	; tile #247
	.byt $7E, $7C, $7C, $7C, $7D, $79, $7B, $7F	; tile #248
	.byt $47, $5F, $5F, $7F, $7F, $7E, $7E, $7E	; tile #249
	.byt $75, $6A, $65, $4A, $55, $4A, $55, $6A	; tile #250
	.byt $55, $4A, $55, $4A, $55, $4A, $55, $6A	; tile #251
	.byt $40, $40, $40, $60, $40, $60, $40, $60	; tile #252
	
zplane_data
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
	.byt 000, 001, 001, 001, 001, 001, 003, 005, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 002, 002, 002, 002, 002, 004, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
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
zplane_tiles
	.byt $4F, $4F, $4F, $4F, $4F, $4F, $4F, $4F	; tile #1
	.byt $60, $60, $60, $60, $60, $60, $60, $60	; tile #2
	.byt $4F, $4F, $4F, $4F, $4F, $4F, $4F, $47	; tile #3
	.byt $60, $60, $60, $60, $60, $60, $60, $40	; tile #4
	.byt $42, $40, $40, $40, $40, $40, $40, $40	; tile #5
	
	
; Walkbox Data
wb_data
	.byt 010, 027, 009, 009, $02
	.byt 012, 021, 010, 010, $02
	.byt 015, 018, 008, 008, $01
; Walk matrix
wb_matrix
	.byt 0, 1, 2
	.byt 0, 1, 0
	.byt 0, 0, 2
; Palette Information is stored as one column only for now...
; Palette
palette
.byt 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5
.byt 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5
.byt 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5
.byt 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5
.byt 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5
.byt 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5
.byt 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5
.byt 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5
.byt 5, 5, 5, 5, 5, 5, 5, 5


res_end
.)


; Object resource 200: Entry to cave
.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end-res_start+4)
	.byt 200
res_start
	.byt 0|OBJ_FLAG_PROP
	.byt 7,7	;Size (cols, rows)
	.byt 255	;Initial room
	.byt 15,8	;Location (col, row)
	.byt ZPLANE_1	;Zplane
	.byt 15,8	;Walk position (col, row)
	.byt FACING_UP
	.byt 0	; Color of text
#ifdef ENGLISH	
	.asc "Cave entry",0	;Object's name
#endif
#ifdef SPANISH
	.asc "Cueva",0	;Object's name
#endif		
#ifdef FRENCH
	.asc "Grotte",0	;Object's name
#endif		
res_end
.)


; Object resource 201: Rope
.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end-res_start+4)
	.byt 201
res_start
	.byt 0|OBJ_FLAG_PROP
	.byt 1,6	;Size (cols, rows)
	.byt 255	;Initial room
	.byt 20,6	;Location (col, row)
	.byt ZPLANE_2	;Zplane
	.byt 16,8	;Walk position (col, row)
	.byt FACING_RIGHT
	.byt 0	; Color of text
#ifdef ENGLISH	
	.asc "Rope",0	;Object's name
#endif
#ifdef SPANISH
	.asc "Cuerda",0	;Object's name
#endif		
#ifdef FRENCH
	.asc "Corde",0	;Object's name
#endif		
res_end
.)


#include "..\scripts\cacaveentry.s"



