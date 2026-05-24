.class public Lcom/zebra/sdk/printer/internal/FileUtilCpcl;
.super Lcom/zebra/sdk/printer/internal/FileUtilA;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zebra/sdk/printer/internal/FileUtilA;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    return-void
.end method


# virtual methods
.method public retrieveFileNames()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/FileUtilCpcl;->retrieveFilePropertiesFromPrinter()Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->getFileNamesFromProperties()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public retrieveFileNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/FileUtilCpcl;->retrieveFilePropertiesFromPrinter()Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->filterByExtension([Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->getFileNamesFromProperties()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public retrieveObjectsProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterObjectProperties;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/internal/FileUtilCpcl;->retrieveFilePropertiesFromPrinter()Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->getObjectsProperties()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
