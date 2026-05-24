.class public Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;
.super Lcom/zebra/sdk/settings/internal/ZebraSettingsList;


# instance fields
.field private pathToProfile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;->pathToProfile:Ljava/lang/String;

    return-void
.end method

.method private storeSettingValues()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/settings/internal/SettingsBuilder;

    invoke-virtual {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;->getAllSettings()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zebra/sdk/settings/internal/SettingsBuilder;-><init>(Ljava/util/Map;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/zebra/sdk/settings/internal/SettingsBuilder;->toAllconfigJson()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v2, p0, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;->pathToProfile:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    const-string v2, "settings.json"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/zebra/sdk/util/internal/ZipUtil;->addEntry(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected getUpdatedJsonData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/util/internal/ZipUtil;

    iget-object v1, p0, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;->pathToProfile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;-><init>(Ljava/lang/String;)V

    const-string v1, "settings.json"

    invoke-virtual {v0, v1}, Lcom/zebra/sdk/util/internal/ZipUtil;->extractEntry(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getValues(Ljava/util/List;)Ljava/util/Map;
    .locals 3
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

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;->filterOutUnreadableSettings(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;->getSettingById(Ljava/lang/String;)Lcom/zebra/sdk/settings/Setting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zebra/sdk/settings/Setting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
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
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;->setSettings(Ljava/util/Map;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;->getValues(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public setAllSettings(Ljava/util/Map;)V
    .locals 4
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

    invoke-virtual {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;->getAllSettings()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;->storeSettingValues()V

    return-void
.end method

.method public setSetting(Ljava/lang/String;Lcom/zebra/sdk/settings/Setting;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;->getAllSettings()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;->storeSettingValues()V

    return-void
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;->updateInternalState(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;->storeSettingValues()V

    return-void
.end method

.method public setSettings(Ljava/util/Map;)V
    .locals 3
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

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;->updateInternalState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zebra/sdk/settings/SettingsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsListFromProfile;->storeSettingValues()V

    return-void
.end method
