.class public Lcom/br/ipad/isc/util/Criptografia;
.super Ljava/lang/Object;
.source "Criptografia.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 21

    .line 116
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 118
    array-length v1, v0

    add-int/lit8 v1, v1, 0x8

    const/4 v2, 0x6

    shr-int/2addr v1, v2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/16 v4, 0x10

    mul-int/lit8 v1, v1, 0x10

    new-array v5, v1, [I

    const/4 v7, 0x0

    .line 122
    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_0

    shr-int/lit8 v8, v7, 0x2

    .line 124
    aget v9, v5, v8

    aget-byte v10, v0, v7

    rem-int/lit8 v11, v7, 0x4

    mul-int/lit8 v11, v11, 0x8

    rsub-int/lit8 v11, v11, 0x18

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    aput v9, v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    shr-int/lit8 v8, v7, 0x2

    .line 128
    aget v9, v5, v8

    const/16 v10, 0x80

    const/4 v11, 0x4

    rem-int/2addr v7, v11

    mul-int/lit8 v7, v7, 0x8

    rsub-int/lit8 v7, v7, 0x18

    shl-int v7, v10, v7

    or-int/2addr v7, v9

    aput v7, v5, v8

    add-int/lit8 v7, v1, -0x1

    .line 130
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    aput v0, v5, v7

    const/16 v0, 0x50

    new-array v7, v0, [I

    const v8, 0x67452301

    const v9, -0x10325477

    const v10, -0x67452302

    const v12, 0x10325476

    const v13, -0x3c2d1e10

    const/4 v14, 0x0

    :goto_1
    const/4 v11, 0x5

    if-ge v14, v1, :cond_6

    move v2, v8

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v12

    move/from16 v18, v13

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_5

    if-ge v6, v4, :cond_1

    add-int v19, v14, v6

    .line 160
    aget v19, v5, v19

    goto :goto_3

    :cond_1
    add-int/lit8 v19, v6, -0x3

    aget v19, v7, v19

    add-int/lit8 v20, v6, -0x8

    aget v20, v7, v20

    xor-int v19, v19, v20

    add-int/lit8 v20, v6, -0xe

    aget v20, v7, v20

    xor-int v19, v19, v20

    add-int/lit8 v20, v6, -0x10

    aget v20, v7, v20

    xor-int v0, v19, v20

    .line 162
    invoke-static {v0, v3}, Lcom/br/ipad/isc/util/Criptografia;->rol(II)I

    move-result v19

    :goto_3
    aput v19, v7, v6

    .line 164
    invoke-static {v2, v11}, Lcom/br/ipad/isc/util/Criptografia;->rol(II)I

    move-result v0

    add-int v0, v0, v18

    aget v18, v7, v6

    add-int v0, v0, v18

    const/16 v4, 0x14

    if-ge v6, v4, :cond_2

    const v4, 0x5a827999

    and-int v18, v15, v16

    xor-int/lit8 v20, v15, -0x1

    and-int v20, v20, v17

    :goto_4
    or-int v18, v18, v20

    :goto_5
    add-int v18, v18, v4

    goto :goto_7

    :cond_2
    const/16 v4, 0x28

    if-ge v6, v4, :cond_3

    const v4, 0x6ed9eba1

    :goto_6
    xor-int v18, v15, v16

    xor-int v18, v18, v17

    goto :goto_5

    :cond_3
    const/16 v4, 0x3c

    if-ge v6, v4, :cond_4

    const v4, -0x70e44324

    and-int v18, v15, v16

    and-int v20, v15, v17

    or-int v18, v18, v20

    and-int v20, v16, v17

    goto :goto_4

    :cond_4
    const v4, -0x359d3e2a    # -3715189.5f

    goto :goto_6

    :goto_7
    add-int v0, v0, v18

    const/16 v4, 0x1e

    .line 178
    invoke-static {v15, v4}, Lcom/br/ipad/isc/util/Criptografia;->rol(II)I

    move-result v15

    add-int/lit8 v6, v6, 0x1

    move/from16 v18, v17

    const/16 v4, 0x10

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v2

    move v2, v0

    const/16 v0, 0x50

    goto :goto_2

    :cond_5
    add-int/2addr v8, v2

    add-int/2addr v9, v15

    add-int v10, v16, v10

    add-int v12, v17, v12

    add-int v13, v18, v13

    add-int/lit8 v14, v14, 0x10

    const/16 v0, 0x50

    const/4 v2, 0x6

    const/16 v4, 0x10

    const/4 v11, 0x4

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v8, v0, v1

    aput v9, v0, v3

    const/4 v2, 0x2

    aput v10, v0, v2

    const/4 v3, 0x3

    aput v12, v0, v3

    const/4 v4, 0x4

    aput v13, v0, v4

    aput v1, v0, v11

    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 202
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x1c

    new-array v6, v5, [B

    :goto_8
    const/16 v7, 0x1b

    if-ge v1, v7, :cond_9

    mul-int/lit8 v7, v1, 0x6

    shr-int/lit8 v8, v7, 0x5

    and-int/lit8 v7, v7, 0x1f

    const/16 v9, 0x1a

    if-gt v7, v9, :cond_7

    .line 216
    aget v8, v0, v8

    rsub-int/lit8 v7, v7, 0x1a

    shr-int v7, v8, v7

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v4, v7

    aput-byte v7, v6, v1

    const/16 v9, 0x1e

    :goto_9
    const/4 v10, 0x4

    goto :goto_a

    :cond_7
    if-ne v7, v5, :cond_8

    .line 220
    aget v7, v0, v8

    and-int/lit8 v7, v7, 0xf

    shl-int/2addr v7, v2

    add-int/lit8 v8, v8, 0x1

    aget v8, v0, v8

    const/16 v9, 0x1e

    shr-int/2addr v8, v9

    and-int/2addr v8, v3

    or-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v4, v7

    aput-byte v7, v6, v1

    goto :goto_9

    :cond_8
    const/16 v9, 0x1e

    .line 226
    aget v7, v0, v8

    and-int/2addr v7, v3

    const/4 v10, 0x4

    shl-int/2addr v7, v10

    add-int/lit8 v8, v8, 0x1

    aget v8, v0, v8

    shr-int/2addr v8, v5

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v4, v7

    aput-byte v7, v6, v1

    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    const/16 v0, 0x3d

    aput-byte v0, v6, v7

    .line 236
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static rol(II)I
    .locals 1

    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method
