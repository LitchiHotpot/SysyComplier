	.arch armv8-a
	.arch_extension crc
	.arm
.data

	.comm buf, 8, 4
	.text
addr_buf:
	.word buf
