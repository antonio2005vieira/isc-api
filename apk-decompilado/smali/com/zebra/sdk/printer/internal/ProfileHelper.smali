.class public Lcom/zebra/sdk/printer/internal/ProfileHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zebra/sdk/printer/internal/ProfileHelper$OurComponentDeleter;,
        Lcom/zebra/sdk/printer/internal/ProfileHelper$OurAlertsWriter;,
        Lcom/zebra/sdk/printer/internal/ProfileHelper$ProfileComponentTransformer;
    }
.end annotation


# static fields
.field public static final ALERTS_JSON_NAME:Ljava/lang/String; = "alerts.json"

.field public static final FIRMWARE_FILE_NAME:Ljava/lang/String; = "firmwareFile.txt"

.field public static final FIRMWARE_FILE_USER_SPECIFIED_NAME:Ljava/lang/String; = "firmwareFileUserSpecifiedName.txt"

.field public static final PROFILE_SUPPLEMENT_NAME:Ljava/lang/String; = "profileSupplement.txt"

.field public static final SETTINGS_JSON_NAME:Ljava/lang/String; = "settings.json"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitAlertsToProfile(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterAlert;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/ProfileHelper$OurAlertsWriter;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/internal/ProfileHelper$OurAlertsWriter;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/zebra/sdk/printer/internal/ProfileHelper;->modifyProfile(Ljava/lang/String;Lcom/zebra/sdk/printer/internal/ProfileHelper$ProfileComponentTransformer;)V

    return-void
.end method

.method public static createJson(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterAlert;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/zebra/sdk/util/internal/JacksonObjectMapperFactory;->getInstance()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deleteFileFromProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/ProfileHelper$OurComponentDeleter;

    invoke-direct {v0, p1}, Lcom/zebra/sdk/printer/internal/ProfileHelper$OurComponentDeleter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/zebra/sdk/printer/internal/ProfileHelper;->modifyProfile(Ljava/lang/String;Lcom/zebra/sdk/printer/internal/ProfileHelper$ProfileComponentTransformer;)V

    return-void
.end method

.method public static getAlertsFromJson(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterAlert;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    invoke-direct {v0, p0}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    const-string p0, "alerts.json"

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->getEntryContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zebra/sdk/printer/internal/ProfileHelper;->getAlertsFromJsonData(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getAlertsFromJsonData(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/PrinterAlert;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/printer/internal/ProfileHelper$1;

    invoke-direct {v0}, Lcom/zebra/sdk/printer/internal/ProfileHelper$1;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/zebra/sdk/util/internal/JacksonObjectMapperFactory;->getInstance()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getSettingsFromProfile(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    invoke-direct {v0, p0}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    const-string p0, "settings.json"

    invoke-virtual {v0, p0}, Lcom/zebra/sdk/util/internal/ZipUtil;->getEntryContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zebra/sdk/util/internal/StringUtilities;->convertKeyValueJsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static handleSpecialCases(Ljava/util/Map;Lcom/zebra/sdk/printer/internal/RestoreType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zebra/sdk/printer/internal/RestoreType;",
            ")V"
        }
    .end annotation

    const-string v0, "internal_wired.ip.protocol"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/zebra/sdk/printer/internal/RestoreType;->ARCHIVE:Lcom/zebra/sdk/printer/internal/RestoreType;

    const/4 v2, 0x1

    const-string v3, "permanent"

    const/4 v4, 0x0

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "internal_wired.ip.addr"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "wlan.ip.protocol"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/zebra/sdk/printer/internal/RestoreType;->ARCHIVE:Lcom/zebra/sdk/printer/internal/RestoreType;

    if-ne p1, v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    const-string v0, "ip.addr"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wlan.ip.addr"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "external_wired.ip.protocol"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/zebra/sdk/printer/internal/RestoreType;->ARCHIVE:Lcom/zebra/sdk/printer/internal/RestoreType;

    if-ne p1, v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_5

    const-string p1, "external_wired.ip.addr"

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public static isSpecialProfileFile(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "settings.json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string v0, "alerts.json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_1

    const-string v0, "profileSupplement.txt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_1

    const-string v0, "firmwareFile.txt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_1

    const-string v0, "firmwareFileUserSpecifiedName.txt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static modifyProfile(Ljava/lang/String;Lcom/zebra/sdk/printer/internal/ProfileHelper$ProfileComponentTransformer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/zebra/sdk/util/internal/FileReader;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "proftmp"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Lcom/zebra/sdk/util/internal/ZipUtil;

    invoke-direct {v2, v0}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zebra/sdk/util/internal/ZipUtil;->getEntryNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Lcom/zebra/sdk/printer/internal/ProfileHelper$ProfileComponentTransformer;->shouldTransformComponent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Lcom/zebra/sdk/printer/internal/ProfileHelper$ProfileComponentTransformer;->transformComponent()[B

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Lcom/zebra/sdk/util/internal/ZipUtil;->extractEntry(Ljava/lang/String;)[B

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {p0, v4}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
