.class public Lcom/zebra/sdk/printer/FontConverterZpl;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTteFontHeader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/16 v0, 0x45

    invoke-static {p0, p1, v0}, Lcom/zebra/sdk/util/internal/FontConverterHelper;->getFontHeader(Ljava/io/InputStream;Ljava/lang/String;C)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getTtfFontHeader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/16 v0, 0x54

    invoke-static {p0, p1, v0}, Lcom/zebra/sdk/util/internal/FontConverterHelper;->getFontHeader(Ljava/io/InputStream;Ljava/lang/String;C)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static saveAsTtePrinterFont(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    const-string v0, ".TTE"

    invoke-static {p0, p1, p2, v0}, Lcom/zebra/sdk/util/internal/FontConverterHelper;->saveFontAsPrinterFont(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveAsTtePrinterFont(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string p0, ".TTE"

    invoke-static {v0, p1, p2, p0}, Lcom/zebra/sdk/util/internal/FontConverterHelper;->saveFontAsPrinterFont(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static saveAsTtfPrinterFont(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    const-string v0, ".TTF"

    invoke-static {p0, p1, p2, v0}, Lcom/zebra/sdk/util/internal/FontConverterHelper;->saveFontAsPrinterFont(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveAsTtfPrinterFont(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p0, ".TTF"

    invoke-static {v1, p1, p2, p0}, Lcom/zebra/sdk/util/internal/FontConverterHelper;->saveFontAsPrinterFont(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    :goto_0
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    throw p0

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
