.class public Lcom/br/ipad/isc/io/GZip;
.super Ljava/lang/Object;
.source "GZip.java"


# static fields
.field private static final BTYPE_DYNAMIC:I = 0x2

.field private static final BTYPE_NONE:I = 0x0

.field private static final DISTANCE_EXTRA_BITS:[I

.field private static final DISTANCE_VALUES:[I

.field private static final DYNAMIC_LENGTH_ORDER:[I

.field private static final EOB_CODE:I = 0x100

.field private static final FCOMMENT_MASK:I = 0x10

.field private static final FEXTRA_MASK:I = 0x4

.field private static final FHCRC_MASK:I = 0x2

.field private static final FNAME_MASK:I = 0x8

.field private static final LENGTH_EXTRA_BITS:[I

.field private static final LENGTH_VALUES:[I

.field private static final MAX_BITS:I = 0x10

.field private static final MAX_CODE_DISTANCES:I = 0x1f

.field private static final MAX_CODE_LENGTHS:I = 0x12

.field private static final MAX_CODE_LITERALS:I = 0x11f

.field private static gzipBit:I

.field private static gzipByte:I

.field private static gzipIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x1f

    new-array v1, v0, [I

    .line 29
    fill-array-data v1, :array_0

    sput-object v1, Lcom/br/ipad/isc/io/GZip;->LENGTH_EXTRA_BITS:[I

    new-array v0, v0, [I

    .line 31
    fill-array-data v0, :array_1

    sput-object v0, Lcom/br/ipad/isc/io/GZip;->LENGTH_VALUES:[I

    const/16 v0, 0x1e

    new-array v1, v0, [I

    .line 34
    fill-array-data v1, :array_2

    sput-object v1, Lcom/br/ipad/isc/io/GZip;->DISTANCE_EXTRA_BITS:[I

    new-array v0, v0, [I

    .line 37
    fill-array-data v0, :array_3

    sput-object v0, Lcom/br/ipad/isc/io/GZip;->DISTANCE_VALUES:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    .line 40
    fill-array-data v0, :array_4

    sput-object v0, Lcom/br/ipad/isc/io/GZip;->DYNAMIC_LENGTH_ORDER:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x0
        0x63
        0x63
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xd
        0xf
        0x11
        0x13
        0x17
        0x1b
        0x1f
        0x23
        0x2b
        0x33
        0x3b
        0x43
        0x53
        0x63
        0x73
        0x83
        0xa3
        0xc3
        0xe3
        0x102
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x7
        0x9
        0xd
        0x11
        0x19
        0x21
        0x31
        0x41
        0x61
        0x81
        0xc1
        0x101
        0x181
        0x201
        0x301
        0x401
        0x601
        0x801
        0xc01
        0x1001
        0x1801
        0x2001
        0x3001
        0x4001
        0x6001
    .end array-data

    :array_4
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createHuffmanTree([BI)[I
    .locals 13

    const/16 v0, 0x11

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 253
    :goto_0
    array-length v4, p0

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    .line 254
    aget-byte v4, p0, v3

    aget v6, v1, v4

    add-int/2addr v6, v5

    aput v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aput v2, v1, v2

    new-array v0, v0, [I

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_1
    const/16 v6, 0x10

    if-gt v3, v6, :cond_1

    add-int/lit8 v6, v3, -0x1

    .line 260
    aget v6, v1, v6

    add-int/2addr v4, v6

    shl-int/2addr v4, v5

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, v6

    .line 266
    new-array v1, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_2
    if-gt v3, p1, :cond_6

    .line 269
    aget-byte v7, p0, v3

    if-eqz v7, :cond_5

    .line 271
    aget v8, v0, v7

    add-int/lit8 v9, v8, 0x1

    aput v9, v0, v7

    add-int/lit8 v7, v7, -0x1

    const/4 v9, 0x0

    :goto_3
    if-ltz v7, :cond_4

    shl-int v10, v5, v7

    and-int/2addr v10, v8

    if-nez v10, :cond_2

    .line 278
    aget v10, v1, v9

    shr-int/2addr v10, v6

    if-nez v10, :cond_3

    .line 280
    aget v10, v1, v9

    shl-int/lit8 v11, v4, 0x10

    or-int/2addr v10, v11

    aput v10, v1, v9

    add-int/lit8 v9, v4, 0x1

    move v10, v4

    move v4, v9

    goto :goto_4

    .line 287
    :cond_2
    aget v10, v1, v9

    const v11, 0xffff

    and-int/2addr v10, v11

    if-nez v10, :cond_3

    .line 289
    aget v10, v1, v9

    or-int/2addr v10, v4

    aput v10, v1, v9

    add-int/lit8 v9, v4, 0x1

    move v12, v9

    move v9, v4

    move v4, v12

    goto :goto_5

    :cond_3
    :goto_4
    move v9, v10

    :goto_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_4
    const/high16 v7, -0x80000000

    or-int/2addr v7, v3

    .line 296
    aput v7, v1, v9

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-object v1
.end method

.method private static decodeCodeLengths([B[II)[B
    .locals 7

    .line 222
    new-array v0, p2, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v2, p2, :cond_4

    .line 224
    invoke-static {p0, p1}, Lcom/br/ipad/isc/io/GZip;->readCode([B[I)I

    move-result v4

    const/16 v5, 0x10

    if-lt v4, v5, :cond_3

    const/4 v6, 0x3

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    .line 228
    invoke-static {p0, v4}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v4

    add-int/2addr v4, v6

    goto :goto_2

    :cond_1
    const/16 v3, 0x11

    if-ne v4, v3, :cond_2

    .line 232
    invoke-static {p0, v6}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v3

    add-int/2addr v3, v6

    goto :goto_1

    :cond_2
    const/4 v3, 0x7

    .line 234
    invoke-static {p0, v3}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    :goto_1
    move v4, v3

    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    int-to-byte v6, v3

    .line 238
    aput-byte v6, v0, v2

    move v2, v4

    move v4, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v2, 0x1

    int-to-byte v5, v4

    .line 240
    aput-byte v5, v0, v2

    move v2, v3

    move v3, v4

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static inflate([B)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 61
    sput v1, Lcom/br/ipad/isc/io/GZip;->gzipBit:I

    sput v1, Lcom/br/ipad/isc/io/GZip;->gzipByte:I

    sput v1, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    const/16 v2, 0x10

    .line 63
    invoke-static {v0, v2}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v3

    const v4, 0x8b1f

    if-ne v3, v4, :cond_12

    const/16 v3, 0x8

    invoke-static {v0, v3}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v4

    if-ne v4, v3, :cond_12

    .line 66
    invoke-static {v0, v3}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v4

    .line 68
    sget v5, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    add-int/lit8 v5, v5, 0x6

    sput v5, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_0

    .line 71
    invoke-static {v0, v2}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v6

    add-int/2addr v5, v6

    sput v5, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    :cond_0
    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_1

    .line 73
    :goto_0
    sget v5, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    aget-byte v5, v0, v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_2

    .line 76
    :goto_1
    sget v5, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    aget-byte v5, v0, v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 79
    sget v4, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    add-int/2addr v4, v5

    sput v4, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    .line 81
    :cond_3
    sget v4, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    .line 82
    array-length v6, v0

    const/4 v7, 0x4

    sub-int/2addr v6, v7

    sput v6, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    .line 83
    invoke-static {v0, v2}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v6

    .line 84
    invoke-static {v0, v2}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v8

    shl-int/2addr v8, v2

    or-int/2addr v6, v8

    new-array v6, v6, [B

    .line 86
    sput v4, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    const/4 v4, 0x0

    :goto_2
    const/4 v8, 0x1

    .line 91
    invoke-static {v0, v8}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v9

    .line 92
    invoke-static {v0, v5}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v10

    if-nez v10, :cond_4

    .line 96
    sput v1, Lcom/br/ipad/isc/io/GZip;->gzipBit:I

    .line 98
    invoke-static {v0, v2}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v8

    .line 100
    sget v10, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    invoke-static {v0, v10, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    sget v10, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    add-int/2addr v10, v8

    sput v10, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    add-int/2addr v4, v8

    goto/16 :goto_b

    :cond_4
    const/4 v11, 0x5

    const/16 v12, 0x100

    if-ne v10, v5, :cond_6

    .line 109
    invoke-static {v0, v11}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v10

    add-int/lit16 v10, v10, 0x101

    .line 110
    invoke-static {v0, v11}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v11

    add-int/2addr v11, v8

    .line 111
    invoke-static {v0, v7}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v13

    add-int/2addr v13, v7

    const/16 v14, 0x13

    new-array v14, v14, [B

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v13, :cond_5

    .line 115
    sget-object v16, Lcom/br/ipad/isc/io/GZip;->DYNAMIC_LENGTH_ORDER:[I

    aget v16, v16, v15

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v14, v16

    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/16 v1, 0x12

    .line 118
    invoke-static {v14, v1}, Lcom/br/ipad/isc/io/GZip;->createHuffmanTree([BI)[I

    move-result-object v1

    .line 121
    invoke-static {v0, v1, v10}, Lcom/br/ipad/isc/io/GZip;->decodeCodeLengths([B[II)[B

    move-result-object v13

    sub-int/2addr v10, v8

    invoke-static {v13, v10}, Lcom/br/ipad/isc/io/GZip;->createHuffmanTree([BI)[I

    move-result-object v10

    .line 123
    invoke-static {v0, v1, v11}, Lcom/br/ipad/isc/io/GZip;->decodeCodeLengths([B[II)[B

    move-result-object v1

    sub-int/2addr v11, v8

    invoke-static {v1, v11}, Lcom/br/ipad/isc/io/GZip;->createHuffmanTree([BI)[I

    move-result-object v1

    goto :goto_9

    :cond_6
    const/16 v1, 0x120

    new-array v8, v1, [B

    const/4 v10, 0x0

    :goto_4
    const/16 v13, 0x90

    if-ge v10, v13, :cond_7

    .line 128
    aput-byte v3, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    if-ge v13, v12, :cond_8

    const/16 v10, 0x9

    .line 130
    aput-byte v10, v8, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_8
    const/16 v10, 0x100

    :goto_6
    const/16 v13, 0x118

    if-ge v10, v13, :cond_9

    const/4 v13, 0x7

    .line 132
    aput-byte v13, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    if-ge v13, v1, :cond_a

    .line 134
    aput-byte v3, v8, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_a
    const/16 v1, 0x11f

    .line 135
    invoke-static {v8, v1}, Lcom/br/ipad/isc/io/GZip;->createHuffmanTree([BI)[I

    move-result-object v10

    const/16 v1, 0x20

    new-array v8, v1, [B

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v1, :cond_b

    .line 140
    aput-byte v11, v8, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_b
    const/16 v1, 0x1f

    .line 141
    invoke-static {v8, v1}, Lcom/br/ipad/isc/io/GZip;->createHuffmanTree([BI)[I

    move-result-object v1

    .line 146
    :goto_9
    invoke-static {v0, v10}, Lcom/br/ipad/isc/io/GZip;->readCode([B[I)I

    move-result v8

    if-eq v8, v12, :cond_10

    if-le v8, v12, :cond_f

    add-int/lit16 v8, v8, -0x101

    .line 149
    sget-object v11, Lcom/br/ipad/isc/io/GZip;->LENGTH_VALUES:[I

    aget v11, v11, v8

    .line 150
    sget-object v13, Lcom/br/ipad/isc/io/GZip;->LENGTH_EXTRA_BITS:[I

    aget v8, v13, v8

    if-lez v8, :cond_c

    .line 151
    invoke-static {v0, v8}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v8

    add-int/2addr v11, v8

    .line 152
    :cond_c
    invoke-static {v0, v1}, Lcom/br/ipad/isc/io/GZip;->readCode([B[I)I

    move-result v8

    .line 153
    sget-object v13, Lcom/br/ipad/isc/io/GZip;->DISTANCE_VALUES:[I

    aget v13, v13, v8

    .line 154
    sget-object v14, Lcom/br/ipad/isc/io/GZip;->DISTANCE_EXTRA_BITS:[I

    aget v8, v14, v8

    if-lez v8, :cond_d

    .line 155
    invoke-static {v0, v8}, Lcom/br/ipad/isc/io/GZip;->readBits([BI)I

    move-result v8

    add-int/2addr v13, v8

    :cond_d
    sub-int v8, v4, v13

    :goto_a
    if-ge v13, v11, :cond_e

    .line 159
    invoke-static {v6, v8, v6, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v13

    sub-int/2addr v11, v13

    shl-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 165
    :cond_e
    invoke-static {v6, v8, v6, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v11

    goto :goto_9

    :cond_f
    add-int/lit8 v11, v4, 0x1

    int-to-byte v8, v8

    .line 169
    aput-byte v8, v6, v4

    move v4, v11

    goto :goto_9

    :cond_10
    :goto_b
    if-eqz v9, :cond_11

    return-object v6

    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 64
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid GZIP format"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method

.method private static readBits([BI)I
    .locals 4

    .line 185
    sget v0, Lcom/br/ipad/isc/io/GZip;->gzipBit:I

    if-nez v0, :cond_0

    sget v0, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    sput v0, Lcom/br/ipad/isc/io/GZip;->gzipByte:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/br/ipad/isc/io/GZip;->gzipByte:I

    shr-int v0, v1, v0

    .line 188
    :goto_0
    sget v1, Lcom/br/ipad/isc/io/GZip;->gzipBit:I

    rsub-int/lit8 v1, v1, 0x8

    :goto_1
    if-ge v1, p1, :cond_1

    .line 189
    sget v2, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    sput v2, Lcom/br/ipad/isc/io/GZip;->gzipByte:I

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 193
    :cond_1
    sget p0, Lcom/br/ipad/isc/io/GZip;->gzipBit:I

    add-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x7

    sput p0, Lcom/br/ipad/isc/io/GZip;->gzipBit:I

    const/4 p0, 0x1

    shl-int p1, p0, p1

    sub-int/2addr p1, p0

    and-int p0, v0, p1

    return p0
.end method

.method private static readCode([B[I)I
    .locals 5

    const/4 v0, 0x0

    .line 202
    aget v0, p1, v0

    :goto_0
    const v1, 0xffff

    if-ltz v0, :cond_2

    .line 205
    sget v2, Lcom/br/ipad/isc/io/GZip;->gzipBit:I

    if-nez v2, :cond_0

    .line 206
    sget v2, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/br/ipad/isc/io/GZip;->gzipIndex:I

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    sput v2, Lcom/br/ipad/isc/io/GZip;->gzipByte:I

    .line 208
    :cond_0
    sget v2, Lcom/br/ipad/isc/io/GZip;->gzipByte:I

    sget v3, Lcom/br/ipad/isc/io/GZip;->gzipBit:I

    const/4 v4, 0x1

    shl-int v3, v4, v3

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    shr-int/lit8 v0, v0, 0x10

    aget v0, p1, v0

    goto :goto_1

    :cond_1
    and-int/2addr v0, v1

    aget v0, p1, v0

    .line 211
    :goto_1
    sget v1, Lcom/br/ipad/isc/io/GZip;->gzipBit:I

    add-int/2addr v1, v4

    and-int/lit8 v1, v1, 0x7

    sput v1, Lcom/br/ipad/isc/io/GZip;->gzipBit:I

    goto :goto_0

    :cond_2
    and-int p0, v0, v1

    return p0
.end method
