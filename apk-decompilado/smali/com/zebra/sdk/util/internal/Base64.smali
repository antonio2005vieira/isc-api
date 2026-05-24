.class public Lcom/zebra/sdk/util/internal/Base64;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zebra/sdk/util/internal/Base64$OutputStream;,
        Lcom/zebra/sdk/util/internal/Base64$InputStream;
    }
.end annotation


# static fields
.field private static final ALPHABET:[B

.field private static final DECODABET:[B

.field public static final DECODE:I = 0x0

.field public static final DONT_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _NATIVE_ALPHABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zebra/sdk/util/internal/Base64;->_NATIVE_ALPHABET:[B

    :try_start_0
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/zebra/sdk/util/internal/Base64;->_NATIVE_ALPHABET:[B

    :goto_0
    sput-object v0, Lcom/zebra/sdk/util/internal/Base64;->ALPHABET:[B

    const/16 v0, 0x7f

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zebra/sdk/util/internal/Base64;->DECODABET:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([BII[BI)[B
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/zebra/sdk/util/internal/Base64;->encode3to4([BII[BI)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()[B
    .locals 1

    sget-object v0, Lcom/zebra/sdk/util/internal/Base64;->DECODABET:[B

    return-object v0
.end method

.method static synthetic access$200([BI[BI)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/zebra/sdk/util/internal/Base64;->decode4to3([BI[BI)I

    move-result p0

    return p0
.end method

.method static synthetic access$300([B[BI)[B
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/zebra/sdk/util/internal/Base64;->encode3to4([B[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zebra/sdk/util/internal/Base64;->decode(Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/lang/String;Z)[B
    .locals 5

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    :goto_0
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/zebra/sdk/util/internal/Base64;->decode([BII)[B

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_2

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const v2, 0x8b1f

    if-eq v2, v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    const/16 p1, 0x200

    new-array p1, p1, [B

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v4, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;

    invoke-direct {v4, v3}, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    invoke-virtual {v4, p1}, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :goto_2
    :try_start_6
    invoke-virtual {v4}, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_7

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v4, v0

    goto :goto_3

    :catch_3
    move-object v4, v0

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v3, v0

    move-object v4, v3

    :goto_3
    move-object v0, v2

    goto :goto_5

    :catch_4
    move-object v3, v0

    move-object v4, v3

    :catch_5
    :goto_4
    move-object v0, v2

    goto :goto_6

    :catchall_3
    move-exception p0

    move-object v3, v0

    move-object v4, v3

    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    :try_start_9
    invoke-virtual {v4}, Lcom/zebra/sdk/util/internal/CustomGZIPInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :try_start_a
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :catch_8
    throw p0

    :catch_9
    move-object v3, v0

    move-object v4, v3

    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_2

    :catch_a
    :cond_2
    :goto_7
    return-object p0
.end method

.method public static decode([BII)[B
    .locals 9

    mul-int/lit8 v0, p2, 0x3

    const/4 v1, 0x4

    div-int/2addr v0, v1

    new-array v0, v0, [B

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    add-int v6, p1, p2

    if-ge v3, v6, :cond_4

    aget-byte v6, p0, v3

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    sget-object v7, Lcom/zebra/sdk/util/internal/Base64;->DECODABET:[B

    aget-byte v7, v7, v6

    const/4 v8, -0x5

    if-lt v7, v8, :cond_3

    const/4 v8, -0x1

    if-lt v7, v8, :cond_2

    add-int/lit8 v7, v4, 0x1

    aput-byte v6, v1, v4

    const/4 v4, 0x3

    if-le v7, v4, :cond_1

    invoke-static {v1, v2, v0, v5}, Lcom/zebra/sdk/util/internal/Base64;->decode4to3([BI[BI)I

    move-result v4

    add-int/2addr v5, v4

    const/16 v4, 0x3d

    if-ne v6, v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move v4, v7

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    :goto_2
    new-array p0, v5, [B

    invoke-static {v0, v2, p0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private static decode4to3([BI[BI)I
    .locals 6

    add-int/lit8 v0, p1, 0x2

    aget-byte v1, p0, v0

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/zebra/sdk/util/internal/Base64;->DECODABET:[B

    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v1

    ushr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    return v3

    :cond_0
    add-int/lit8 v1, p1, 0x3

    aget-byte v4, p0, v1

    const/4 v5, 0x2

    if-ne v4, v2, :cond_1

    sget-object v1, Lcom/zebra/sdk/util/internal/Base64;->DECODABET:[B

    aget-byte v2, p0, p1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    add-int/2addr p1, v3

    aget-byte p1, p0, p1

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p1, v2

    aget-byte p0, p0, v0

    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x6

    or-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    add-int/2addr p3, v3

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    return v5

    :cond_1
    :try_start_0
    sget-object v2, Lcom/zebra/sdk/util/internal/Base64;->DECODABET:[B

    aget-byte v4, p0, p1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    sget-object v4, Lcom/zebra/sdk/util/internal/Base64;->DECODABET:[B

    add-int/2addr p1, v3

    aget-byte p1, p0, p1

    aget-byte p1, v4, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p1, v2

    sget-object v2, Lcom/zebra/sdk/util/internal/Base64;->DECODABET:[B

    aget-byte v0, p0, v0

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr p1, v0

    sget-object v0, Lcom/zebra/sdk/util/internal/Base64;->DECODABET:[B

    aget-byte p0, p0, v1

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/2addr p3, v5

    int-to-byte p0, p0

    aput-byte p0, p2, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x3

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/32 v4, 0x7fffffff

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcom/zebra/sdk/util/internal/Base64$InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    new-array p0, p0, [B

    new-instance v2, Lcom/zebra/sdk/util/internal/Base64$InputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    invoke-direct {v2, v3, v1}, Lcom/zebra/sdk/util/internal/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x1000

    :try_start_3
    invoke-virtual {v2, p0, v3, v4}, Lcom/zebra/sdk/util/internal/Base64$InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_1

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    new-array v0, v3, [B

    invoke-static {p0, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Lcom/zebra/sdk/util/internal/Base64$InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-object p0, v0

    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_5
    invoke-virtual {v0}, Lcom/zebra/sdk/util/internal/Base64$InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    throw p0

    :catch_3
    move-object p0, v0

    :goto_2
    :try_start_6
    invoke-virtual {v0}, Lcom/zebra/sdk/util/internal/Base64$InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    move-object v0, p0

    :catch_5
    :goto_3
    return-object v0
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/zebra/sdk/util/internal/Base64$OutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p1, "UTF-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v2}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    throw p0

    :catch_2
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :goto_2
    return v0
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    invoke-static {p0}, Lcom/zebra/sdk/util/internal/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :try_start_4
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_4

    :catch_3
    move-exception v2

    move-object p0, v0

    goto :goto_1

    :catch_4
    move-exception v2

    move-object p0, v0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_4

    :catch_5
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catch_7
    :goto_3
    return-object v0

    :catchall_2
    move-exception v0

    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :catch_8
    :try_start_7
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    :catch_9
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private static encode3to4([BII[BI)[B
    .locals 4

    const/4 v0, 0x0

    if-lez p2, :cond_0

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v1, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_2

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 v0, p0, 0x18

    :cond_2
    or-int p0, v1, v0

    const/16 p1, 0x3d

    const/4 v0, 0x3

    if-eq p2, v2, :cond_5

    if-eq p2, v3, :cond_4

    if-eq p2, v0, :cond_3

    return-object p3

    :cond_3
    sget-object p1, Lcom/zebra/sdk/util/internal/Base64;->ALPHABET:[B

    ushr-int/lit8 p2, p0, 0x12

    aget-byte p2, p1, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, p1, v1

    aput-byte v1, p3, p2

    add-int/lit8 p2, p4, 0x2

    ushr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, p1, v1

    aput-byte v1, p3, p2

    add-int/2addr p4, v0

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, p1, p0

    aput-byte p0, p3, p4

    return-object p3

    :cond_4
    sget-object p2, Lcom/zebra/sdk/util/internal/Base64;->ALPHABET:[B

    ushr-int/lit8 v1, p0, 0x12

    aget-byte v1, p2, v1

    aput-byte v1, p3, p4

    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, p2, p0

    aput-byte p0, p3, v1

    add-int/2addr p4, v0

    aput-byte p1, p3, p4

    return-object p3

    :cond_5
    sget-object p2, Lcom/zebra/sdk/util/internal/Base64;->ALPHABET:[B

    ushr-int/lit8 v1, p0, 0x12

    aget-byte v1, p2, v1

    aput-byte v1, p3, p4

    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, p2, p0

    aput-byte p0, p3, v1

    add-int/lit8 p0, p4, 0x2

    aput-byte p1, p3, p0

    add-int/2addr p4, v0

    aput-byte p1, p3, p4

    return-object p3
.end method

.method private static encode3to4([B[BI)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p0, v0}, Lcom/zebra/sdk/util/internal/Base64;->encode3to4([BII[BI)[B

    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/zebra/sdk/util/internal/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/zebra/sdk/util/internal/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/zebra/sdk/util/internal/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .locals 11

    and-int/lit8 v0, p3, 0x8

    const/4 v1, 0x2

    and-int/2addr p3, v1

    const-string v2, "UTF-8"

    const/4 v3, 0x1

    if-ne p3, v1, :cond_0

    const/4 p3, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v4, Lcom/zebra/sdk/util/internal/Base64$OutputStream;

    or-int/2addr v0, v3

    invoke-direct {v4, v1, v0}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :try_start_5
    invoke-virtual {v4}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :try_start_7
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_3

    return-object p0

    :catch_3
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    return-object p0

    :catch_4
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_5
    move-exception p0

    move-object v0, p3

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v4, p3

    goto :goto_1

    :catch_6
    move-exception p0

    move-object v0, p3

    move-object v4, v0

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object v1, p3

    move-object v4, v1

    goto :goto_1

    :catch_7
    move-exception p0

    move-object v0, p3

    move-object v1, v0

    move-object v4, v1

    :goto_0
    :try_start_8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :try_start_a
    invoke-virtual {v4}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    :catch_9
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    :catch_a
    return-object p3

    :catchall_3
    move-exception p0

    move-object p3, v0

    :goto_1
    :try_start_c
    invoke-virtual {p3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    :catch_b
    :try_start_d
    invoke-virtual {v4}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    :catch_c
    :try_start_e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    :catch_d
    throw p0

    :cond_0
    const/4 p3, 0x0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    mul-int/lit8 v0, p2, 0x4

    const/4 v1, 0x3

    div-int/2addr v0, v1

    rem-int/lit8 v4, p2, 0x3

    const/4 v5, 0x4

    if-lez v4, :cond_2

    const/4 v4, 0x4

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    add-int/2addr v4, v0

    const/16 v6, 0x4c

    if-eqz v3, :cond_3

    div-int/2addr v0, v6

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    add-int/2addr v4, v0

    new-array v0, v4, [B

    add-int/lit8 v4, p2, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_5
    if-ge v7, v4, :cond_5

    add-int v10, v7, p1

    invoke-static {p0, v10, v1, v0, v8}, Lcom/zebra/sdk/util/internal/Base64;->encode3to4([BII[BI)[B

    add-int/2addr v9, v5

    if-eqz v3, :cond_4

    if-ne v9, v6, :cond_4

    add-int/lit8 v9, v8, 0x4

    const/16 v10, 0xa

    aput-byte v10, v0, v9

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    :cond_4
    add-int/lit8 v7, v7, 0x3

    add-int/2addr v8, v5

    goto :goto_5

    :cond_5
    if-ge v7, p2, :cond_6

    add-int/2addr p1, v7

    sub-int/2addr p2, v7

    invoke-static {p0, p1, p2, v0, v8}, Lcom/zebra/sdk/util/internal/Base64;->encode3to4([BII[BI)[B

    add-int/lit8 v8, v8, 0x4

    :cond_6
    :try_start_f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, p3, v8, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_f} :catch_e

    return-object p0

    :catch_e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, p3, v8}, Ljava/lang/String;-><init>([BII)V

    return-object p0
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    long-to-double v2, v2

    const-wide v4, 0x3ff6666666666666L    # 1.4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int p0, v2

    :try_start_1
    new-array p0, p0, [B

    new-instance v2, Lcom/zebra/sdk/util/internal/Base64$InputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x1

    invoke-direct {v2, v3, v1}, Lcom/zebra/sdk/util/internal/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x1000

    :try_start_2
    invoke-virtual {v2, p0, v3, v4}, Lcom/zebra/sdk/util/internal/Base64$InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_0

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, p0, v1, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Lcom/zebra/sdk/util/internal/Base64$InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-object v0, v4

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Lcom/zebra/sdk/util/internal/Base64$InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    throw p0

    :catch_2
    move-object v2, v0

    :catch_3
    :try_start_5
    invoke-virtual {v2}, Lcom/zebra/sdk/util/internal/Base64$InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :goto_2
    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zebra/sdk/util/internal/Base64;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .locals 4

    and-int/lit8 v0, p1, 0x2

    and-int/lit8 p1, p1, 0x8

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v3, Lcom/zebra/sdk/util/internal/Base64$OutputStream;

    or-int/lit8 p1, p1, 0x1

    invoke-direct {v3, v2, p1}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    :try_start_2
    new-instance p1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :cond_0
    :try_start_4
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object p1, v1

    :goto_0
    :try_start_5
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    :try_start_7
    invoke-virtual {p1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    :try_start_a
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_5

    return-object p0

    :catch_5
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    return-object p0

    :catch_6
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object p1, v1

    goto :goto_2

    :catch_7
    move-exception p0

    move-object p1, v1

    move-object v0, p1

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object p1, v1

    move-object v3, p1

    goto :goto_2

    :catch_8
    move-exception p0

    move-object p1, v1

    move-object v0, p1

    move-object v3, v0

    goto :goto_1

    :catchall_3
    move-exception p0

    move-object p1, v1

    move-object v2, p1

    move-object v3, v2

    goto :goto_2

    :catch_9
    move-exception p0

    move-object p1, v1

    move-object v0, p1

    move-object v2, v0

    move-object v3, v2

    :goto_1
    :try_start_b
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    :catch_a
    :try_start_d
    invoke-virtual {p1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    :catch_b
    :try_start_e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    :catch_c
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    :catch_d
    return-object v1

    :catchall_4
    move-exception p0

    move-object v1, v0

    :goto_2
    :try_start_10
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    :catch_e
    :try_start_11
    invoke-virtual {p1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    :catch_f
    :try_start_12
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    :catch_10
    :try_start_13
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11

    :catch_11
    throw p0
.end method

.method public static encodeToFile([BLjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/zebra/sdk/util/internal/Base64$OutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, p0}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    throw p0

    :catch_2
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v1}, Lcom/zebra/sdk/util/internal/Base64$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :goto_2
    return v0
.end method
