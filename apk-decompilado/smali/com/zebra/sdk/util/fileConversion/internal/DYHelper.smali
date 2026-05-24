.class public Lcom/zebra/sdk/util/fileConversion/internal/DYHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateZebraHeader(II)[I
    .locals 1

    mul-int/lit8 v0, p0, 0x8

    div-int/2addr p1, p0

    invoke-static {v0, p1}, Lcom/zebra/sdk/graphics/internal/Ditherer;->getZebraSpecificPngHeader(II)[I

    move-result-object p0

    return-object p0
.end method

.method public static calculateZebraHeader([I)[I
    .locals 5

    invoke-static {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DYHelper;->isPcPng([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    aget v0, p0, v0

    const/16 v1, 0x11

    aget v1, p0, v1

    const/16 v2, 0x12

    aget v2, p0, v2

    const/16 v3, 0x13

    aget v3, p0, v3

    invoke-static {v0, v1, v2, v3}, Lcom/zebra/sdk/util/fileConversion/internal/DYHelper;->getIntFromBytes(IIII)I

    move-result v0

    const/16 v1, 0x14

    aget v1, p0, v1

    const/16 v2, 0x15

    aget v2, p0, v2

    const/16 v3, 0x16

    aget v3, p0, v3

    const/16 v4, 0x17

    aget p0, p0, v4

    invoke-static {v1, v2, v3, p0}, Lcom/zebra/sdk/util/fileConversion/internal/DYHelper;->getIntFromBytes(IIII)I

    move-result p0

    invoke-static {v0, p0}, Lcom/zebra/sdk/graphics/internal/Ditherer;->getZebraSpecificPngHeader(II)[I

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static calculateZebraHeader([III)[I
    .locals 0

    invoke-static {p0}, Lcom/zebra/sdk/util/fileConversion/internal/DYHelper;->calculateZebraHeader([I)[I

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lcom/zebra/sdk/util/fileConversion/internal/DYHelper;->calculateZebraHeader(II)[I

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static getIntFromBytes(IIII)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p3, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method private static isPcPng([I)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v0, v3, :cond_0

    aget v0, p0, v2

    const/16 v3, 0x89

    if-ne v0, v3, :cond_0

    aget v0, p0, v1

    const/16 v3, 0x50

    if-ne v0, v3, :cond_0

    const/4 v0, 0x2

    aget v0, p0, v0

    const/16 v3, 0x4e

    if-ne v0, v3, :cond_0

    const/4 v0, 0x3

    aget p0, p0, v0

    const/16 v0, 0x47

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
