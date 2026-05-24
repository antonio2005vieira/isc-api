.class public Lcom/zebra/sdk/printer/PrinterAlert;
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
.field private static final serialVersionUID:J = 0x4676503e8369990bL


# instance fields
.field protected alertText:Ljava/lang/String;

.field private condition:Lcom/zebra/sdk/settings/AlertCondition;

.field protected destination:Lcom/zebra/sdk/settings/AlertDestination;

.field protected destinationAddress:Ljava/lang/String;

.field private onClear:Z

.field private onSet:Z

.field protected port:I

.field protected quelling:Z

.field private sgdName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/settings/AlertCondition;Lcom/zebra/sdk/settings/AlertDestination;Ljava/lang/String;ZZLjava/lang/String;IZ)V
    .locals 10

    const-string v9, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/zebra/sdk/printer/PrinterAlert;-><init>(Lcom/zebra/sdk/settings/AlertCondition;Lcom/zebra/sdk/settings/AlertDestination;Ljava/lang/String;ZZLjava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/settings/AlertCondition;Lcom/zebra/sdk/settings/AlertDestination;Ljava/lang/String;ZZLjava/lang/String;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/printer/PrinterAlert;->condition:Lcom/zebra/sdk/settings/AlertCondition;

    iput-object p2, p0, Lcom/zebra/sdk/printer/PrinterAlert;->destination:Lcom/zebra/sdk/settings/AlertDestination;

    iput-object p3, p0, Lcom/zebra/sdk/printer/PrinterAlert;->sgdName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/zebra/sdk/printer/PrinterAlert;->onSet:Z

    iput-boolean p5, p0, Lcom/zebra/sdk/printer/PrinterAlert;->onClear:Z

    iput-object p6, p0, Lcom/zebra/sdk/printer/PrinterAlert;->destinationAddress:Ljava/lang/String;

    iput p7, p0, Lcom/zebra/sdk/printer/PrinterAlert;->port:I

    iput-boolean p8, p0, Lcom/zebra/sdk/printer/PrinterAlert;->quelling:Z

    iput-object p9, p0, Lcom/zebra/sdk/printer/PrinterAlert;->alertText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/settings/AlertCondition;Lcom/zebra/sdk/settings/AlertDestination;ZZLjava/lang/String;IZ)V
    .locals 10

    const-string v3, ""

    const-string v9, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/zebra/sdk/printer/PrinterAlert;-><init>(Lcom/zebra/sdk/settings/AlertCondition;Lcom/zebra/sdk/settings/AlertDestination;Ljava/lang/String;ZZLjava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/settings/AlertCondition;Lcom/zebra/sdk/settings/AlertDestination;ZZLjava/lang/String;IZLjava/lang/String;)V
    .locals 10

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/zebra/sdk/printer/PrinterAlert;-><init>(Lcom/zebra/sdk/settings/AlertCondition;Lcom/zebra/sdk/settings/AlertDestination;Ljava/lang/String;ZZLjava/lang/String;IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAlertText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/PrinterAlert;->alertText:Ljava/lang/String;

    return-object v0
.end method

.method public getCondition()Lcom/zebra/sdk/settings/AlertCondition;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/PrinterAlert;->condition:Lcom/zebra/sdk/settings/AlertCondition;

    return-object v0
.end method

.method public getDestination()Lcom/zebra/sdk/settings/AlertDestination;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/PrinterAlert;->destination:Lcom/zebra/sdk/settings/AlertDestination;

    return-object v0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/PrinterAlert;->destinationAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationAsSgdString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/printer/PrinterAlert;->destination:Lcom/zebra/sdk/settings/AlertDestination;

    invoke-virtual {v0}, Lcom/zebra/sdk/settings/AlertDestination;->getDestinationAsSGDString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lcom/zebra/sdk/printer/PrinterAlert;->port:I

    return v0
.end method

.method public getQuelling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zebra/sdk/printer/PrinterAlert;->quelling:Z

    return v0
.end method

.method public getSgdName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/printer/PrinterAlert;->sgdName:Ljava/lang/String;

    return-object v0
.end method

.method public isOnClear()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zebra/sdk/printer/PrinterAlert;->onClear:Z

    return v0
.end method

.method public isOnSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zebra/sdk/printer/PrinterAlert;->onSet:Z

    return v0
.end method
