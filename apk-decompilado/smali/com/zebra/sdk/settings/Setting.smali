.class public Lcom/zebra/sdk/settings/Setting;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonAutoDetect;
    fieldVisibility = .enum Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->ANY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    getterVisibility = .enum Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->ANY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    setterVisibility = .enum Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->ANY:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6ccf01939b75ec7aL


# instance fields
.field private access:Ljava/lang/String;

.field private archive:Z

.field private clone:Z

.field private range:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccess()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/settings/Setting;->access:Ljava/lang/String;

    return-object v0
.end method

.method public getArchive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zebra/sdk/settings/Setting;->archive:Z

    return v0
.end method

.method public getClone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zebra/sdk/settings/Setting;->clone:Z

    return v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/settings/Setting;->range:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/settings/Setting;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/zebra/sdk/settings/internal/SettingType;->fromString(Ljava/lang/String;)Lcom/zebra/sdk/settings/internal/SettingType;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zebra/sdk/settings/Setting;->type:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/zebra/sdk/settings/internal/SettingType;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/settings/Setting;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/settings/Setting;->access:Ljava/lang/String;

    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/settings/Setting;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/zebra/sdk/settings/internal/SettingType;->fromString(Ljava/lang/String;)Lcom/zebra/sdk/settings/internal/SettingType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/zebra/sdk/settings/Setting$1;->$SwitchMap$com$zebra$sdk$settings$internal$SettingType:[I

    invoke-virtual {v0}, Lcom/zebra/sdk/settings/internal/SettingType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/zebra/sdk/settings/internal/SettingRangeIpV4Address;

    iget-object v1, p0, Lcom/zebra/sdk/settings/Setting;->range:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/settings/internal/SettingRangeIpV4Address;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/zebra/sdk/settings/internal/SettingRangeString;

    iget-object v1, p0, Lcom/zebra/sdk/settings/Setting;->range:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/settings/internal/SettingRangeString;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/zebra/sdk/settings/internal/SettingRangeChoices;

    iget-object v1, p0, Lcom/zebra/sdk/settings/Setting;->range:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/settings/internal/SettingRangeChoices;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/zebra/sdk/settings/internal/SettingRangeInteger;

    iget-object v1, p0, Lcom/zebra/sdk/settings/Setting;->range:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/settings/internal/SettingRangeInteger;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    new-instance v0, Lcom/zebra/sdk/settings/internal/SettingRangeFloat;

    iget-object v1, p0, Lcom/zebra/sdk/settings/Setting;->range:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/settings/internal/SettingRangeFloat;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/zebra/sdk/settings/internal/SettingRange;->isInRange(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 p1, 0x1

    :goto_3
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isWriteOnly()Z
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/settings/Setting;->access:Ljava/lang/String;

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setAccess(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/settings/Setting;->access:Ljava/lang/String;

    return-void
.end method

.method public setArchive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zebra/sdk/settings/Setting;->archive:Z

    return-void
.end method

.method public setClone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zebra/sdk/settings/Setting;->clone:Z

    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/settings/Setting;->range:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/settings/Setting;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/settings/Setting;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting [settingData=value= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zebra/sdk/settings/Setting;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zebra/sdk/settings/Setting;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " range= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zebra/sdk/settings/Setting;->range:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
