.class public Lcom/zebra/sdk/device/ProfileToMirrorServer;
.super Ljava/lang/Object;


# instance fields
.field private password:Ljava/lang/String;

.field private final pathToProfile:Ljava/lang/String;

.field private server:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->pathToProfile:Ljava/lang/String;

    return-void
.end method

.method private loadAlertsFromProfile(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;,
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/zebra/sdk/printer/internal/ProfileHelper;->getAlertsFromJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;

    invoke-direct {v0}, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;-><init>()V

    invoke-static {p1, v0}, Lcom/zebra/sdk/settings/internal/AlertsUtilLinkOs;->setAlerts(Ljava/util/List;Lcom/zebra/sdk/comm/Connection;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/settings/internal/PrinterlessConnection;->getStuffWrittenOnConnection()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v0, "commands"

    const-string v1, "alerts.txt"

    invoke-virtual {p0, v0, p1, v1}, Lcom/zebra/sdk/device/ProfileToMirrorServer;->storeFileViaFtp(Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method private loadFilesFromProfile(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/zebra/sdk/util/internal/ZipUtil;

    invoke-direct {v1, p1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zebra/sdk/util/internal/ZipUtil;->getEntryNames()Ljava/util/List;

    move-result-object p1

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

    invoke-static {v2}, Lcom/zebra/sdk/printer/internal/ProfileHelper;->isSpecialProfileFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/zebra/sdk/util/internal/ZipUtil;->extractEntry(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v4, Lcom/zebra/sdk/comm/internal/FtpFileHolder;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v3, "commands"

    invoke-direct {v4, v3, v2, v5}, Lcom/zebra/sdk/comm/internal/FtpFileHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/zebra/sdk/device/ProfileToMirrorServer;->storeFilesViaFtp(Ljava/util/List;)V

    return-void
.end method

.method private loadFirmwareFromProfile(Lcom/zebra/sdk/device/Profile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/String;

    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->pathToProfile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    const-string v1, "firmwareFileUserSpecifiedName.txt"

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;->extractEntry(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->pathToProfile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    const-string v1, "firmwareFile.txt"

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;->getInputStreamToEntry(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "appl"

    invoke-virtual {p0, v2, p1, v1}, Lcom/zebra/sdk/device/ProfileToMirrorServer;->storeFileViaFtp(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/util/internal/ZipUtil;->closeStreams()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected deleteAllFilesOnMirrorServer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/comm/internal/FTP;

    iget-object v1, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->server:Ljava/lang/String;

    iget-object v2, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/zebra/sdk/comm/internal/FTP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "appl"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "commands"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "files"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/comm/internal/FTP;->deleteAllFilesAndSubDirectories(Ljava/util/List;)V

    return-void
.end method

.method public sendToMirrorServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->server:Ljava/lang/String;

    iput-object p2, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->user:Ljava/lang/String;

    iput-object p3, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->password:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/zebra/sdk/device/ProfileToMirrorServer;->deleteAllFilesOnMirrorServer()V

    :try_start_0
    new-instance p2, Lcom/zebra/sdk/device/Profile;

    iget-object p3, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->pathToProfile:Ljava/lang/String;

    invoke-direct {p2, p3}, Lcom/zebra/sdk/device/Profile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/zebra/sdk/device/ProfileToMirrorServer;->loadFirmwareFromProfile(Lcom/zebra/sdk/device/Profile;)V

    invoke-virtual {p2}, Lcom/zebra/sdk/device/Profile;->getClonableSettingValues()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lcom/zebra/sdk/settings/internal/JsonHelper;->buildSetCommand(Ljava/util/Map;)[B

    move-result-object p2

    const-string p3, "commands"

    const-string v0, "settings.txt"

    invoke-virtual {p0, p3, p2, v0}, Lcom/zebra/sdk/device/ProfileToMirrorServer;->storeFileViaFtp(Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/zebra/sdk/settings/SettingsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object p2, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->pathToProfile:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/zebra/sdk/device/ProfileToMirrorServer;->loadAlertsFromProfile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/zebra/sdk/settings/SettingsException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object p2, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->pathToProfile:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/zebra/sdk/device/ProfileToMirrorServer;->loadFilesFromProfile(Ljava/lang/String;)V

    return-object p1
.end method

.method protected storeFileViaFtp(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/comm/internal/FTP;

    iget-object v1, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->server:Ljava/lang/String;

    iget-object v2, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/zebra/sdk/comm/internal/FTP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/zebra/sdk/comm/internal/FTP;->putFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method protected storeFileViaFtp(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/comm/internal/FTP;

    iget-object v1, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->server:Ljava/lang/String;

    iget-object v2, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/zebra/sdk/comm/internal/FTP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p3, p2}, Lcom/zebra/sdk/comm/internal/FTP;->putFile(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method protected storeFilesViaFtp(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/comm/internal/FtpFileHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/comm/internal/FTP;

    iget-object v1, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->server:Ljava/lang/String;

    iget-object v2, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/zebra/sdk/device/ProfileToMirrorServer;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/zebra/sdk/comm/internal/FTP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/zebra/sdk/comm/internal/FTP;->putFiles(Ljava/util/List;)V

    return-void
.end method
