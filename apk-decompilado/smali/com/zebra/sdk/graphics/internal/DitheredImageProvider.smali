.class public Lcom/zebra/sdk/graphics/internal/DitheredImageProvider;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertByteToGrayscale(I)I
    .locals 3

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    const/16 v2, 0xff

    and-int/2addr p0, v2

    mul-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v1, v1, 0x3b

    add-int/2addr v0, v1

    mul-int/lit8 p0, p0, 0xb

    add-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x64

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    return v2
.end method

.method protected static getDitheredImage(IILcom/zebra/sdk/graphics/internal/ZebraImageInternal;Ljava/io/OutputStream;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->getRow(I)[I

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->getRow(I)[I

    move-result-object v6

    div-int/lit8 v7, v0, 0x8

    rem-int/lit8 v8, v0, 0x8

    if-nez v8, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    const/4 v9, 0x1

    :goto_0
    add-int/2addr v7, v9

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    if-ne v8, v9, :cond_1

    const/4 v8, 0x0

    :cond_1
    new-array v10, v7, [B

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v0, :cond_2

    aget v12, v4, v11

    invoke-static {v12}, Lcom/zebra/sdk/graphics/internal/DitheredImageProvider;->convertByteToGrayscale(I)I

    move-result v12

    aput v12, v4, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v11, v1, :cond_c

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v7, :cond_3

    aput-byte v3, v10, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    const/16 v15, 0xff

    if-ge v13, v0, :cond_b

    rem-int/lit8 v14, v13, 0x8

    if-nez v14, :cond_4

    const/16 v12, -0x80

    :cond_4
    aget v14, v4, v13

    div-int/lit8 v16, v13, 0x8

    const/16 v3, 0x80

    if-lt v14, v3, :cond_5

    const/4 v3, -0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    aget-byte v17, v10, v16

    and-int v18, v12, v3

    or-int v9, v17, v18

    int-to-byte v9, v9

    aput-byte v9, v10, v16

    and-int/2addr v3, v15

    sub-int/2addr v14, v3

    add-int/lit8 v3, v0, -0x1

    if-ge v13, v3, :cond_6

    add-int/lit8 v9, v13, 0x1

    aget v15, v4, v9

    mul-int/lit8 v17, v14, 0x7

    div-int/lit8 v17, v17, 0x10

    add-int v15, v15, v17

    aput v15, v4, v9

    :cond_6
    if-lez v13, :cond_7

    add-int/lit8 v9, v1, -0x1

    if-ge v11, v9, :cond_7

    add-int/lit8 v9, v13, -0x1

    aget v15, v6, v9

    mul-int/lit8 v17, v14, 0x3

    div-int/lit8 v17, v17, 0x10

    add-int v15, v15, v17

    aput v15, v6, v9

    :cond_7
    add-int/lit8 v9, v1, -0x1

    if-ge v11, v9, :cond_9

    if-nez v13, :cond_8

    aget v15, v6, v13

    invoke-static {v15}, Lcom/zebra/sdk/graphics/internal/DitheredImageProvider;->convertByteToGrayscale(I)I

    move-result v15

    aput v15, v6, v13

    :cond_8
    aget v15, v6, v13

    mul-int/lit8 v17, v14, 0x5

    div-int/lit8 v17, v17, 0x10

    add-int v15, v15, v17

    aput v15, v6, v13

    :cond_9
    if-ge v11, v9, :cond_a

    if-ge v13, v3, :cond_a

    add-int/lit8 v3, v13, 0x1

    aget v9, v6, v3

    invoke-static {v9}, Lcom/zebra/sdk/graphics/internal/DitheredImageProvider;->convertByteToGrayscale(I)I

    move-result v9

    aput v9, v6, v3

    aget v9, v6, v3

    mul-int/lit8 v14, v14, 0x1

    div-int/lit8 v14, v14, 0x10

    add-int/2addr v9, v14

    aput v9, v6, v3

    :cond_a
    and-int/lit16 v3, v12, 0xff

    ushr-int/2addr v3, v5

    int-to-byte v12, v3

    add-int/lit8 v13, v13, 0x1

    move/from16 v14, v16

    const/4 v3, 0x0

    const/16 v9, 0x8

    goto :goto_4

    :cond_b
    aget-byte v3, v10, v14

    const/16 v4, 0x8

    rsub-int/lit8 v9, v8, 0x8

    ushr-int v9, v15, v9

    or-int/2addr v3, v9

    int-to-byte v3, v3

    aput-byte v3, v10, v14

    move-object/from16 v3, p3

    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v9, v11, 0x2

    invoke-interface {v2, v9}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->getRow(I)[I

    move-result-object v9

    add-int/lit8 v11, v11, 0x1

    move-object v4, v6

    move-object v6, v9

    const/4 v3, 0x0

    const/16 v9, 0x8

    goto/16 :goto_2

    :cond_c
    return-void
.end method

.method public static getDitheredImage(Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->getWidth()I

    move-result v0

    invoke-interface {p0}, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p0, p1}, Lcom/zebra/sdk/graphics/internal/DitheredImageProvider;->getDitheredImage(IILcom/zebra/sdk/graphics/internal/ZebraImageInternal;Ljava/io/OutputStream;)V

    return-void
.end method
