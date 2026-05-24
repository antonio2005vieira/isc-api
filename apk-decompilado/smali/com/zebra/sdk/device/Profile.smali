.class public Lcom/zebra/sdk/device/Profile;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/device/Device;
.implements Lcom/zebra/sdk/device/FileUtil;
.implements Lcom/zebra/sdk/printer/FontUtil;
.implements Lcom/zebra/sdk/printer/AlertProvider;
.implements Lcom/zebra/sdk/device/FileUtilLinkOs;
.implements Lcom/zebra/sdk/printer/GraphicsUtil;


# instance fields
.field private final pathToProfile:Ljava/lang/String;

.field private profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    iput-object p1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    new-instance p1, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;

    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    return-void
.end method

.method private isMatchingAlert(Lcom/zebra/sdk/printer/PrinterAlert;Lcom/zebra/sdk/printer/PrinterAlert;)Z
    .locals 5

    invoke-virtual {p2}, Lcom/zebra/sdk/printer/PrinterAlert;->getCondition()Lcom/zebra/sdk/settings/AlertCondition;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/PrinterAlert;->getCondition()Lcom/zebra/sdk/settings/AlertCondition;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/zebra/sdk/printer/PrinterAlert;->getDestination()Lcom/zebra/sdk/settings/AlertDestination;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/PrinterAlert;->getDestination()Lcom/zebra/sdk/settings/AlertDestination;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/zebra/sdk/printer/PrinterAlert;->getCondition()Lcom/zebra/sdk/settings/AlertCondition;

    move-result-object v1

    sget-object v4, Lcom/zebra/sdk/settings/AlertCondition;->SGD_SET:Lcom/zebra/sdk/settings/AlertCondition;

    if-ne v1, v4, :cond_1

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/PrinterAlert;->getSgdName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/zebra/sdk/printer/PrinterAlert;->getSgdName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method private shouldArchive(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->isSettingArchivable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->isSettingWriteOnly(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->isSettingReadOnly(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private shouldClone(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->isSettingClonable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->isSettingWriteOnly(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->isSettingReadOnly(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public addFirmware(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v1, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v2, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "firmwareFile.txt"

    invoke-virtual {v1, p1, v2, v0}, Lcom/zebra/sdk/util/internal/ZipUtil;->addEntry(Ljava/lang/String;Ljava/io/File;[B)V

    return-void
.end method

.method public addFirmware(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v1, "firmwareFile.txt"

    invoke-virtual {v0, v1, p2, p1}, Lcom/zebra/sdk/util/internal/ZipUtil;->addEntry(Ljava/lang/String;[B[B)V

    return-void
.end method

.method public addSupplement([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    const-string v1, "profileSupplement.txt"

    invoke-virtual {v0, v1, p1}, Lcom/zebra/sdk/util/internal/ZipUtil;->addEntry(Ljava/lang/String;[B)V

    return-void
.end method

.method public configureAlert(Lcom/zebra/sdk/printer/PrinterAlert;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-static {v0}, Lcom/zebra/sdk/printer/internal/ProfileHelper;->getAlertsFromJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zebra/sdk/printer/PrinterAlert;

    invoke-direct {p0, v3, p1}, Lcom/zebra/sdk/device/Profile;->isMatchingAlert(Lcom/zebra/sdk/printer/PrinterAlert;Lcom/zebra/sdk/printer/PrinterAlert;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/zebra/sdk/printer/PrinterAlert;->isOnSet()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/PrinterAlert;->isOnClear()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/zebra/sdk/printer/internal/ProfileHelper;->commitAlertsToProfile(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public configureAlerts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterAlert;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zebra/sdk/printer/PrinterAlert;

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/device/Profile;->configureAlert(Lcom/zebra/sdk/printer/PrinterAlert;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/zebra/sdk/printer/internal/ProfileHelper;->deleteFileFromProfile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public downloadTteFont(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p1, v0, p2}, Lcom/zebra/sdk/printer/FontConverterZpl;->saveAsTtePrinterFont(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {p1, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zebra/sdk/util/internal/ZipUtil;->addEntry(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public downloadTteFont(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p1, v0, p2}, Lcom/zebra/sdk/printer/FontConverterZpl;->saveAsTtePrinterFont(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {p1, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zebra/sdk/util/internal/ZipUtil;->addEntry(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public downloadTtfFont(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p1, v0, p2}, Lcom/zebra/sdk/printer/FontConverterZpl;->saveAsTtfPrinterFont(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {p1, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zebra/sdk/util/internal/ZipUtil;->addEntry(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public downloadTtfFont(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p1, v0, p2}, Lcom/zebra/sdk/printer/FontConverterZpl;->saveAsTtfPrinterFont(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {p1, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zebra/sdk/util/internal/ZipUtil;->addEntry(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getAllSettingValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->getAllSettingValues()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zebra/sdk/settings/Setting;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->getAllSettings()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getArchivableSettingValues()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/zebra/sdk/device/Profile;->getAvailableSettings()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-direct {p0, v2}, Lcom/zebra/sdk/device/Profile;->shouldArchive(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v3, v2}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/zebra/sdk/settings/SettingsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAvailableSettings()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/device/Profile;->getAllSettingValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getClonableSettingValues()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/zebra/sdk/device/Profile;->getAvailableSettings()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-direct {p0, v2}, Lcom/zebra/sdk/device/Profile;->shouldClone(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v3, v2}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/zebra/sdk/settings/SettingsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zebra/sdk/device/ZebraIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getConfiguredAlerts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterAlert;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-static {v0}, Lcom/zebra/sdk/printer/internal/ProfileHelper;->getAlertsFromJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFirmwareFilename()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    const-string v1, "firmwareFile.txt"

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;->getEntryExtraContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    const-string v1, "firmwareFileUserSpecifiedName.txt"

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;->getEntryContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getObjectFromPrinter(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/zebra/sdk/util/internal/ZipUtil;->extractEntry(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x2e

    :try_start_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zebra/sdk/util/internal/FileWrapper;->isHzoExtension(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1, p2, v1}, Lcom/zebra/sdk/util/internal/FileWrapper;->unwrapHZOResult(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/zebra/sdk/util/internal/FileWrapper;->stripOffCISDFWrapper([B)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getObjectFromPrinter(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/zebra/sdk/device/Profile;->getObjectFromPrinter(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public getObjectFromPrinterViaFtp(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    new-instance p1, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    const-string p2, "Cannot access a profile over FTP"

    invoke-direct {p1, p2}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getObjectFromPrinterViaFtp(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    new-instance p1, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    const-string p2, "Cannot access a profile over FTP"

    invoke-direct {p1, p2}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrinterDownloadableObjectFromPrinter(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/util/internal/ZipUtil;->extractEntry(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSetting(Ljava/lang/String;)Lcom/zebra/sdk/settings/Setting;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->getSetting(Ljava/lang/String;)Lcom/zebra/sdk/settings/Setting;

    move-result-object p1

    return-object p1
.end method

.method public getSettingRange(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->getSettingRange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSettingType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->getSettingType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/device/Profile;->getAllSettingValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    new-instance p1, Lcom/zebra/sdk/settings/SettingsException;

    invoke-direct {p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>()V

    throw p1
.end method

.method public getSettingsValues(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/zebra/sdk/device/Profile;->getAllSettingValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getStorageInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/StorageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/comm/ConnectionException;

    const-string v1, "Storage info is not available for a profile"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSupplement()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    const-string v1, "profileSupplement.txt"

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;->getEntryContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSettingReadOnly(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->isSettingReadOnly(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSettingValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->isSettingValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isSettingWriteOnly(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->isSettingWriteOnly(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public printImage(Lcom/zebra/sdk/graphics/ZebraImageI;IIIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance p1, Lcom/zebra/sdk/comm/ConnectionException;

    const-string p2, "Printing an image is not applicable to a profile."

    invoke-direct {p1, p2}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public printImage(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Lcom/zebra/sdk/comm/ConnectionException;

    const-string p2, "Printing an image is not applicable to a profile."

    invoke-direct {p1, p2}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public printImage(Ljava/lang/String;IIIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Lcom/zebra/sdk/comm/ConnectionException;

    const-string p2, "Printing an image is not applicable to a profile."

    invoke-direct {p1, p2}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processSettingsViaMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;,
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->processSettingsViaMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public removeAlert(Lcom/zebra/sdk/printer/PrinterAlert;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    instance-of v0, p1, Lcom/zebra/sdk/printer/PrinterAlert;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zebra/sdk/printer/PrinterAlert;

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/PrinterAlert;->getCondition()Lcom/zebra/sdk/settings/AlertCondition;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zebra/sdk/printer/PrinterAlert;->getDestination()Lcom/zebra/sdk/settings/AlertDestination;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v6, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/zebra/sdk/printer/PrinterAlert;-><init>(Lcom/zebra/sdk/settings/AlertCondition;Lcom/zebra/sdk/settings/AlertDestination;ZZLjava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/device/Profile;->configureAlert(Lcom/zebra/sdk/printer/PrinterAlert;)V

    :cond_0
    return-void
.end method

.method public removeAllAlerts()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/zebra/sdk/printer/internal/ProfileHelper;->commitAlertsToProfile(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeFirmware()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    const-string v1, "firmwareFileUserSpecifiedName.txt"

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;->removeEntry(Ljava/lang/String;)V

    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    const-string v1, "firmwareFile.txt"

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;->removeEntry(Ljava/lang/String;)V

    return-void
.end method

.method public retrieveFileNames()[Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/util/internal/ZipUtil;->getEntryNames()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/zebra/sdk/printer/internal/ProfileHelper;->isSpecialProfileFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public retrieveFileNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/zebra/sdk/device/Profile;->retrieveFileNames()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    array-length v6, p1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, p1, v7

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-array p1, v1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public retrieveObjectsProperties()Ljava/util/List;
    .locals 13
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
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/device/Profile;->retrieveFileNames()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/zebra/sdk/util/internal/FileUtilities;->parseDriveAndExtension(Ljava/lang/String;)Lcom/zebra/sdk/util/internal/PrinterFilePath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getDrive()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_0
    move-object v8, v6

    invoke-virtual {v5}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getExtension()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    move-object v10, v6

    const-wide/16 v6, 0x0

    :try_start_0
    new-instance v9, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v11, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {v9, v11}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/zebra/sdk/util/internal/ZipUtil;->getEntryContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v6, v4

    :catch_0
    move-wide v11, v6

    new-instance v4, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesZpl;

    invoke-virtual {v5}, Lcom/zebra/sdk/util/internal/PrinterFilePath;->getFileName()Ljava/lang/String;

    move-result-object v9

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesZpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public sendContents(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/zebra/sdk/util/internal/ZipUtil;->addEntry(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public sendFileContents(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "sendFileContents is not valid for profiles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendFileContents(Ljava/lang/String;Lcom/zebra/sdk/device/ProgressMonitor;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "sendFileContents is not valid for profiles"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAllSettings(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zebra/sdk/settings/Setting;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->setAllSettings(Ljava/util/Map;)V

    return-void
.end method

.method public setSetting(Ljava/lang/String;Lcom/zebra/sdk/settings/Setting;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->setSetting(Ljava/lang/String;Lcom/zebra/sdk/settings/Setting;)V

    return-void
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSettings(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/device/Profile;->profileBasedSettingsList:Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;

    invoke-interface {v0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;->setSettings(Ljava/util/Map;)V

    return-void
.end method

.method public storeFileOnPrinter(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/FileUtilities;->GetFileNameOnPrinter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zebra/sdk/device/Profile;->storeFileOnPrinter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public storeFileOnPrinter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/FileReader;->toByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/zebra/sdk/device/Profile;->storeFileOnPrinter([BLjava/lang/String;)V

    return-void
.end method

.method public storeFileOnPrinter([BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/zebra/sdk/util/internal/FileWrapper;->wrapFileWithCisdfHeader([BLjava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/zebra/sdk/util/internal/ZipUtil;->addEntry(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public storeImage(Ljava/lang/String;Lcom/zebra/sdk/graphics/ZebraImageI;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilZpl;

    invoke-direct {v0}, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilZpl;-><init>()V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    move-object v2, p2

    check-cast v2, Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/zebra/sdk/printer/internal/GraphicsConversionUtilZpl;->sendImageToStream(Ljava/lang/String;Lcom/zebra/sdk/graphics/internal/ZebraImageInternal;IILjava/io/OutputStream;)V

    new-instance p2, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object p3, p0, Lcom/zebra/sdk/device/Profile;->pathToProfile:Ljava/lang/String;

    invoke-direct {p2, p3}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/zebra/sdk/util/internal/ZipUtil;->addEntry(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public storeImage(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/zebra/sdk/util/internal/ReflectionUtil;->invokeZebraImageFactory_getImage(Ljava/lang/String;)Lcom/zebra/sdk/graphics/ZebraImageI;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zebra/sdk/device/Profile;->storeImage(Ljava/lang/String;Lcom/zebra/sdk/graphics/ZebraImageI;II)V

    return-void
.end method
