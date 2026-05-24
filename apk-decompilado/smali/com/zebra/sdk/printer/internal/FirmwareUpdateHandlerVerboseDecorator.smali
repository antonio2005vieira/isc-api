.class public Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/FirmwareUpdateHandler;


# instance fields
.field private connectionIdentifierString:Ljava/lang/String;

.field private firmwareFileIdentifierString:Ljava/lang/String;

.field private isVerbose:Z

.field private lastPercentComplete:I

.field private myDecoratedFimwareUpdateHander:Lcom/zebra/sdk/printer/FirmwareUpdateHandler;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Lcom/zebra/sdk/printer/FirmwareUpdateHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->lastPercentComplete:I

    iput-object p4, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->myDecoratedFimwareUpdateHander:Lcom/zebra/sdk/printer/FirmwareUpdateHandler;

    iput-boolean p1, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->isVerbose:Z

    iput-object p2, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->connectionIdentifierString:Ljava/lang/String;

    iput-object p3, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->firmwareFileIdentifierString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public firmwareDownloadComplete()V
    .locals 5

    iget-boolean v0, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->isVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->connectionIdentifierString:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->firmwareFileIdentifierString:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v2, "%s accepted firmware file %s%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Flashing firmware to printer...%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_0
    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->myDecoratedFimwareUpdateHander:Lcom/zebra/sdk/printer/FirmwareUpdateHandler;

    invoke-interface {v0}, Lcom/zebra/sdk/printer/FirmwareUpdateHandler;->firmwareDownloadComplete()V

    return-void
.end method

.method public printerOnline(Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->isVerbose:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->connectionIdentifierString:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const-string v3, "unknown"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;->getConnection()Lcom/zebra/sdk/comm/Connection;

    move-result-object v3

    invoke-interface {v3}, Lcom/zebra/sdk/comm/Connection;->getSimpleConnectionName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string v2, "%s is back online with address %s and firmware version %s%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_1
    iget-object v0, p0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->myDecoratedFimwareUpdateHander:Lcom/zebra/sdk/printer/FirmwareUpdateHandler;

    invoke-interface {v0, p1, p2}, Lcom/zebra/sdk/printer/FirmwareUpdateHandler;->printerOnline(Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;Ljava/lang/String;)V

    return-void
.end method

.method public progressUpdate(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-boolean v3, v0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->isVerbose:Z

    if-eqz v3, :cond_7

    iget v3, v0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->lastPercentComplete:I

    const/4 v4, -0x1

    const-string v5, " "

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v3, v4, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v5, v4, v7

    const-string v8, "FW download progress : [%20s]"

    invoke-virtual {v3, v8, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_0
    int-to-double v3, v1

    int-to-double v8, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v8

    double-to-int v3, v3

    const/16 v4, 0x64

    const/16 v8, 0xc

    const-string v9, "\u0008"

    const-string v10, "%s"

    const-string v11, "*"

    if-ne v3, v4, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v9, v8}, Lcom/zebra/sdk/util/internal/StringUtilities;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v10, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "100"

    aput-object v5, v4, v7

    invoke-virtual {v3, v10, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v4, v6, [Ljava/lang/Object;

    const/16 v5, 0x8

    invoke-static {v11, v5}, Lcom/zebra/sdk/util/internal/StringUtilities;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "%s]%n"

    invoke-virtual {v3, v5, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_2

    :cond_1
    iget v4, v0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->lastPercentComplete:I

    if-eq v4, v3, :cond_7

    iput v3, v0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->lastPercentComplete:I

    div-int/lit8 v4, v3, 0x5

    new-array v12, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v12, v7

    const-string v3, "%02d"

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v12, v0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->lastPercentComplete:I

    rem-int/lit8 v12, v12, 0x5

    const-string v13, "%-2s"

    const-string v14, "%-9s]"

    const/16 v15, 0xb

    if-nez v12, :cond_4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v8, v6, [Ljava/lang/Object;

    const/16 v12, 0x15

    invoke-static {v9, v12}, Lcom/zebra/sdk/util/internal/StringUtilities;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {v5, v10, v8}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const/16 v5, 0xa

    const-string v8, "%-9s"

    if-ge v4, v5, :cond_2

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v11, v4}, Lcom/zebra/sdk/util/internal/StringUtilities;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v7

    invoke-virtual {v5, v8, v9}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v7

    const-string v3, "%-11s]"

    invoke-virtual {v4, v3, v5}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_2

    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v9, v6, [Ljava/lang/Object;

    const/16 v10, 0x9

    invoke-static {v11, v10}, Lcom/zebra/sdk/util/internal/StringUtilities;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v5, v8, v9}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v3, v8, v7

    invoke-virtual {v5, v13, v8}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    sub-int/2addr v4, v15

    if-ltz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v11, v4}, Lcom/zebra/sdk/util/internal/StringUtilities;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v7

    invoke-virtual {v3, v14, v5}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_2

    :cond_4
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v15, v6, [Ljava/lang/Object;

    invoke-static {v9, v8}, Lcom/zebra/sdk/util/internal/StringUtilities;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v7

    invoke-virtual {v12, v10, v15}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v3, v9, v7

    invoke-virtual {v8, v13, v9}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const/16 v3, 0xb

    if-ge v4, v3, :cond_5

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v5, v4, v7

    invoke-virtual {v3, v14, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_2

    :cond_5
    sub-int/2addr v4, v3

    if-ltz v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v11, v4}, Lcom/zebra/sdk/util/internal/StringUtilities;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v7

    invoke-virtual {v3, v14, v5}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_7
    :goto_2
    iget-object v3, v0, Lcom/zebra/sdk/printer/internal/FirmwareUpdateHandlerVerboseDecorator;->myDecoratedFimwareUpdateHander:Lcom/zebra/sdk/printer/FirmwareUpdateHandler;

    invoke-interface {v3, v1, v2}, Lcom/zebra/sdk/printer/FirmwareUpdateHandler;->progressUpdate(II)V

    return-void
.end method
