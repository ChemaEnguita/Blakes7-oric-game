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
; Room: Swamp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.(
	.byt RESOURCE_ROOM
	.word (res_end - res_start + 4)
	.byt 42
res_start
; No. columns, offset to tile map, offset to tiles
	.byt 48, <(column_data-res_start), >(column_data-res_start), <(tiles_start-res_start), >(tiles_start-res_start)
; No. zplanes and offsets to zplanes
	.byt 0
; No. Walkboxes and offsets to wb data and matrix
	.byt 8, <(wb_data-res_start), >(wb_data-res_start), <(wb_matrix-res_start), >(wb_matrix-res_start)
; Offset to palette
	.byt <(palette-res_start), >(palette-res_start)
; Entry and exit scripts
	.byt 200, 255
; Number of objects in the room and list of ids
	.byt 4,200,201,202,203
; Room name (null terminated)
	.asc "Swamp", 0
; Room tile map
column_data
	.byt 001, 023, 001, 039, 054, 083, 087, 087, 114, 001, 001, 001, 001, 001, 001, 203, 087
	.byt 001, 023, 001, 040, 039, 083, 087, 087, 114, 001, 001, 001, 001, 001, 001, 204, 087
	.byt 001, 024, 001, 039, 040, 083, 087, 087, 115, 124, 001, 001, 001, 001, 193, 205, 087
	.byt 001, 024, 001, 041, 054, 083, 087, 087, 116, 125, 001, 001, 001, 001, 194, 206, 087
	.byt 001, 025, 001, 001, 054, 083, 087, 087, 087, 126, 138, 001, 001, 171, 184, 087, 087
	.byt 002, 026, 001, 042, 055, 083, 087, 087, 087, 127, 139, 001, 171, 184, 087, 087, 087
	.byt 003, 027, 001, 042, 055, 083, 087, 087, 087, 087, 140, 157, 172, 087, 087, 087, 105
	.byt 004, 001, 001, 041, 056, 083, 087, 087, 087, 087, 141, 158, 173, 087, 087, 087, 106
	.byt 005, 028, 001, 043, 057, 084, 087, 087, 087, 087, 087, 159, 174, 087, 087, 087, 107
	.byt 005, 028, 001, 040, 057, 084, 087, 087, 087, 087, 087, 141, 175, 087, 087, 087, 087
	.byt 006, 028, 001, 039, 057, 084, 087, 105, 087, 087, 087, 087, 087, 087, 087, 087, 087
	.byt 006, 028, 001, 040, 058, 084, 087, 106, 087, 087, 087, 087, 087, 087, 087, 087, 087
	.byt 007, 001, 001, 039, 059, 084, 087, 107, 087, 087, 087, 087, 087, 087, 087, 087, 087
	.byt 007, 001, 001, 044, 060, 084, 087, 087, 087, 087, 087, 087, 087, 087, 087, 207, 087
	.byt 003, 001, 001, 045, 061, 084, 087, 087, 087, 087, 087, 087, 105, 087, 087, 087, 226
	.byt 003, 001, 001, 046, 062, 085, 087, 087, 087, 087, 142, 087, 106, 142, 087, 208, 227
	.byt 008, 001, 001, 047, 063, 086, 087, 087, 087, 087, 143, 087, 107, 143, 087, 087, 228
	.byt 006, 028, 001, 048, 064, 087, 087, 087, 087, 087, 144, 087, 087, 144, 087, 117, 229
	.byt 006, 028, 001, 049, 065, 087, 087, 087, 087, 087, 106, 087, 087, 106, 142, 209, 230
	.byt 007, 001, 001, 050, 066, 087, 087, 087, 087, 087, 107, 087, 087, 107, 143, 210, 000
	.byt 007, 001, 001, 051, 067, 087, 087, 087, 105, 087, 087, 087, 087, 087, 144, 207, 228
	.byt 003, 001, 001, 001, 068, 087, 087, 087, 106, 087, 087, 087, 087, 105, 106, 116, 229
	.byt 003, 001, 001, 001, 068, 087, 087, 087, 107, 087, 087, 087, 087, 106, 107, 087, 231
	.byt 009, 001, 001, 001, 069, 087, 087, 087, 087, 087, 087, 087, 087, 107, 087, 207, 232
	.byt 010, 001, 001, 040, 069, 087, 087, 087, 087, 087, 087, 087, 087, 142, 087, 211, 229
	.byt 011, 029, 001, 039, 070, 087, 087, 087, 087, 087, 087, 087, 087, 143, 087, 087, 230
	.byt 000, 030, 001, 040, 071, 087, 087, 087, 087, 105, 087, 087, 087, 144, 087, 212, 000
	.byt 012, 000, 035, 039, 072, 088, 087, 087, 087, 106, 087, 087, 087, 106, 087, 087, 230
	.byt 013, 000, 036, 052, 073, 089, 087, 087, 087, 107, 087, 087, 087, 107, 195, 213, 227
	.byt 014, 031, 000, 053, 074, 090, 087, 087, 087, 087, 087, 087, 087, 087, 196, 214, 233
	.byt 015, 032, 000, 000, 075, 084, 087, 087, 087, 087, 087, 160, 087, 185, 197, 197, 234
	.byt 000, 000, 000, 000, 076, 084, 087, 087, 087, 087, 145, 161, 176, 186, 198, 215, 235
	.byt 016, 033, 000, 000, 077, 091, 087, 087, 087, 087, 146, 162, 177, 187, 001, 216, 236
	.byt 001, 001, 000, 000, 078, 092, 087, 087, 087, 087, 147, 001, 178, 188, 001, 217, 237
	.byt 001, 001, 000, 000, 079, 093, 087, 087, 087, 128, 148, 001, 001, 001, 001, 218, 238
	.byt 017, 001, 037, 000, 080, 091, 087, 087, 087, 129, 149, 163, 001, 001, 001, 219, 239
	.byt 018, 001, 037, 000, 081, 092, 087, 087, 117, 130, 150, 164, 001, 001, 001, 220, 240
	.byt 019, 001, 037, 000, 082, 094, 099, 108, 118, 131, 151, 165, 001, 001, 001, 001, 241
	.byt 020, 028, 037, 000, 030, 095, 100, 109, 119, 132, 152, 166, 179, 001, 001, 001, 242
	.byt 020, 028, 037, 000, 000, 096, 101, 110, 120, 133, 153, 167, 180, 001, 001, 221, 243
	.byt 021, 001, 038, 000, 000, 097, 102, 111, 121, 134, 000, 000, 000, 001, 001, 222, 244
	.byt 001, 034, 000, 000, 000, 098, 103, 112, 122, 135, 154, 154, 154, 189, 199, 223, 000
	.byt 022, 032, 000, 000, 000, 000, 104, 113, 123, 136, 155, 168, 181, 190, 200, 001, 245
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 030, 137, 156, 169, 182, 191, 201, 224, 246
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 170, 183, 192, 202, 225, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000
	.byt 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000, 000

; Room tile set
tiles_start
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #1
	.byt $7F, $7F, $7F, $7F, $C0, $7F, $7F, $7F	; tile #2
	.byt $7F, $7F, $7F, $7F, $C0, $C0, $C0, $7F	; tile #3
	.byt $7F, $7F, $7F, $C0, $C0, $C0, $C0, $7F	; tile #4
	.byt $7F, $7F, $7F, $C0, $C0, $C0, $C0, $C0	; tile #5
	.byt $7F, $7F, $C0, $C0, $C0, $C0, $C0, $C0	; tile #6
	.byt $7F, $7F, $C0, $C0, $C0, $C0, $C0, $7F	; tile #7
	.byt $7F, $7F, $7F, $C0, $C0, $C0, $7F, $7F	; tile #8
	.byt $7E, $7F, $7F, $7F, $C0, $7F, $7F, $7F	; tile #9
	.byt $40, $40, $40, $60, $78, $7E, $7F, $7F	; tile #10
	.byt $40, $40, $40, $40, $40, $40, $40, $70	; tile #11
	.byt $7F, $5F, $5F, $41, $40, $40, $40, $40	; tile #12
	.byt $7F, $7F, $7F, $7F, $5F, $43, $40, $40	; tile #13
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $4F	; tile #14
	.byt $60, $60, $70, $70, $70, $70, $70, $60	; tile #15
	.byt $4F, $47, $47, $47, $47, $47, $43, $43	; tile #16
	.byt $7F, $7F, $7F, $7F, $7F, $C0, $7F, $7F	; tile #17
	.byt $7F, $7F, $7F, $7F, $7F, $C0, $C0, $C0	; tile #18
	.byt $7F, $7F, $7F, $7F, $C0, $C0, $C0, $C0	; tile #19
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $C0, $C0	; tile #20
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $C0, $7F	; tile #21
	.byt $7E, $7E, $7C, $7C, $78, $78, $70, $70	; tile #22
	.byt $C0, $C0, $C0, $C0, $C0, $C0, $C0, $7F	; tile #23
	.byt $C0, $C0, $C0, $C0, $C0, $7F, $7F, $7F	; tile #24
	.byt $7F, $C0, $C0, $C0, $C0, $7F, $7F, $7F	; tile #25
	.byt $7F, $7F, $C0, $C0, $C0, $7F, $7F, $7F	; tile #26
	.byt $7F, $7F, $C0, $7F, $7F, $7F, $7F, $7F	; tile #27
	.byt $C0, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #28
	.byt $7C, $7C, $7E, $7E, $7F, $7F, $7F, $7F	; tile #29
	.byt $40, $40, $40, $40, $40, $40, $40, $60	; tile #30
	.byt $43, $41, $40, $40, $40, $40, $40, $40	; tile #31
	.byt $60, $60, $40, $40, $40, $40, $40, $40	; tile #32
	.byt $43, $43, $43, $41, $40, $40, $40, $40	; tile #33
	.byt $7F, $7F, $7F, $7F, $7F, $7E, $60, $40	; tile #34
	.byt $40, $60, $70, $78, $7E, $7F, $7F, $7F	; tile #35
	.byt $40, $40, $40, $40, $40, $40, $60, $70	; tile #36
	.byt $7F, $40, $40, $40, $40, $40, $40, $40	; tile #37
	.byt $7E, $40, $40, $40, $40, $40, $40, $40	; tile #38
	.byt $7F, $7F, $75, $7A, $78, $62, $6E, $59	; tile #39
	.byt $7F, $7F, $6F, $6B, $6D, $5F, $6E, $55	; tile #40
	.byt $7F, $7F, $7F, $7F, $7A, $77, $7A, $7B	; tile #41
	.byt $7F, $7F, $7F, $7F, $7F, $7D, $6F, $6D	; tile #42
	.byt $7F, $7F, $7F, $7F, $7F, $57, $6B, $55	; tile #43
	.byt $7F, $7F, $7F, $7E, $7F, $55, $6B, $54	; tile #44
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7A, $75	; tile #45
	.byt $7F, $7F, $7F, $7F, $7F, $55, $6B, $51	; tile #46
	.byt $7F, $7E, $7F, $7E, $7E, $7F, $7A, $51	; tile #47
	.byt $7F, $7F, $5F, $7F, $7F, $6F, $75, $5B	; tile #48
	.byt $7F, $7F, $7F, $7F, $77, $6B, $7F, $5C	; tile #49
	.byt $7F, $7F, $7F, $7F, $73, $5D, $6F, $7A	; tile #50
	.byt $7F, $7F, $7F, $7F, $7D, $6D, $5B, $75	; tile #51
	.byt $78, $7E, $7F, $7F, $7F, $7F, $7F, $7F	; tile #52
	.byt $40, $40, $40, $60, $70, $78, $78, $7C	; tile #53
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $40	; tile #54
	.byt $7A, $5D, $62, $55, $6A, $54, $40, $55	; tile #55
	.byt $5A, $55, $48, $55, $6A, $50, $42, $55	; tile #56
	.byt $79, $4C, $4A, $54, $6B, $40, $6A, $55	; tile #57
	.byt $6A, $45, $78, $79, $6A, $40, $6A, $55	; tile #58
	.byt $6C, $55, $60, $54, $40, $55, $6A, $55	; tile #59
	.byt $6A, $55, $40, $44, $40, $55, $6A, $55	; tile #60
	.byt $6A, $5D, $78, $54, $42, $55, $6A, $55	; tile #61
	.byt $4A, $40, $42, $40, $6A, $55, $6A, $54	; tile #62
	.byt $68, $55, $60, $42, $68, $55, $6A, $40	; tile #63
	.byt $6E, $5B, $40, $6A, $40, $55, $6A, $40	; tile #64
	.byt $77, $7F, $40, $6A, $40, $55, $6A, $40	; tile #65
	.byt $6F, $7E, $40, $6A, $40, $55, $6A, $40	; tile #66
	.byt $7F, $68, $40, $6A, $41, $4A, $45, $4A	; tile #67
	.byt $7F, $40, $40, $6A, $55, $6A, $55, $6A	; tile #68
	.byt $7F, $7F, $40, $6A, $40, $6A, $55, $6A	; tile #69
	.byt $7F, $7F, $41, $68, $40, $6A, $55, $6A	; tile #70
	.byt $6B, $7D, $7F, $41, $40, $6A, $54, $6A	; tile #71
	.byt $7F, $7D, $7F, $57, $43, $54, $4A, $55	; tile #72
	.byt $6F, $7F, $59, $75, $66, $46, $68, $55	; tile #73
	.byt $7D, $7B, $57, $6A, $69, $5F, $40, $55	; tile #74
	.byt $40, $40, $70, $68, $5F, $5B, $45, $50	; tile #75
	.byt $40, $40, $40, $40, $7B, $7E, $7E, $40	; tile #76
	.byt $40, $40, $40, $42, $57, $7B, $6B, $4F	; tile #77
	.byt $40, $40, $4F, $6F, $77, $43, $6F, $6B	; tile #78
	.byt $40, $40, $7F, $7D, $7D, $5D, $4A, $57	; tile #79
	.byt $40, $40, $7F, $7F, $7F, $7F, $7F, $7F	; tile #80
	.byt $40, $40, $40, $7E, $7E, $7F, $7F, $7E	; tile #81
	.byt $40, $40, $40, $40, $40, $60, $7C, $67	; tile #82
	.byt $6A, $55, $6A, $55, $6A, $55, $40, $6A	; tile #83
	.byt $6A, $55, $6A, $55, $6A, $40, $40, $6A	; tile #84
	.byt $68, $52, $68, $54, $6A, $40, $40, $6A	; tile #85
	.byt $40, $6A, $40, $4A, $60, $4A, $40, $6A	; tile #86
	.byt $40, $6A, $40, $6A, $40, $6A, $40, $6A	; tile #87
	.byt $4A, $40, $40, $6A, $40, $6A, $40, $6A	; tile #88
	.byt $6A, $55, $42, $68, $40, $6A, $40, $6A	; tile #89
	.byt $6A, $55, $6A, $45, $40, $6A, $40, $6A	; tile #90
	.byt $60, $55, $6A, $55, $6A, $40, $40, $6A	; tile #91
	.byt $40, $55, $6A, $55, $6A, $40, $40, $6A	; tile #92
	.byt $5B, $40, $6A, $55, $6A, $45, $40, $6A	; tile #93
	.byt $75, $45, $68, $55, $6A, $55, $40, $4A	; tile #94
	.byt $75, $7B, $43, $57, $67, $4F, $5F, $7F	; tile #95
	.byt $40, $7E, $7D, $7D, $7B, $7B, $77, $77	; tile #96
	.byt $7D, $7D, $7B, $79, $75, $75, $6D, $6D	; tile #97
	.byt $40, $70, $7C, $7C, $7C, $7E, $7E, $7E	; tile #98
	.byt $40, $6A, $40, $6A, $40, $69, $41, $69	; tile #99
	.byt $7B, $7B, $79, $75, $75, $75, $76, $76	; tile #100
	.byt $6F, $60, $6E, $6D, $5D, $5D, $5B, $5B	; tile #101
	.byt $5D, $5D, $7D, $7D, $7D, $7D, $7D, $7D	; tile #102
	.byt $7E, $7E, $7E, $7E, $7D, $7D, $7B, $7B	; tile #103
	.byt $40, $40, $40, $40, $40, $40, $60, $60	; tile #104
	.byt $40, $40, $4A, $45, $40, $6A, $40, $6A	; tile #105
	.byt $40, $40, $6A, $55, $42, $68, $40, $6A	; tile #106
	.byt $40, $42, $60, $50, $68, $42, $40, $6A	; tile #107
	.byt $41, $69, $41, $6B, $43, $6B, $43, $6B	; tile #108
	.byt $6E, $6E, $6E, $6E, $6D, $5D, $5D, $5D	; tile #109
	.byt $79, $7F, $7B, $77, $77, $6F, $6F, $5F	; tile #110
	.byt $7A, $7B, $7B, $7B, $7B, $73, $63, $49	; tile #111
	.byt $7F, $4F, $77, $7B, $7B, $77, $77, $79	; tile #112
	.byt $60, $60, $70, $70, $70, $70, $70, $70	; tile #113
	.byt $40, $6A, $40, $40, $55, $6A, $55, $7C	; tile #114
	.byt $40, $6A, $40, $4A, $40, $62, $50, $6A	; tile #115
	.byt $40, $6A, $40, $6A, $40, $6A, $40, $42	; tile #116
	.byt $40, $6A, $40, $6A, $40, $6A, $40, $60	; tile #117
	.byt $47, $67, $47, $66, $46, $66, $4E, $6E	; tile #118
	.byt $5B, $5B, $5B, $7B, $77, $77, $77, $77	; tile #119
	.byt $7E, $7E, $7D, $7C, $7D, $7C, $7D, $7C	; tile #120
	.byt $52, $6A, $53, $6B, $51, $61, $54, $6A	; tile #121
	.byt $7E, $7E, $5E, $5E, $6E, $6E, $76, $76	; tile #122
	.byt $74, $68, $64, $6A, $64, $6A, $65, $6A	; tile #123
	.byt $75, $7A, $7D, $7E, $7E, $7F, $7F, $7F	; tile #124
	.byt $40, $68, $54, $6A, $55, $6A, $75, $7A	; tile #125
	.byt $40, $6A, $40, $4A, $40, $60, $54, $6A	; tile #126
	.byt $40, $6A, $40, $6A, $40, $4A, $40, $68	; tile #127
	.byt $40, $6A, $40, $68, $41, $62, $49, $62	; tile #128
	.byt $40, $43, $57, $6B, $53, $6B, $53, $69	; tile #129
	.byt $4E, $7F, $7F, $7F, $7F, $7F, $7E, $7D	; tile #130
	.byt $4D, $65, $79, $7C, $73, $4F, $7E, $7C	; tile #131
	.byt $6F, $6F, $4F, $71, $64, $48, $50, $68	; tile #132
	.byt $7D, $7C, $7D, $7C, $79, $7A, $79, $7A	; tile #133
	.byt $45, $68, $50, $60, $40, $60, $40, $40	; tile #134
	.byt $55, $55, $49, $49, $45, $45, $43, $43	; tile #135
	.byt $65, $4A, $55, $4A, $55, $4A, $55, $4A	; tile #136
	.byt $40, $60, $50, $60, $50, $60, $50, $68	; tile #137
	.byt $75, $7E, $7F, $7F, $7F, $7F, $7F, $7F	; tile #138
	.byt $54, $6A, $55, $6A, $75, $7A, $7D, $7E	; tile #139
	.byt $40, $42, $50, $68, $54, $6A, $55, $6A	; tile #140
	.byt $40, $6A, $40, $6A, $40, $4A, $40, $62	; tile #141
	.byt $40, $60, $4A, $40, $40, $6A, $40, $6A	; tile #142
	.byt $40, $40, $6A, $40, $40, $6A, $40, $6A	; tile #143
	.byt $40, $40, $6A, $45, $40, $6A, $40, $6A	; tile #144
	.byt $40, $6A, $40, $6A, $40, $61, $42, $69	; tile #145
	.byt $40, $6A, $40, $60, $4A, $55, $6A, $55	; tile #146
	.byt $40, $6A, $40, $40, $6A, $55, $6A, $5F	; tile #147
	.byt $49, $62, $49, $54, $68, $57, $7F, $7F	; tile #148
	.byt $54, $6A, $55, $6A, $40, $76, $7B, $7D	; tile #149
	.byt $5D, $63, $53, $6B, $43, $6B, $6B, $5B	; tile #150
	.byt $5D, $4A, $55, $4A, $55, $4A, $65, $6A	; tile #151
	.byt $51, $61, $41, $61, $41, $41, $41, $61	; tile #152
	.byt $79, $7A, $79, $7A, $79, $7A, $79, $7A	; tile #153
	.byt $41, $41, $41, $41, $41, $41, $41, $41	; tile #154
	.byt $45, $6A, $65, $6A, $65, $6A, $65, $6A	; tile #155
	.byt $50, $68, $50, $68, $52, $6A, $56, $66	; tile #156
	.byt $75, $7A, $7D, $7E, $7D, $7E, $7F, $7F	; tile #157
	.byt $50, $68, $54, $6A, $55, $6A, $55, $6A	; tile #158
	.byt $40, $4A, $40, $60, $54, $6A, $55, $6A	; tile #159
	.byt $40, $6A, $40, $6A, $40, $69, $40, $6A	; tile #160
	.byt $42, $55, $6B, $5F, $6F, $57, $6F, $55	; tile #161
	.byt $6B, $5F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #162
	.byt $7C, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #163
	.byt $7B, $7B, $7D, $7D, $7D, $7C, $7E, $7F	; tile #164
	.byt $65, $6A, $65, $6A, $64, $40, $76, $7B	; tile #165
	.byt $41, $61, $41, $41, $43, $43, $73, $6B	; tile #166
	.byt $79, $72, $75, $72, $75, $72, $75, $72	; tile #167
	.byt $65, $72, $75, $72, $75, $72, $75, $72	; tile #168
	.byt $57, $67, $57, $67, $57, $67, $57, $67	; tile #169
	.byt $40, $40, $40, $60, $60, $60, $70, $70	; tile #170
	.byt $7F, $7F, $7F, $7F, $7D, $7E, $7D, $6A	; tile #171
	.byt $7F, $7E, $7D, $6A, $55, $6A, $55, $40	; tile #172
	.byt $55, $6A, $55, $6A, $55, $6A, $55, $40	; tile #173
	.byt $55, $6A, $55, $6A, $55, $6A, $50, $42	; tile #174
	.byt $50, $6A, $50, $62, $40, $4A, $40, $6A	; tile #175
	.byt $6A, $55, $42, $69, $42, $65, $4A, $55	; tile #176
	.byt $7F, $5F, $6F, $57, $6B, $55, $6A, $55	; tile #177
	.byt $7F, $7F, $7F, $7F, $7F, $5F, $6F, $57	; tile #178
	.byt $7B, $7B, $7B, $7B, $7B, $7B, $7B, $78	; tile #179
	.byt $75, $72, $75, $72, $75, $72, $75, $40	; tile #180
	.byt $75, $72, $75, $72, $75, $72, $75, $72	; tile #181
	.byt $57, $67, $57, $6F, $4F, $6F, $4F, $6F	; tile #182
	.byt $70, $70, $78, $78, $78, $78, $78, $70	; tile #183
	.byt $54, $68, $50, $62, $40, $4A, $40, $6A	; tile #184
	.byt $40, $61, $4A, $55, $4A, $55, $4A, $55	; tile #185
	.byt $6A, $55, $6A, $55, $6A, $55, $6F, $55	; tile #186
	.byt $6A, $55, $6A, $57, $7F, $7F, $5F, $7F	; tile #187
	.byt $6F, $5F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #188
	.byt $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D	; tile #189
	.byt $75, $72, $79, $7A, $79, $7A, $79, $7A	; tile #190
	.byt $4F, $6F, $4F, $6F, $4F, $6F, $5F, $5F	; tile #191
	.byt $70, $70, $70, $70, $70, $60, $60, $60	; tile #192
	.byt $7F, $7F, $7F, $7F, $7F, $7E, $7D, $7A	; tile #193
	.byt $7F, $7E, $7D, $7A, $75, $6A, $54, $68	; tile #194
	.byt $40, $6A, $40, $69, $42, $55, $6A, $55	; tile #195
	.byt $40, $45, $6A, $55, $6A, $55, $6A, $55	; tile #196
	.byt $6A, $55, $6A, $55, $6A, $55, $6A, $55	; tile #197
	.byt $6B, $57, $6F, $5F, $6F, $5F, $6F, $5F	; tile #198
	.byt $7D, $7D, $7C, $7F, $7F, $7F, $7F, $7F	; tile #199
	.byt $79, $7A, $41, $70, $7F, $7F, $7F, $7F	; tile #200
	.byt $5F, $5F, $5F, $5F, $47, $79, $7E, $7F	; tile #201
	.byt $60, $60, $60, $60, $60, $60, $40, $60	; tile #202
	.byt $7F, $6A, $55, $40, $40, $6A, $40, $6A	; tile #203
	.byt $7D, $6A, $54, $40, $40, $6A, $40, $6A	; tile #204
	.byt $55, $68, $40, $6A, $40, $6A, $40, $6A	; tile #205
	.byt $40, $4A, $40, $6A, $40, $6A, $40, $6A	; tile #206
	.byt $40, $6A, $40, $6A, $40, $6A, $40, $68	; tile #207
	.byt $40, $6A, $40, $6A, $40, $62, $40, $60	; tile #208
	.byt $40, $6A, $40, $6A, $40, $6A, $40, $48	; tile #209
	.byt $40, $6A, $40, $6A, $40, $6A, $40, $4A	; tile #210
	.byt $40, $6A, $40, $6A, $40, $62, $40, $42	; tile #211
	.byt $40, $6A, $40, $6A, $40, $62, $40, $62	; tile #212
	.byt $42, $68, $40, $6A, $40, $62, $40, $60	; tile #213
	.byt $6A, $55, $4A, $55, $4A, $55, $4A, $55	; tile #214
	.byt $6B, $55, $6A, $55, $6A, $55, $6A, $55	; tile #215
	.byt $7F, $5F, $6F, $5F, $7F, $7F, $7F, $7F	; tile #216
	.byt $7F, $7F, $7B, $79, $78, $78, $7C, $7C	; tile #217
	.byt $7F, $7F, $7F, $7F, $7F, $5F, $4F, $47	; tile #218
	.byt $7F, $7F, $7F, $7F, $7F, $7E, $7E, $7E	; tile #219
	.byt $7F, $7F, $7F, $5F, $5F, $5F, $4F, $4F	; tile #220
	.byt $7F, $7F, $7F, $5F, $4F, $47, $47, $43	; tile #221
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7C	; tile #222
	.byt $7F, $7F, $7F, $77, $73, $73, $61, $60	; tile #223
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7E, $7E	; tile #224
	.byt $60, $60, $60, $60, $40, $40, $40, $40	; tile #225
	.byt $40, $40, $40, $60, $40, $60, $40, $68	; tile #226
	.byt $40, $60, $40, $40, $40, $40, $40, $40	; tile #227
	.byt $40, $68, $40, $40, $40, $40, $40, $40	; tile #228
	.byt $40, $42, $40, $40, $40, $40, $40, $40	; tile #229
	.byt $40, $6A, $40, $40, $40, $40, $40, $40	; tile #230
	.byt $40, $6A, $40, $42, $40, $40, $40, $40	; tile #231
	.byt $40, $60, $40, $60, $40, $40, $40, $40	; tile #232
	.byt $6A, $45, $43, $40, $40, $40, $40, $40	; tile #233
	.byt $6A, $51, $43, $40, $40, $40, $40, $40	; tile #234
	.byt $6A, $54, $40, $40, $40, $40, $40, $40	; tile #235
	.byt $7F, $7C, $58, $40, $40, $40, $40, $40	; tile #236
	.byt $7C, $7C, $5C, $48, $40, $40, $40, $40	; tile #237
	.byt $43, $41, $41, $40, $40, $40, $40, $40	; tile #238
	.byt $7C, $74, $44, $40, $40, $40, $40, $40	; tile #239
	.byt $4F, $4E, $40, $40, $40, $40, $40, $40	; tile #240
	.byt $6F, $4F, $47, $40, $40, $40, $40, $40	; tile #241
	.byt $77, $61, $60, $40, $40, $40, $40, $40	; tile #242
	.byt $41, $40, $40, $40, $40, $40, $40, $40	; tile #243
	.byt $7C, $78, $78, $50, $40, $40, $40, $40	; tile #244
	.byt $7E, $5C, $4C, $48, $40, $40, $40, $40	; tile #245
	.byt $7E, $5C, $5C, $48, $40, $40, $40, $40	; tile #246
; Walkbox Data
wb_data
	.byt 000, 002, 010, 013, $01
	.byt 003, 004, 011, 012, $01
	.byt 005, 014, 011, 011, $01
	.byt 014, 018, 012, 012, $01
	.byt 018, 021, 013, 013, $01
	.byt 021, 031, 012, 012, $01
	.byt 032, 034, 011, 014, $01
	.byt 035, 037, 013, 014, $01
; Walk matrix
wb_matrix
	.byt 0, 1, 1, 1, 1, 1, 1, 1
	.byt 0, 1, 2, 2, 2, 2, 2, 2
	.byt 1, 1, 2, 3, 3, 3, 3, 3
	.byt 2, 2, 2, 3, 4, 4, 4, 4
	.byt 3, 3, 3, 3, 4, 5, 5, 5
	.byt 4, 4, 4, 4, 4, 5, 6, 6
	.byt 5, 5, 5, 5, 5, 5, 6, 7
	.byt 6, 6, 6, 6, 6, 6, 6, 7
; Palette Information is stored as one column only for now...
; Palette
palette
.byt 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
.byt 6, 6, 3, 3, 3, 3, 3, 2, 3, 2, 3, 2, 3, 2, 3, 2
.byt 2, 2, 2, 2, 2, 2, 2, 6, 3, 6, 3, 6, 3, 6, 3, 6
.byt 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6
.byt 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6
.byt 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6
.byt 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6
.byt 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6
.byt 3, 6, 3, 6, 3, 6, 3, 6


res_end
.)

; Object exit
.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 200
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 1,6		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 0,14		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 0,$fe		; Walk position (col, row)
	.byt FACING_LEFT	; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH
	.asc "Path",0
#endif
#ifdef SPANISH
	.asc "Camino",0
#endif
#ifdef FRENCH
	.asc "Chemin",0
#endif
res_end	
.)


; Object Stone
.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 201
res_start
	.byt OBJ_FLAG_PROP|OBJ_FLAG_FROMDISTANCE	; If OBJ_FLAG_PROP skip all costume data
	.byt 3,1		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 13,12		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt $ff,$ff		; Walk position (col, row)
	.byt FACING_RIGHT	; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH
	.asc "Stone",0
#endif
#ifdef SPANISH
	.asc "Piedra",0
#endif
#ifdef FRENCH
	.asc "Pierre",0
#endif
res_end	
.)


; Object Cave
.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 202
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 2,5		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 40,13		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 37,13		; Walk position (col, row)
	.byt FACING_RIGHT	; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH
	.asc "Cave",0
#endif
#ifdef SPANISH
	.asc "Cueva",0
#endif
#ifdef FRENCH
	.asc "Grotte",0
#endif
res_end	
.)

; Object Shore
.(
	.byt RESOURCE_OBJECT
	.word (res_end - res_start +4)
	.byt 203
res_start
	.byt OBJ_FLAG_PROP	; If OBJ_FLAG_PROP skip all costume data
	.byt 6,5		; Size (col, row)
	.byt $ff		; Room ($ff = current)
	.byt 30,16		; Pos (col, row)
	.byt ZPLANE_1		; Zplane
	.byt 33,13		; Walk position (col, row)
	.byt FACING_RIGHT	; Facing direction for interaction
	.byt 00			; Color of text
#ifdef ENGLISH
	.asc "Shore",0
#endif
#ifdef SPANISH
	.asc "Orilla",0
#endif
#ifdef FRENCH
	.asc "Berge",0 ; // Berge de l'étang
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
; Animatory state 0 (wood1.png)
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 1, 2, 3, 4, 5
.byt 0, 0, 0, 6, 7
; Animatory state 1 (wood2.png)
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 8, 9, 10, 11, 12
.byt 13, 14, 15, 16, 7
costume_tiles
; Tile graphic 1
.byt $0, $0, $e, $5, $3, $0, $0, $0
; Tile graphic 2
.byt $0, $0, $0, $10, $3f, $5, $0, $0
; Tile graphic 3
.byt $0, $0, $0, $0, $20, $15, $f, $0
; Tile graphic 4
.byt $0, $0, $0, $0, $0, $0, $3f, $15
; Tile graphic 5
.byt $0, $0, $0, $0, $0, $0, $0, $c
; Tile graphic 6
.byt $0, $0, $0, $0, $0, $0, $0, $0
; Tile graphic 7
.byt $2c, $0, $0, $0, $0, $0, $0, $0
; Tile graphic 8
.byt $0, $0, $0, $0, $0, $0, $3, $15
; Tile graphic 9
.byt $0, $0, $0, $0, $0, $0, $38, $15
; Tile graphic 10
.byt $0, $0, $0, $0, $0, $0, $1, $15
; Tile graphic 11
.byt $0, $0, $0, $0, $0, $0, $3f, $15
; Tile graphic 12
.byt $0, $0, $0, $0, $0, $0, $2c, $c
; Tile graphic 13
.byt $1f, $0, $0, $0, $0, $0, $0, $0
; Tile graphic 14
.byt $3f, $5, $0, $0, $0, $0, $0, $0
; Tile graphic 15
.byt $3f, $14, $0, $0, $0, $0, $0, $0
; Tile graphic 16
.byt $3f, $0, $0, $0, $0, $0, $0, $0
costume_masks
; Tile mask 1
.byt $ff, $71, $60, $60, $70, $7c, $ff, $ff
; Tile mask 2
.byt $ff, $ff, $4f, $40, $40, $40, $78, $ff
; Tile mask 3
.byt $ff, $ff, $ff, $5f, $40, $40, $40, $70
; Tile mask 4
.byt $ff, $ff, $ff, $ff, $5f, $40, $40, $40
; Tile mask 5
.byt $ff, $ff, $ff, $ff, $ff, $ff, $43, $41
; Tile mask 6
.byt $60, $ff, $ff, $ff, $ff, $ff, $ff, $ff
; Tile mask 7
.byt $41, $43, $ff, $ff, $ff, $ff, $ff, $ff
; Tile mask 8
.byt $ff, $ff, $ff, $ff, $ff, $7c, $60, $40
; Tile mask 9
.byt $ff, $ff, $ff, $ff, $ff, $47, $40, $40
; Tile mask 10
.byt $ff, $ff, $ff, $ff, $ff, $7e, $40, $40
; Tile mask 11
.byt $ff, $ff, $ff, $ff, $ff, $40, $40, $40
; Tile mask 12
.byt $ff, $ff, $ff, $ff, $ff, $43, $41, $41
; Tile mask 13
.byt $40, $60, $ff, $ff, $ff, $ff, $ff, $ff
; Tile mask 14
.byt $40, $40, $78, $ff, $ff, $ff, $ff, $ff
; Tile mask 15
.byt $40, $40, $43, $ff, $ff, $ff, $ff, $ff
; Tile mask 16
.byt $40, $40, $ff, $ff, $ff, $ff, $ff, $ff
res_end
.)




#include "..\scripts\swamp.s"


