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
; Room: Workshop
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.(
	.byt RESOURCE_ROOM
	.word (res_end - res_start + 4)
	.byt 21
res_start
; No. columns, offset to tile map, offset to tiles
	.byt 38, <(column_data-res_start), >(column_data-res_start), <(tiles_start-res_start), >(tiles_start-res_start)
; No. zplanes and offsets to zplanes
	.byt 0
; No. Walkboxes and offsets to wb data and matrix
	.byt 5, <(wb_data-res_start), >(wb_data-res_start), <(wb_matrix-res_start), >(wb_matrix-res_start)
; Offset to palette
	.byt 0, 0	; No palette information
; Entry and exit scripts
	.byt 200, 255
; Number of objects in the room and list of ids
	.byt 4,200,201,202,203
; Room name (null terminated)
	.asc "Workshop", 0
; Room tile map
column_data
	.byt 001, 008, 008, 008, 008, 008, 008, 008, 008, 008, 008, 008, 119, 024, 127, 145, 148
	.byt 002, 009, 009, 009, 009, 009, 009, 009, 009, 009, 009, 102, 120, 024, 127, 145, 148
	.byt 003, 010, 008, 008, 008, 008, 008, 008, 008, 008, 008, 103, 121, 024, 127, 145, 148
	.byt 004, 011, 009, 009, 009, 009, 009, 009, 009, 009, 088, 104, 122, 024, 127, 145, 148
	.byt 004, 012, 016, 016, 016, 016, 016, 016, 046, 067, 089, 105, 123, 024, 127, 145, 148
	.byt 004, 004, 017, 009, 009, 009, 009, 009, 047, 068, 090, 106, 123, 025, 129, 145, 148
	.byt 004, 004, 018, 008, 008, 008, 008, 008, 008, 008, 091, 107, 124, 142, 152, 146, 148
	.byt 004, 004, 017, 009, 009, 009, 009, 009, 009, 009, 091, 108, 125, 143, 153, 148, 148
	.byt 004, 004, 018, 008, 008, 008, 008, 008, 008, 008, 091, 109, 126, 144, 148, 148, 148
	.byt 004, 004, 017, 009, 009, 009, 009, 009, 048, 069, 091, 024, 127, 145, 148, 148, 148
	.byt 004, 004, 018, 008, 008, 008, 008, 008, 049, 070, 091, 110, 128, 145, 148, 148, 148
	.byt 004, 004, 017, 009, 009, 009, 009, 009, 050, 071, 091, 111, 127, 145, 148, 148, 148
	.byt 004, 004, 018, 008, 008, 008, 008, 008, 051, 072, 091, 025, 129, 145, 148, 148, 148
	.byt 004, 004, 017, 009, 009, 009, 009, 009, 009, 009, 091, 024, 130, 145, 148, 148, 148
	.byt 004, 004, 018, 008, 008, 008, 008, 008, 008, 008, 091, 112, 131, 145, 148, 148, 148
	.byt 004, 004, 017, 009, 009, 009, 009, 009, 009, 073, 092, 113, 132, 145, 148, 148, 148
	.byt 004, 004, 018, 008, 008, 008, 008, 008, 052, 074, 093, 025, 133, 145, 148, 148, 148
	.byt 004, 004, 017, 009, 023, 028, 036, 042, 053, 075, 094, 024, 130, 145, 148, 148, 148
	.byt 004, 004, 018, 008, 024, 029, 037, 043, 054, 076, 095, 112, 131, 145, 148, 148, 148
	.byt 004, 004, 017, 009, 024, 029, 037, 009, 055, 077, 093, 113, 132, 145, 148, 148, 148
	.byt 004, 004, 018, 008, 025, 030, 038, 043, 053, 075, 094, 024, 130, 145, 148, 148, 148
	.byt 004, 004, 017, 009, 023, 031, 036, 042, 054, 078, 096, 023, 134, 145, 148, 148, 148
	.byt 004, 004, 018, 008, 024, 029, 037, 044, 056, 008, 091, 024, 127, 145, 148, 148, 148
	.byt 004, 004, 017, 009, 026, 032, 039, 009, 057, 079, 091, 112, 127, 145, 148, 148, 148
	.byt 004, 004, 018, 008, 024, 033, 037, 008, 058, 080, 091, 113, 127, 145, 148, 148, 148
	.byt 004, 004, 017, 009, 024, 029, 037, 009, 059, 081, 091, 024, 127, 145, 148, 148, 148
	.byt 004, 004, 018, 008, 025, 030, 038, 008, 060, 082, 097, 025, 129, 145, 148, 148, 148
	.byt 004, 004, 017, 009, 009, 009, 009, 009, 061, 009, 098, 114, 135, 146, 148, 148, 148
	.byt 004, 004, 018, 008, 008, 008, 008, 008, 062, 083, 099, 115, 136, 147, 148, 148, 148
	.byt 004, 004, 017, 009, 009, 009, 009, 009, 063, 009, 009, 009, 137, 148, 148, 148, 148
	.byt 004, 004, 018, 008, 008, 008, 008, 008, 062, 083, 099, 115, 136, 147, 148, 148, 148
	.byt 004, 004, 017, 009, 009, 009, 009, 009, 009, 009, 009, 009, 137, 148, 148, 148, 148
	.byt 004, 004, 019, 016, 016, 016, 016, 016, 016, 016, 016, 016, 138, 148, 148, 148, 148
	.byt 004, 013, 020, 022, 022, 022, 022, 022, 064, 084, 063, 116, 139, 149, 148, 148, 148
	.byt 005, 014, 021, 021, 021, 021, 021, 021, 065, 085, 100, 117, 140, 150, 148, 148, 148
	.byt 005, 015, 009, 009, 009, 009, 009, 009, 009, 009, 009, 009, 009, 009, 149, 148, 148
	.byt 006, 008, 008, 008, 008, 034, 040, 045, 066, 086, 101, 118, 141, 151, 154, 148, 148
	.byt 007, 009, 009, 009, 027, 035, 041, 041, 041, 087, 029, 029, 029, 029, 037, 148, 148

; Room tile set
tiles_start
	.byt $E0, $D8, $59, $7E, $77, $7F, $5D, $7F	; tile #1
	.byt $C0, $C0, $C0, $E0, $D8, $79, $76, $7F	; tile #2
	.byt $C0, $C0, $C0, $C0, $C0, $C0, $E0, $D8	; tile #3
	.byt $C0, $C0, $C0, $C0, $C0, $C0, $C0, $C0	; tile #4
	.byt $C0, $C0, $C0, $C0, $C0, $C0, $C0, $C3	; tile #5
	.byt $C0, $C0, $C0, $C0, $C3, $CC, $4D, $7F	; tile #6
	.byt $C0, $C3, $CC, $4F, $7D, $7F, $77, $7F	; tile #7
	.byt $77, $7F, $5D, $7F, $77, $7F, $5D, $7F	; tile #8
	.byt $5D, $7F, $77, $7F, $5D, $7F, $77, $7F	; tile #9
	.byt $79, $7E, $5D, $7F, $77, $7F, $5D, $7F	; tile #10
	.byt $C0, $C0, $F0, $CC, $5C, $7F, $77, $7F	; tile #11
	.byt $C0, $C0, $C0, $C0, $C0, $E0, $D8, $79	; tile #12
	.byt $C0, $C0, $C0, $C3, $C5, $C5, $CD, $4A	; tile #13
	.byt $C5, $C5, $C5, $CD, $42, $7A, $5A, $7A	; tile #14
	.byt $CC, $4F, $77, $7F, $5D, $7F, $77, $7F	; tile #15
	.byt $76, $7E, $5C, $7E, $76, $7E, $5C, $7E	; tile #16
	.byt $40, $7F, $77, $7F, $5D, $7F, $77, $7F	; tile #17
	.byt $40, $7F, $5D, $7F, $77, $7F, $5D, $7F	; tile #18
	.byt $40, $7E, $5C, $7E, $76, $7E, $5C, $7E	; tile #19
	.byt $7A, $7A, $72, $7A, $5A, $7A, $72, $7A	; tile #20
	.byt $72, $7A, $5A, $7A, $72, $7A, $5A, $7A	; tile #21
	.byt $5A, $7A, $72, $7A, $5A, $7A, $72, $7A	; tile #22
	.byt $40, $5F, $5F, $5F, $5F, $5F, $5F, $5F	; tile #23
	.byt $40, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #24
	.byt $40, $7E, $7E, $7E, $7E, $7E, $7E, $7E	; tile #25
	.byt $40, $7F, $7E, $7E, $7E, $7E, $7E, $7E	; tile #26
	.byt $5D, $7F, $77, $7F, $5D, $7F, $74, $70	; tile #27
	.byt $5F, $5F, $5F, $5F, $57, $57, $57, $5F	; tile #28
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F	; tile #29
	.byt $7E, $7E, $7E, $7E, $7E, $7E, $7E, $7E	; tile #30
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F	; tile #31
	.byt $7E, $7E, $7E, $7E, $7A, $7A, $7A, $7E	; tile #32
	.byt $7F, $7F, $7F, $7F, $6F, $6F, $6F, $7F	; tile #33
	.byt $77, $7E, $5C, $7E, $76, $7E, $5C, $7D	; tile #34
	.byt $4F, $40, $40, $7F, $40, $7F, $40, $7F	; tile #35
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $5F, $40	; tile #36
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $7F, $40	; tile #37
	.byt $7E, $7E, $7E, $7E, $7E, $7E, $7E, $40	; tile #38
	.byt $7E, $7E, $7E, $7E, $7E, $7E, $7F, $40	; tile #39
	.byt $74, $7D, $5C, $7D, $74, $7B, $58, $7B	; tile #40
	.byt $40, $7F, $40, $7F, $40, $7F, $40, $7F	; tile #41
	.byt $5D, $7F, $77, $7F, $5D, $7F, $7F, $40	; tile #42
	.byt $77, $7F, $5D, $7F, $77, $7F, $7F, $40	; tile #43
	.byt $77, $7F, $5D, $7F, $77, $7F, $7D, $7F	; tile #44
	.byt $70, $7B, $58, $7B, $70, $77, $50, $77	; tile #45
	.byt $70, $6F, $5F, $5F, $58, $5B, $5B, $5A	; tile #46
	.byt $41, $7E, $72, $4A, $7A, $7A, $4A, $4A	; tile #47
	.byt $5D, $7F, $7F, $60, $70, $7E, $76, $7E	; tile #48
	.byt $77, $7F, $7F, $40, $FF, $C0, $C0, $C0	; tile #49
	.byt $5D, $7F, $7F, $40, $FF, $C0, $C0, $C0	; tile #50
	.byt $77, $7F, $7D, $47, $4F, $5F, $5D, $5F	; tile #51
	.byt $76, $7E, $5E, $7E, $76, $7E, $5E, $7E	; tile #52
	.byt $FF, $40, $FF, $40, $FF, $40, $FF, $40	; tile #53
	.byt $FF, $4C, $FF, $42, $FF, $40, $FF, $40	; tile #54
	.byt $5E, $5E, $56, $5E, $5E, $5E, $56, $5E	; tile #55
	.byt $57, $5F, $5D, $5F, $57, $5F, $5D, $5F	; tile #56
	.byt $5D, $7F, $77, $5F, $40, $7F, $60, $5F	; tile #57
	.byt $77, $7F, $5D, $7F, $40, $7F, $40, $7F	; tile #58
	.byt $5D, $7F, $77, $7F, $40, $7F, $40, $7F	; tile #59
	.byt $77, $7F, $5D, $7E, $40, $7F, $41, $7E	; tile #60
	.byt $5D, $7F, $77, $7F, $7D, $7A, $7D, $7F	; tile #61
	.byt $77, $7F, $5D, $7F, $7F, $46, $70, $72	; tile #62
	.byt $5D, $7F, $77, $7F, $5D, $7A, $7D, $7F	; tile #63
	.byt $5A, $7A, $72, $7A, $5A, $7A, $78, $6A	; tile #64
	.byt $72, $7A, $5A, $7A, $72, $7A, $78, $6A	; tile #65
	.byt $70, $77, $40, $6F, $60, $6F, $40, $6F	; tile #66
	.byt $58, $58, $58, $5B, $59, $5B, $59, $5B	; tile #67
	.byt $4A, $5A, $7A, $5A, $7A, $5A, $7A, $5A	; tile #68
	.byt $5E, $7E, $77, $7F, $5D, $7F, $77, $7F	; tile #69
	.byt $C0, $D5, $55, $7F, $77, $7F, $5D, $7F	; tile #70
	.byt $C0, $D5, $55, $7F, $5D, $7F, $77, $7F	; tile #71
	.byt $57, $7F, $7D, $7F, $77, $7F, $5D, $7F	; tile #72
	.byt $5D, $7F, $77, $7E, $5E, $7E, $76, $7E	; tile #73
	.byt $77, $7F, $7F, $40, $C0, $DE, $DE, $C0	; tile #74
	.byt $40, $7F, $7F, $40, $C0, $CA, $C0, $CA	; tile #75
	.byt $40, $7F, $7D, $5E, $56, $5E, $5E, $5E	; tile #76
	.byt $7F, $7F, $7F, $40, $C0, $DE, $DE, $C0	; tile #77
	.byt $40, $7F, $77, $5F, $5D, $5F, $57, $5F	; tile #78
	.byt $5F, $40, $60, $7D, $5D, $7F, $77, $7F	; tile #79
	.byt $7F, $40, $40, $7F, $77, $7F, $5D, $7F	; tile #80
	.byt $7F, $40, $40, $7F, $5D, $7F, $77, $7F	; tile #81
	.byt $7E, $40, $41, $77, $77, $7F, $5D, $7F	; tile #82
	.byt $73, $6D, $E1, $5E, $E1, $5E, $E1, $5E	; tile #83
	.byt $56, $6A, $78, $7A, $5A, $7B, $75, $7E	; tile #84
	.byt $56, $6A, $78, $7A, $7A, $56, $6D, $7B	; tile #85
	.byt $40, $5F, $40, $5F, $40, $5F, $40, $40	; tile #86
	.byt $40, $7F, $40, $7F, $40, $7F, $40, $40	; tile #87
	.byt $5D, $7F, $77, $7F, $46, $41, $40, $43	; tile #88
	.byt $59, $5B, $5B, $58, $58, $61, $55, $7F	; tile #89
	.byt $72, $61, $43, $4F, $55, $7F, $55, $7F	; tile #90
	.byt $40, $7F, $55, $7F, $55, $7F, $55, $7F	; tile #91
	.byt $40, $7E, $54, $7E, $55, $7F, $55, $7F	; tile #92
	.byt $C0, $D5, $C0, $40, $55, $7F, $55, $7F	; tile #93
	.byt $CA, $CA, $C0, $40, $55, $7F, $55, $7F	; tile #94
	.byt $40, $5E, $54, $5E, $55, $7F, $55, $7F	; tile #95
	.byt $40, $5F, $55, $5F, $55, $7F, $55, $7F	; tile #96
	.byt $40, $7E, $55, $7F, $55, $7F, $55, $7F	; tile #97
	.byt $7D, $7F, $57, $5F, $5D, $5F, $4F, $6F	; tile #98
	.byt $E1, $5A, $E5, $5E, $E5, $5A, $E1, $5E	; tile #99
	.byt $57, $57, $55, $47, $57, $77, $55, $47	; tile #100
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $4F, $6F	; tile #101
	.byt $5D, $7F, $77, $7F, $5D, $7F, $76, $7D	; tile #102
	.byt $77, $7E, $5D, $7B, $75, $6F, $55, $7F	; tile #103
	.byt $40, $43, $43, $42, $40, $41, $FC, $F8	; tile #104
	.byt $4D, $4F, $75, $40, $E0, $E0, $E0, $E0	; tile #105
	.byt $55, $7F, $55, $40, $C0, $C0, $C0, $C0	; tile #106
	.byt $55, $7F, $55, $40, $C3, $C6, $73, $67	; tile #107
	.byt $55, $7F, $55, $7F, $54, $7D, $53, $77	; tile #108
	.byt $50, $73, $4B, $5B, $7B, $7B, $7B, $7B	; tile #109
	.byt $40, $7F, $7E, $7E, $7A, $7A, $7A, $7E	; tile #110
	.byt $40, $7F, $7F, $7F, $6F, $6F, $6F, $7F	; tile #111
	.byt $40, $7F, $7F, $7B, $7C, $7F, $7F, $7F	; tile #112
	.byt $40, $7F, $7F, $77, $4F, $7F, $7F, $7F	; tile #113
	.byt $4D, $7F, $77, $7F, $5D, $7F, $77, $7F	; tile #114
	.byt $E1, $5E, $E1, $5E, $E1, $5E, $E1, $5E	; tile #115
	.byt $5D, $7F, $77, $7E, $5D, $7D, $75, $7D	; tile #116
	.byt $57, $57, $45, $73, $79, $69, $59, $59	; tile #117
	.byt $6F, $6F, $4F, $6F, $6F, $77, $57, $77	; tile #118
	.byt $77, $7F, $5D, $7E, $75, $7B, $45, $5F	; tile #119
	.byt $59, $77, $45, $7F, $55, $7F, $55, $7F	; tile #120
	.byt $55, $7F, $55, $7F, $55, $7F, $55, $7F	; tile #121
	.byt $F0, $E1, $40, $7F, $55, $7F, $55, $7F	; tile #122
	.byt $40, $C0, $40, $7F, $55, $7F, $55, $7F	; tile #123
	.byt $4D, $5F, $74, $7D, $53, $77, $4F, $5F	; tile #124
	.byt $4F, $5F, $6F, $6F, $6B, $6B, $6B, $6F	; tile #125
	.byt $7B, $7B, $7B, $7B, $7B, $7B, $78, $73	; tile #126
	.byt $7F, $7F, $7F, $7F, $7F, $7F, $40, $7F	; tile #127
	.byt $7E, $7E, $7E, $7E, $7E, $7F, $40, $7F	; tile #128
	.byt $7E, $7E, $7E, $7E, $7E, $7E, $40, $7F	; tile #129
	.byt $40, $7F, $7F, $7F, $7F, $7F, $40, $7F	; tile #130
	.byt $40, $7F, $7F, $7B, $7C, $7F, $40, $7F	; tile #131
	.byt $40, $7F, $7F, $77, $4F, $7F, $40, $7F	; tile #132
	.byt $40, $7E, $7E, $7E, $7E, $7E, $40, $7F	; tile #133
	.byt $5F, $5F, $5F, $5F, $5F, $5F, $40, $7F	; tile #134
	.byt $5D, $7F, $77, $7F, $5D, $7F, $57, $60	; tile #135
	.byt $E1, $5E, $E5, $5A, $E5, $5E, $E1, $5E	; tile #136
	.byt $5D, $7F, $77, $7F, $5D, $7F, $77, $40	; tile #137
	.byt $76, $7E, $5C, $7E, $76, $7E, $5C, $40	; tile #138
	.byt $5D, $7E, $77, $7F, $5D, $7F, $77, $7F	; tile #139
	.byt $79, $73, $45, $57, $57, $51, $5E, $61	; tile #140
	.byt $77, $77, $57, $77, $77, $7B, $5B, $7B	; tile #141
	.byt $7E, $7E, $7E, $7F, $7F, $7F, $7F, $7F	; tile #142
	.byt $6F, $6F, $6E, $6D, $6A, $74, $68, $50	; tile #143
	.byt $60, $50, $61, $42, $45, $4A, $55, $6A	; tile #144
	.byt $40, $40, $55, $6A, $55, $6A, $55, $6A	; tile #145
	.byt $45, $4A, $55, $6A, $55, $6A, $55, $6A	; tile #146
	.byt $E1, $60, $55, $6A, $55, $6A, $55, $6A	; tile #147
	.byt $55, $6A, $55, $6A, $55, $6A, $55, $6A	; tile #148
	.byt $4D, $67, $51, $6A, $55, $6A, $55, $6A	; tile #149
	.byt $77, $7F, $5D, $7F, $47, $67, $51, $6A	; tile #150
	.byt $73, $7B, $5B, $7B, $75, $7D, $5D, $7D	; tile #151
	.byt $7E, $7D, $7A, $74, $68, $50, $61, $42	; tile #152
	.byt $61, $42, $45, $4A, $55, $6A, $55, $6A	; tile #153
	.byt $75, $7D, $5D, $7D, $46, $66, $50, $6A	; tile #154
; Walkbox Data
wb_data
	.byt 000, 006, 015, 016, $02
	.byt 008, 027, 013, 016, $02
	.byt 007, 007, 014, 016, $02
	.byt 028, 031, 014, 016, $02
	.byt 032, 036, 015, 016, $02
; Walk matrix
wb_matrix
	.byt 0, 2, 2, 2, 2
	.byt 2, 1, 2, 3, 3
	.byt 0, 1, 2, 1, 1
	.byt 1, 1, 1, 3, 4
	.byt 3, 3, 3, 3, 4


res_end
.)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; COSTUME for Tools
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
; Animatory state 0 (missingY.png)
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 1, 2, 0, 0, 0
.byt 3, 4, 0, 0, 0
; Animatory state 1 (scissors.png)
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 5, 6, 0, 0, 0
.byt 7, 8, 0, 0, 0
; Animatory state 2 (spray.png)
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 9, 10, 0, 0, 0
.byt 11, 12, 0, 0, 0
; Animatory state 3 (tweezers.png)
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 13, 14, 0, 0, 0
.byt 15, 16, 0, 0, 0
; Animatory state 4 (wrench.png)
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 0, 0, 0, 0, 0
.byt 17, 18, 0, 0, 0
.byt 19, 20, 0, 0, 0
costume_tiles
; Tile graphic 1
.byt $16, $2a, $38, $3f, $1d, $3f, $37, $3f
; Tile graphic 2
.byt $16, $2a, $38, $3f, $37, $3f, $1d, $3f
; Tile graphic 3
.byt $1d, $3f, $37, $3f, $1d, $3a, $3d, $3f
; Tile graphic 4
.byt $37, $3f, $3d, $7, $17, $37, $15, $7
; Tile graphic 5
.byt $c, $12, $2d, $2d, $10, $c, $5, $4
; Tile graphic 6
.byt $18, $24, $1a, $1a, $1a, $4, $18, $10
; Tile graphic 7
.byt $4, $4, $4, $4, $4, $2, $3, $0
; Tile graphic 8
.byt $10, $10, $10, $20, $20, $20, $20, $0
; Tile graphic 9
.byt $0, $0, $0, $0, $0, $0, $1, $2
; Tile graphic 10
.byt $0, $0, $0, $0, $0, $0, $30, $8
; Tile graphic 11
.byt $2, $4, $b, $b, $0, $b, $b, $4
; Tile graphic 12
.byt $10, $8, $34, $14, $0, $14, $34, $8
; Tile graphic 13
.byt $3, $2, $2, $2, $2, $2, $2, $2
; Tile graphic 14
.byt $38, $28, $28, $28, $28, $28, $8, $8
; Tile graphic 15
.byt $4, $9, $9, $9, $9, $9, $4, $3
; Tile graphic 16
.byt $4, $32, $32, $32, $32, $32, $24, $38
; Tile graphic 17
.byt $3, $4, $8, $e, $17, $13, $10, $8
; Tile graphic 18
.byt $20, $10, $8, $4, $12, $2, $4, $8
; Tile graphic 19
.byt $4, $4, $4, $5, $5, $4, $2, $1
; Tile graphic 20
.byt $10, $10, $10, $10, $10, $10, $20, $0
costume_masks
; Tile mask 1
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 2
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 3
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 4
.byt $40, $40, $40, $40, $40, $40, $40, $40
; Tile mask 5
.byt $73, $61, $40, $40, $60, $70, $78, $78
; Tile mask 6
.byt $67, $43, $41, $41, $41, $43, $47, $4f
; Tile mask 7
.byt $78, $78, $78, $78, $78, $7c, $7c, $ff
; Tile mask 8
.byt $4f, $4f, $4f, $5f, $5f, $5f, $5f, $ff
; Tile mask 9
.byt $ff, $ff, $ff, $ff, $ff, $ff, $7e, $7c
; Tile mask 10
.byt $ff, $ff, $ff, $ff, $ff, $ff, $4f, $47
; Tile mask 11
.byt $7c, $78, $70, $70, $40, $70, $70, $78
; Tile mask 12
.byt $4f, $47, $43, $43, $40, $43, $43, $47
; Tile mask 13
.byt $7c, $7c, $7c, $7c, $7c, $7c, $7c, $7c
; Tile mask 14
.byt $47, $47, $47, $47, $47, $47, $47, $47
; Tile mask 15
.byt $78, $70, $70, $70, $70, $70, $78, $7c
; Tile mask 16
.byt $43, $41, $41, $41, $41, $41, $43, $47
; Tile mask 17
.byt $7c, $78, $70, $70, $60, $60, $60, $70
; Tile mask 18
.byt $5f, $4f, $47, $43, $41, $41, $43, $47
; Tile mask 19
.byt $78, $78, $78, $78, $78, $78, $7c, $7e
; Tile mask 20
.byt $4f, $4f, $4f, $4f, $4f, $4f, $5f, $ff
res_end
.)

; Object resource 200: Sink
.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end-res_start+4)
	.byt 200
res_start
	.byt 0|OBJ_FLAG_PROP
	.byt 3,2	;Size (cols, rows)
	.byt 255	;Initial room
	.byt 3,12	;Location (col, row)
	.byt ZPLANE_1	;Zplane
	.byt 7,14	;Walk position (col, row)
	.byt FACING_LEFT
	.byt 0	; Color of text
#ifdef ENGLISH	
	.asc "Sink",0	;Object's name
#endif
#ifdef SPANISH
	.asc "Lavabo",0	; [laurentd75]: corrected "labavo" -> "lavabo"
#endif	
#ifdef FRENCH
	.asc "Lavabo",0
#endif
res_end
.)

; Object resource 201: Door
.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end-res_start+4)
	.byt 201
res_start
	.byt 0|OBJ_FLAG_PROP
	.byt 2,10	;Size (cols, rows)
	.byt 255	;Initial room
	.byt 37,14	;Location (col, row)
	.byt ZPLANE_1	;Zplane
	.byt 37,15	;Walk position (col, row)
	.byt FACING_RIGHT
	.byt 0	; Color of text
#ifdef ENGLISH	
	.asc "Exit",0	;Object's name
#endif
#ifdef SPANISH
	.asc "Salida",0	;Object's name
#endif	
#ifdef FRENCH
	.asc "Sortie",0
#endif
res_end
.)

; Object resource 202: Pipe
.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end-res_start+4)
	.byt 202
res_start
	.byt 0|OBJ_FLAG_PROP
	.byt 2,11	;Size (cols, rows)
	.byt 255	;Initial room
	.byt 33,10	;Location (col, row)
	.byt ZPLANE_1	;Zplane
	.byt 29,13	;Walk position (col, row)
	.byt FACING_RIGHT
	.byt 0	; Color of text
#ifdef ENGLISH	
	.asc "Pipe",0	;Object's name
#endif
#ifdef SPANISH
	.asc "Tuber","Z"+3,"a",0	;Object's name
#endif	
#ifdef FRENCH
	.asc "Tuyau en Y",0
#endif

res_end
.)

; Object resource 203: engineering station
.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end-res_start+4)
	.byt 203
res_start
	.byt 0|OBJ_FLAG_PROP
	.byt 6,3	;Size (cols, rows)
	.byt 255	;Initial room
	.byt 16,10	;Location (col, row)
	.byt ZPLANE_1	;Zplane
	.byt 16,13	;Walk position (col, row)
	.byt FACING_UP
	.byt 0	; Color of text
#ifdef ENGLISH	
	.asc "Equipment",0	;Object's name
#endif
#ifdef SPANISH
	.asc "Equipo",0	;Object's name
#endif	
#ifdef FRENCH
	.asc "Equipement",0  ; [laurentd75]: NB: "matériel" serait mieux ici
#endif
res_end
.)




; Object resource 250: Missing Pipe
.(
	.byt RESOURCE_OBJECT|$80
	.word (res_end-res_start+4)
	.byt 250
res_start
	.byt 0
	.byt 2,2	;Size (cols, rows)
	.byt 255	;Initial room
	.byt 33,10	;Location (col, row)
	.byt ZPLANE_0	;Zplane
	.byt 29,13	;Walk position (col, row)
	.byt FACING_RIGHT
	.byt 0	; Color of text
	; tiles and pointers to animatory states are setup in the costume
	; Load the costume ID, load the resource, setup pointers, load animatory state and set it.
	; also setup direction and anim_speed	
	.byt 200		; costume ($ff for none) and skip the rest
	.byt 0			; entry in costume resource		
	.byt 0			; direction (0 or LOOK_RIGHT for animstate 0)
	.byt 0			; animation speed		
	.asc ".",0	;Object's name
res_end
.)




#include "..\scripts\liberatorworkshop.s"


