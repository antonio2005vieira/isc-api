.class public Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;
.super Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion<",
        "Ljava/util/List<",
        "Lcom/zebra/sdk/printer/PrinterObjectProperties;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x74f0284890b57a8bL


# instance fields
.field private final driveTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zebra/sdk/printer/DriveType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zebra/sdk/comm/Connection;",
            "Lcom/zebra/sdk/printer/PrinterLanguage;",
            "Lcom/zebra/sdk/printer/LinkOsInformation;",
            "Ljava/util/Set<",
            "Lcom/zebra/sdk/printer/DriveType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/zebra/sdk/printer/operations/internal/PrinterOperationCaresAboutLinkOsVersion;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    iput-object p4, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->driveTypes:Ljava/util/Set;

    return-void
.end method

.method private isOkToProceed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->isLinkOs2_5_OrHigher()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    instance-of v0, v0, Lcom/zebra/sdk/comm/StatusConnection;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    sget-object v1, Lcom/zebra/sdk/printer/PrinterLanguage;->LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Cannot retrieve object listing when in line print mode on this version of firmware"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Cannot retrieve object listing over the status channel on this version of firmware"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private retrieveObjectListing()Ljava/util/List;
    .locals 4
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
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->driveTypes:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->driveTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;

    iget-object v1, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    iget-object v2, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    iget-object v3, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->linkOsInformation:Lcom/zebra/sdk/printer/LinkOsInformation;

    invoke-direct {v0, v1, v2, v3}, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;-><init>(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/printer/LinkOsInformation;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/operations/internal/StorageInfoGrabber;->execute()Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->shouldRetrieveViaFileListing()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/zebra/sdk/printer/internal/FileUtilZpl;

    iget-object v2, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {v1, v2}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iget-object v2, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->driveTypes:Ljava/util/Set;

    iget-object v3, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-virtual {v1, v0, v2, v3}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->retrieveObjectsPropertiesWithCrc32(Ljava/util/List;Ljava/util/Set;Lcom/zebra/sdk/printer/PrinterLanguage;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->isLinkOs2_5_OrHigher()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/zebra/sdk/printer/internal/FileUtilZpl;

    iget-object v2, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {v1, v2}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iget-object v2, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->driveTypes:Ljava/util/Set;

    iget-object v3, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-virtual {v1, v0, v2, v3}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->retrieveObjectsPropertiesWithCrc32(Ljava/util/List;Ljava/util/Set;Lcom/zebra/sdk/printer/PrinterLanguage;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v1, Lcom/zebra/sdk/printer/internal/FileUtilZpl;

    iget-object v2, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    invoke-direct {v1, v2}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;-><init>(Lcom/zebra/sdk/comm/Connection;)V

    iget-object v2, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->driveTypes:Ljava/util/Set;

    invoke-virtual {v1, v0, v2}, Lcom/zebra/sdk/printer/internal/FileUtilZpl;->retrieveObjectsProperties(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private shouldRetrieveViaFileListing()Z
    .locals 2

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->isLinkOs2_5_OrHigher()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->printerLanguage:Lcom/zebra/sdk/printer/PrinterLanguage;

    sget-object v1, Lcom/zebra/sdk/printer/PrinterLanguage;->LINE_PRINT:Lcom/zebra/sdk/printer/PrinterLanguage;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->connection:Lcom/zebra/sdk/comm/Connection;

    instance-of v0, v0, Lcom/zebra/sdk/comm/StatusConnection;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute()Ljava/util/List;
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
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->selectProperChannel()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->isOkToProceed()V

    invoke-direct {p0}, Lcom/zebra/sdk/printer/operations/internal/ObjectsListingOperation;->retrieveObjectListing()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
