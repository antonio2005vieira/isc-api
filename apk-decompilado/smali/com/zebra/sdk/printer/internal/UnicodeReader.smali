.class public Lcom/zebra/sdk/printer/internal/UnicodeReader;
.super Ljava/io/Reader;


# static fields
.field private static final BOM_SIZE:I = 0x4


# instance fields
.field defaultEnc:Ljava/lang/String;

.field internalIn:Ljava/io/PushbackInputStream;

.field internalIn2:Ljava/io/InputStreamReader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/UnicodeReader;->internalIn:Ljava/io/PushbackInputStream;

    iput-object p2, p0, Lcom/zebra/sdk/printer/internal/UnicodeReader;->defaultEnc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/UnicodeReader;->init()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    return-void
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/UnicodeReader;->defaultEnc:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/UnicodeReader;->internalIn:Ljava/io/PushbackInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    aget-byte v2, v1, v3

    const/4 v4, 0x3

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v2, :cond_1

    aget-byte v2, v1, v8

    if-nez v2, :cond_1

    aget-byte v2, v1, v7

    if-ne v2, v5, :cond_1

    aget-byte v2, v1, v4

    if-ne v2, v6, :cond_1

    add-int/lit8 v2, v0, -0x4

    const-string v3, "UTF-32BE"

    goto :goto_0

    :cond_1
    aget-byte v2, v1, v3

    if-ne v2, v6, :cond_2

    aget-byte v2, v1, v8

    if-ne v2, v5, :cond_2

    aget-byte v2, v1, v7

    if-nez v2, :cond_2

    aget-byte v2, v1, v4

    if-nez v2, :cond_2

    add-int/lit8 v2, v0, -0x4

    const-string v3, "UTF-32LE"

    goto :goto_0

    :cond_2
    aget-byte v2, v1, v3

    const/16 v4, -0x11

    if-ne v2, v4, :cond_3

    aget-byte v2, v1, v8

    const/16 v4, -0x45

    if-ne v2, v4, :cond_3

    aget-byte v2, v1, v7

    const/16 v4, -0x41

    if-ne v2, v4, :cond_3

    add-int/lit8 v2, v0, -0x3

    const-string v3, "UTF-8"

    goto :goto_0

    :cond_3
    aget-byte v2, v1, v3

    if-ne v2, v5, :cond_4

    aget-byte v2, v1, v8

    if-ne v2, v6, :cond_4

    add-int/lit8 v2, v0, -0x2

    const-string v3, "UTF-16BE"

    goto :goto_0

    :cond_4
    aget-byte v2, v1, v3

    if-ne v2, v6, :cond_5

    aget-byte v2, v1, v8

    if-ne v2, v5, :cond_5

    add-int/lit8 v2, v0, -0x2

    const-string v3, "UTF-16LE"

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/zebra/sdk/printer/internal/UnicodeReader;->defaultEnc:Ljava/lang/String;

    move v2, v0

    :goto_0
    if-lez v2, :cond_6

    iget-object v4, p0, Lcom/zebra/sdk/printer/internal/UnicodeReader;->internalIn:Ljava/io/PushbackInputStream;

    sub-int/2addr v0, v2

    invoke-virtual {v4, v1, v0, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    :cond_6
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/UnicodeReader;->internalIn:Ljava/io/PushbackInputStream;

    if-nez v3, :cond_7

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_7
    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_1
    iput-object v0, p0, Lcom/zebra/sdk/printer/internal/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    return-void
.end method

.method public read([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/UnicodeReader;->init()V

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result p1

    return p1
.end method
