.class public abstract Lcom/zebra/sdk/printer/internal/FileUtilA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/device/FileUtil;


# static fields
.field private static final EPOCH_FILE_DIR_KEYWORD:Ljava/lang/String; = "DIR"

.field private static final LEGACY_FILE_DIR_KEYWORD:Ljava/lang/String; = "Directory"


# instance fields
.field protected printerConnection:Lcom/zebra/sdk/comm/Connection;


# direct methods
.method public constructor <init>(Lcom/zebra/sdk/comm/Connection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/internal/FileUtilA;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    return-void
.end method


# virtual methods
.method public extractFilePropertiesFromDirResult(Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    const-string v0, "No files found."

    if-eqz p1, :cond_3

    new-instance v1, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    invoke-direct {v1}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;-><init>()V

    const-string v2, "DIR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    const-string v0, "\\*\\s+([^\\s]+\\:)([^\\s]+)\\.([^\\s]+)\\s+(\\d+)"

    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesZpl;

    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesZpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v1, v0}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->add(Lcom/zebra/sdk/printer/PrinterObjectProperties;)V

    goto :goto_0

    :cond_0
    const-string v2, "Directory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v6, :cond_2

    const-string v0, "\\s+([^\\s]+)\\s+\\.([^\\s]+)\\s+(\\d+)"

    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesZpl;

    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v8, ""

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesZpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v1, v0}, Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;->add(Lcom/zebra/sdk/printer/PrinterObjectProperties;)V

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    new-instance p1, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    invoke-direct {p1, v0}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;

    invoke-direct {p1, v0}, Lcom/zebra/sdk/device/ZebraIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected getFileConnection(Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/ZebraFileConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/ZebraFileConnectionImpl;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/internal/ZebraFileConnectionImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract retrieveFileNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract retrieveFileNames([Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation
.end method

.method public retrieveFilePropertiesFromPrinter()Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FileUtilA;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    const-string v1, "file.dir"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/zebra/sdk/printer/SGD;->DO(Ljava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/comm/Connection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/printer/internal/FileUtilA;->extractFilePropertiesFromDirResult(Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/PrinterFilePropertiesList;

    move-result-object v0

    return-object v0
.end method

.method public sendFileContents(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/device/internal/NullProgressMonitor;

    invoke-direct {v0}, Lcom/zebra/sdk/device/internal/NullProgressMonitor;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/zebra/sdk/printer/internal/FileUtilA;->sendFileContents(Ljava/lang/String;Lcom/zebra/sdk/device/ProgressMonitor;)V

    return-void
.end method

.method public sendFileContents(Ljava/lang/String;Lcom/zebra/sdk/device/ProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/printer/internal/FileUtilA;->getFileConnection(Ljava/lang/String;)Lcom/zebra/sdk/printer/internal/ZebraFileConnection;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/zebra/sdk/printer/internal/ZebraFileConnectionImpl;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/internal/ZebraFileConnectionImpl;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1}, Lcom/zebra/sdk/printer/internal/ZebraFileConnection;->fileSize()I

    move-result p1

    iget-object v1, p0, Lcom/zebra/sdk/printer/internal/FileUtilA;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-static {v1, p2, v0, p1}, Lcom/zebra/sdk/util/internal/FileUtilities;->sendFileContentsInChunks(Lcom/zebra/sdk/comm/Connection;Lcom/zebra/sdk/device/ProgressMonitor;Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_2
    new-instance p2, Lcom/zebra/sdk/comm/ConnectionException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_1
    throw p1
.end method
