.class public Lcom/zebra/sdk/printer/PrinterUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertGraphic(Ljava/lang/String;Lcom/zebra/sdk/graphics/ZebraImageI;IILjava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getPrinterLanguageFromFileExtension(Ljava/lang/String;)Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v0

    sget-object v1, Lcom/zebra/sdk/printer/PrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilCpcl;

    invoke-direct {v0}, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilCpcl;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilZpl;

    invoke-direct {v0}, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilZpl;-><init>()V

    :goto_0
    move-object v1, v0

    move-object v3, p1

    check-cast v3, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/zebra/sdk/printer/internal/GraphicsConvertionUtil;->sendImageToStream(Ljava/lang/String;Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;IILjava/io/OutputStream;)V

    return-void

    :cond_1
    new-instance p0, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    const-string p1, "Parameter cannot be null"

    invoke-direct {p0, p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertGraphic(Ljava/lang/String;Lcom/zebra/sdk/graphics/ZebraImageI;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Lcom/zebra/sdk/printer/PrinterUtil;->convertGraphic(Ljava/lang/String;Lcom/zebra/sdk/graphics/ZebraImageI;IILjava/io/OutputStream;)V

    return-void
.end method

.method public static createBackup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0, p1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->createBackup(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw p1
.end method

.method public static createProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0, p1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->createProfile(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw p1
.end method

.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0, p1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->deleteFile(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw p1
.end method

.method public static deleteFileReportDeleted(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->retrieveFileNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p0, p1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->deleteFile(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->retrieveFileNames()[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    new-array p0, v2, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_2
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static getCurrentStatus(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)Lcom/zebra/sdk/printer/PrinterStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;

    invoke-direct {v0, p0, p1}, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/operations/internal/HostStatusOperation;->execute()Lcom/zebra/sdk/printer/PrinterStatus;

    move-result-object p0

    return-object p0
.end method

.method private static getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    invoke-static {p0}, Lcom/zebra/sdk/comm/internal/ConnectionBuilderInternal;->build(Ljava/lang/String;)Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->open()V

    invoke-static {p0}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getInstance(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object v0

    invoke-static {v0}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    new-instance p0, Lcom/zebra/sdk/printer/NotALinkOsPrinterException;

    invoke-direct {p0}, Lcom/zebra/sdk/printer/NotALinkOsPrinterException;-><init>()V

    throw p0
.end method

.method public static getObjectFromPrinter(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1, p0, p2}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getObjectFromPrinter(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw p0
.end method

.method public static getObjectFromPrinter(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0, p1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getObjectFromPrinter(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw p1
.end method

.method public static getObjectFromPrinterViaFtp(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1, p0, p2, p3}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getObjectFromPrinterViaFtp(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p1

    invoke-interface {p1}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw p0
.end method

.method public static getObjectFromPrinterViaFtp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0, p1, p2}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getObjectFromPrinterViaFtp(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw p1
.end method

.method public static getOdometerStatus(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total Print Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "odometer.total_print_length"

    invoke-static {v3, v1}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Head Clean Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "odometer.headclean"

    invoke-static {v3, v1}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Label Dot Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "odometer.label_dot_length"

    invoke-static {v3, v1}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Head New: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "odometer.headnew"

    invoke-static {v3, v1}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Latch Open Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "odometer.latch_open_count"

    invoke-static {v3, v1}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User Resettable Counter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "odometer.media_marker_count"

    invoke-static {v3, v1}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User Resettable Counter 1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "odometer.media_marker_count1"

    invoke-static {v3, v1}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User Resettable Counter 2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "odometer.media_marker_count2"

    invoke-static {v3, v1}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User Label Resettable Counter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "odometer.user_label_count"

    invoke-static {v3, v1}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User Label Resettable Counter 1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "odometer.user_label_count1"

    invoke-static {v3, v1}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User Label Resettable Counter 2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "odometer.user_label_count2"

    invoke-static {v3, v1}, Lcom/zebra/sdk/printer/SGD;->GET(Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw v0
.end method

.method public static getPortStatus(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/TcpPortStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getPortStatus()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw v0
.end method

.method private static getPrinterLanguageFromFileExtension(Ljava/lang/String;)Lcom/zebra/sdk/printer/PrinterLanguage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GRF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PNG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "PCX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/zebra/sdk/printer/PrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/PrinterLanguage;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/zebra/sdk/printer/PrinterLanguage;->ZPL:Lcom/zebra/sdk/printer/PrinterLanguage;

    return-object p0

    :cond_2
    new-instance p0, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    const-string v0, "Unsupported file type for graphics conversion"

    invoke-direct {p0, v0}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPrinterStatus(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getCurrentStatus()Lcom/zebra/sdk/printer/PrinterStatus;

    move-result-object v1

    new-instance v2, Lcom/zebra/sdk/printer/PrinterStatusMessages;

    invoke-direct {v2, v1}, Lcom/zebra/sdk/printer/PrinterStatusMessages;-><init>(Lcom/zebra/sdk/printer/PrinterStatus;)V

    invoke-virtual {v2}, Lcom/zebra/sdk/printer/PrinterStatusMessages;->getStatusMessage()[Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v1, Lcom/zebra/sdk/printer/PrinterStatus;->isReadyToPrint:Z

    if-eqz v3, :cond_0

    const-string v2, "Ready To Print"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Partial format is in progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/zebra/sdk/printer/PrinterStatus;->isPartialFormatInProgress:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Labels remaining in queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/zebra/sdk/printer/PrinterStatus;->numberOfFormatsInReceiveBuffer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Printing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/zebra/sdk/printer/PrinterStatus;->labelsRemainingInBatch:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " labels remaining in current batch"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_3
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public static getSettingsFromPrinter(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zebra/sdk/settings/Setting;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;,
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getAllSettings()Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw v0
.end method

.method public static listFiles(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->retrieveFileNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zebra/sdk/util/internal/ZPLUtilities;->filterFileList([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw p1
.end method

.method public static loadBackup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/zebra/sdk/printer/PrinterUtil;->loadBackup(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static loadBackup(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0, p1, p2}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->loadBackup(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw p1
.end method

.method public static loadProfile(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/printer/FileDeletionOption;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/zebra/sdk/printer/PrinterUtil;->loadProfile(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/printer/FileDeletionOption;Z)V

    return-void
.end method

.method public static loadProfile(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/printer/FileDeletionOption;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0, p1, p2, p3}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->loadProfile(Ljava/lang/String;Lcom/zebra/sdk/printer/FileDeletionOption;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw p1
.end method

.method public static printConfigLabel(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->printConfigurationLabel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw v0
.end method

.method public static printDirectoryLabel(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->printDirectoryLabel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw v0
.end method

.method public static printNetworkConfigLabel(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->printNetworkConfigurationLabel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw v0
.end method

.method public static quickStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getCurrentStatus()Lcom/zebra/sdk/printer/PrinterStatus;

    move-result-object v0

    new-instance v1, Lcom/zebra/sdk/printer/PrinterStatusMessages;

    invoke-direct {v1, v0}, Lcom/zebra/sdk/printer/PrinterStatusMessages;-><init>(Lcom/zebra/sdk/printer/PrinterStatus;)V

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/PrinterStatusMessages;->getStatusMessage()[Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v0, Lcom/zebra/sdk/printer/PrinterStatus;->isReadyToPrint:Z

    if-eqz v0, :cond_0

    const-string v0, "Ready To Print"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_2
    throw v0
.end method

.method public static resetNetwork(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->resetNetwork()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw v0
.end method

.method public static resetPrinter(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw v0
.end method

.method public static restoreNetworkDefaults(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->restoreNetworkDefaults()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw v0
.end method

.method public static restorePrinterDefaults(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->restoreDefaults()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw v0
.end method

.method public static sendContents(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF8"

    invoke-static {p0, p1, v0}, Lcom/zebra/sdk/printer/PrinterUtil;->sendContents(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static sendContents(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/comm/internal/ConnectionBuilderInternal;->build(Ljava/lang/String;)Lcom/zebra/sdk/comm/Connection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->open()V

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p2

    new-array p2, p2, [B

    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    invoke-interface {p0, p2}, Lcom/zebra/sdk/comm/Connection;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw p1
.end method

.method public static sendContents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF8"

    invoke-static {p0, p1, v0}, Lcom/zebra/sdk/printer/PrinterUtil;->sendContents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendContents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, v0}, Lcom/zebra/sdk/printer/PrinterUtil;->sendContents(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public static sendJSON(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/comm/internal/ConnectionBuilderInternal;->build(Ljava/lang/String;)Lcom/zebra/sdk/comm/Connection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->open()V

    invoke-static {p0}, Lcom/zebra/sdk/settings/internal/ConnectionUtil;->selectConnection(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p2

    new-array p2, p2, [B

    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    invoke-interface {p0, p2}, Lcom/zebra/sdk/comm/Connection;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw p1
.end method

.method public static setClock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0, p1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->setClock(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    throw p1
.end method

.method public static storeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/printer/NotALinkOsPrinterException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/zebra/sdk/printer/PrinterUtil;->getLinkOsPrinter(Ljava/lang/String;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_0

    :try_start_1
    invoke-interface {p0, p1, p2}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->storeFileOnPrinter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->storeFileOnPrinter(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    :cond_2
    throw p1
.end method

.method public static updateFirmware(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/printer/ZebraPrinterLanguageUnknownException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Lcom/zebra/sdk/printer/discovery/DiscoveryException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Lcom/zebra/sdk/comm/internal/ConnectionBuilderInternal;->build(Ljava/lang/String;)Lcom/zebra/sdk/comm/Connection;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->open()V

    invoke-static {p0}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getInstance(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object v0

    invoke-static {v0}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->createLinkOsPrinter(Lcom/zebra/sdk/printer/ZebraPrinter;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/zebra/sdk/printer/PrinterUtil$1;

    invoke-direct {v1}, Lcom/zebra/sdk/printer/PrinterUtil$1;-><init>()V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->updateFirmware(Ljava/lang/String;JLcom/zebra/sdk/printer/FirmwareUpdateHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->close()V

    throw p1
.end method
