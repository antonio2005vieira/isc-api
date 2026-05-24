.class public abstract Lcom/zebra/sdk/settings/internal/ZebraSettingsList;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/settings/internal/ZebraSettingsListI;


# instance fields
.field protected allSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zebra/sdk/settings/Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->allSettings:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected filterOutUnreadableSettings(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getAllSettings()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getSettingById(Ljava/lang/String;)Lcom/zebra/sdk/settings/Setting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zebra/sdk/settings/Setting;->isWriteOnly()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    new-instance p1, Lcom/zebra/sdk/settings/SettingsException;

    const-string v0, "Found no valid settings to retrieve."

    invoke-direct {p1, v0}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getAllSettingIds()Ljava/util/Set;
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

    invoke-virtual {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getAllSettings()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAllSettingValues()Ljava/util/Map;
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

    invoke-virtual {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->refresh()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getAllSettings()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getAllSettings()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zebra/sdk/settings/Setting;

    invoke-virtual {v3}, Lcom/zebra/sdk/settings/Setting;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
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

    iget-object v0, p0, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->allSettings:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->refresh()V

    :cond_1
    iget-object v0, p0, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->allSettings:Ljava/util/Map;

    return-object v0
.end method

.method public getSetting(Ljava/lang/String;)Lcom/zebra/sdk/settings/Setting;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getSettingById(Ljava/lang/String;)Lcom/zebra/sdk/settings/Setting;

    move-result-object p1

    return-object p1
.end method

.method protected getSettingById(Ljava/lang/String;)Lcom/zebra/sdk/settings/Setting;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getAllSettings()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zebra/sdk/settings/Setting;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/settings/SettingsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] not found."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSettingRange(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getSettingById(Ljava/lang/String;)Lcom/zebra/sdk/settings/Setting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zebra/sdk/settings/Setting;->getRange()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSettingType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getSettingById(Ljava/lang/String;)Lcom/zebra/sdk/settings/Setting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zebra/sdk/settings/Setting;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getUpdatedJsonData()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;,
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getSettingById(Ljava/lang/String;)Lcom/zebra/sdk/settings/Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zebra/sdk/settings/Setting;->isWriteOnly()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getValues(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    new-instance v0, Lcom/zebra/sdk/settings/SettingsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not availble from device"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/zebra/sdk/settings/SettingsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is write only"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getValues(Ljava/util/List;)Ljava/util/Map;
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
            Lcom/zebra/sdk/settings/SettingsException;,
            Lcom/zebra/sdk/comm/ConnectionException;,
            Lcom/zebra/sdk/device/ZebraIllegalArgumentException;
        }
    .end annotation
.end method

.method public isSettingArchivable(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getSettingById(Ljava/lang/String;)Lcom/zebra/sdk/settings/Setting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zebra/sdk/settings/Setting;->getArchive()Z

    move-result p1

    return p1
.end method

.method public isSettingClonable(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getSettingById(Ljava/lang/String;)Lcom/zebra/sdk/settings/Setting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zebra/sdk/settings/Setting;->getClone()Z

    move-result p1

    return p1
.end method

.method public isSettingReadOnly(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getSettingById(Ljava/lang/String;)Lcom/zebra/sdk/settings/Setting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zebra/sdk/settings/Setting;->isReadOnly()Z

    move-result p1

    return p1
.end method

.method public isSettingValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getSettingById(Ljava/lang/String;)Lcom/zebra/sdk/settings/Setting;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/zebra/sdk/settings/Setting;->isValid(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSettingWriteOnly(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getSettingById(Ljava/lang/String;)Lcom/zebra/sdk/settings/Setting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zebra/sdk/settings/Setting;->isWriteOnly()Z

    move-result p1

    return p1
.end method

.method protected refresh()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getUpdatedJsonData()[B

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Lcom/zebra/sdk/settings/internal/SettingsBuilder;

    invoke-direct {v2, v1}, Lcom/zebra/sdk/settings/internal/SettingsBuilder;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v0}, Lcom/zebra/sdk/settings/internal/SettingsBuilder;->parse([B)V

    iput-object v1, p0, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->allSettings:Ljava/util/Map;
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    new-instance v0, Lcom/zebra/sdk/settings/SettingsException;

    const-string v1, "Malformed settings data"

    invoke-direct {v0, v1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/zebra/sdk/settings/SettingsException;

    invoke-virtual {v0}, Lcom/zebra/sdk/comm/ConnectionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract setSetting(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation
.end method

.method protected updateInternalState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/settings/SettingsException;
        }
    .end annotation

    const-string v0, "]"

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getSettingById(Ljava/lang/String;)Lcom/zebra/sdk/settings/Setting;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/zebra/sdk/settings/Setting;->isReadOnly()Z

    move-result v2

    const-string v3, "Setting ["

    if-nez v2, :cond_2

    :try_start_0
    invoke-virtual {v1, p2}, Lcom/zebra/sdk/settings/Setting;->isValid(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/zebra/sdk/settings/Setting;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/zebra/sdk/settings/Setting;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/zebra/sdk/settings/Setting;->isWriteOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {v1, p2}, Lcom/zebra/sdk/settings/Setting;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zebra/sdk/settings/internal/ZebraSettingsList;->getAllSettings()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v2, Lcom/zebra/sdk/settings/SettingsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] is not in range ["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/zebra/sdk/settings/Setting;->getRange()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v1, Lcom/zebra/sdk/settings/SettingsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in range check for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] with value ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance p2, Lcom/zebra/sdk/settings/SettingsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is read only."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/settings/SettingsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    return-void
.end method
