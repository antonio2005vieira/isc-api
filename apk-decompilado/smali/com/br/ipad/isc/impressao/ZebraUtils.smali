.class public Lcom/br/ipad/isc/impressao/ZebraUtils;
.super Ljava/lang/Object;
.source "ZebraUtils.java"


# static fields
.field private static instance:Lcom/br/ipad/isc/impressao/ZebraUtils;


# instance fields
.field private ctx:Landroid/content/Context;

.field printer:Lcom/zebra/android/printer/ZebraPrinter;

.field private zebraPrinterConnection:Lcom/zebra/android/comm/ZebraPrinterConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/br/ipad/isc/util/Bluetooth;->ativarBluetooth()Z

    .line 39
    iput-object p1, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->ctx:Landroid/content/Context;

    return-void
.end method

.method private codificarConta(Ljava/lang/StringBuilder;)[B
    .locals 2

    .line 310
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v0, "ISO-8859-1"

    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 315
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraUtils;
    .locals 1

    .line 44
    sget-object v0, Lcom/br/ipad/isc/impressao/ZebraUtils;->instance:Lcom/br/ipad/isc/impressao/ZebraUtils;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/br/ipad/isc/impressao/ZebraUtils;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/impressao/ZebraUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/br/ipad/isc/impressao/ZebraUtils;->instance:Lcom/br/ipad/isc/impressao/ZebraUtils;

    .line 47
    :cond_0
    sget-object p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->instance:Lcom/br/ipad/isc/impressao/ZebraUtils;

    return-object p0
.end method

.method private imprimirZebra(Ljava/lang/StringBuilder;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    const-string v0, "ZebraUtil"

    const-string v1, "DLS"

    const-string v2, "imprimirZebra: INICIO"

    .line 141
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v2, Lcom/zebra/sdk/comm/BluetoothConnection;

    iget-object v3, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/br/ipad/isc/util/SettingsHelper;->getBluetoothAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zebra/sdk/comm/BluetoothConnection;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0xbb8

    const/4 v5, 0x0

    .line 146
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    const-string v3, "imprimirZebra: abre conexao"

    .line 147
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-interface {v2}, Lcom/zebra/sdk/comm/Connection;->open()V

    const-wide/16 v3, 0x1f4

    .line 149
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 155
    invoke-interface {v2}, Lcom/zebra/sdk/comm/Connection;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 156
    invoke-virtual {p0}, Lcom/br/ipad/isc/impressao/ZebraUtils;->isCPCLPrinter()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 158
    sget-object v6, Lcom/zebra/sdk/printer/PrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-static {v6, v2}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getInstance(Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object v6

    goto :goto_0

    .line 161
    :cond_0
    sget-object v6, Lcom/zebra/sdk/printer/PrinterLanguage;->ZPL:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-static {v6, v2}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getInstance(Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object v6

    .line 164
    :goto_0
    invoke-virtual {p0}, Lcom/br/ipad/isc/impressao/ZebraUtils;->isCPCLPrinter()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v5

    goto :goto_1

    .line 167
    :cond_1
    new-instance v6, Lcom/zebra/sdk/comm/BluetoothStatusConnection;

    iget-object v7, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->ctx:Landroid/content/Context;

    invoke-static {v7}, Lcom/br/ipad/isc/util/SettingsHelper;->getBluetoothAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/zebra/sdk/comm/BluetoothStatusConnection;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    :try_start_1
    invoke-interface {v6}, Lcom/zebra/sdk/comm/Connection;->open()V

    .line 169
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 170
    invoke-static {v6}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getLinkOsPrinter(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object v7
    :try_end_1
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v8, v7

    move-object v7, v6

    move-object v6, v8

    .line 172
    :goto_1
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    const-string v3, "imprimirZebra: verifica status"

    .line 174
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-interface {v6}, Lcom/zebra/sdk/printer/ZebraPrinter;->getCurrentStatus()Lcom/zebra/sdk/printer/PrinterStatus;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/br/ipad/isc/impressao/ZebraUtils;->isStatusImpressoraReady(Lcom/zebra/sdk/printer/PrinterStatus;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "imprimirZebra: impressao"

    .line 176
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/impressao/ZebraUtils;->codificarConta(Ljava/lang/StringBuilder;)[B

    move-result-object p1

    .line 178
    invoke-interface {v2, p1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    const-string p1, "imprimirZebra: impressao fim"

    .line 179
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 199
    :try_start_3
    sput-object v5, Lcom/br/ipad/isc/impressao/ZebraUtils;->instance:Lcom/br/ipad/isc/impressao/ZebraUtils;

    .line 200
    invoke-interface {v2}, Lcom/zebra/sdk/comm/Connection;->close()V
    :try_end_3
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 202
    invoke-virtual {v1}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v7, :cond_2

    .line 206
    :try_start_4
    invoke-interface {v7}, Lcom/zebra/sdk/comm/Connection;->close()V
    :try_end_4
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 208
    invoke-virtual {v1}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    return p1

    .line 199
    :cond_3
    :try_start_5
    sput-object v5, Lcom/br/ipad/isc/impressao/ZebraUtils;->instance:Lcom/br/ipad/isc/impressao/ZebraUtils;

    .line 200
    invoke-interface {v2}, Lcom/zebra/sdk/comm/Connection;->close()V
    :try_end_5
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 202
    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    if-eqz v7, :cond_4

    .line 206
    :try_start_6
    invoke-interface {v7}, Lcom/zebra/sdk/comm/Connection;->close()V
    :try_end_6
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 208
    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_5
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    move-object v6, v7

    goto :goto_8

    :catch_4
    move-exception p1

    move-object v6, v7

    goto :goto_6

    :catch_5
    move-exception p1

    move-object v6, v7

    goto :goto_7

    :catch_6
    move-exception p1

    goto :goto_6

    :catch_7
    move-exception p1

    goto :goto_7

    .line 184
    :cond_5
    :try_start_7
    invoke-static {}, Lcom/br/ipad/isc/util/Bluetooth;->resetarBluetooth()V

    .line 185
    new-instance p1, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {p1}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw p1
    :try_end_7
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    move-object v6, v5

    goto :goto_8

    :catch_8
    move-exception p1

    move-object v6, v5

    .line 193
    :goto_6
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 194
    invoke-static {}, Lcom/br/ipad/isc/util/Bluetooth;->resetarBluetooth()V

    .line 195
    new-instance p1, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {p1}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw p1

    :catch_9
    move-exception p1

    move-object v6, v5

    .line 188
    :goto_7
    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ConnectionException;->printStackTrace()V

    .line 189
    invoke-static {}, Lcom/br/ipad/isc/util/Bluetooth;->resetarBluetooth()V

    .line 190
    new-instance p1, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {p1}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    .line 199
    :goto_8
    :try_start_9
    sput-object v5, Lcom/br/ipad/isc/impressao/ZebraUtils;->instance:Lcom/br/ipad/isc/impressao/ZebraUtils;

    .line 200
    invoke-interface {v2}, Lcom/zebra/sdk/comm/Connection;->close()V
    :try_end_9
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_9

    :catch_a
    move-exception v1

    .line 202
    invoke-virtual {v1}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    if-eqz v6, :cond_6

    .line 206
    :try_start_a
    invoke-interface {v6}, Lcom/zebra/sdk/comm/Connection;->close()V
    :try_end_a
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_a

    :catch_b
    move-exception v1

    .line 208
    invoke-virtual {v1}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    :cond_6
    :goto_a
    throw p1
.end method

.method private initConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    .line 255
    new-instance v0, Lcom/zebra/android/comm/BluetoothPrinterConnection;

    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/br/ipad/isc/util/SettingsHelper;->getBluetoothAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zebra/android/comm/BluetoothPrinterConnection;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->zebraPrinterConnection:Lcom/zebra/android/comm/ZebraPrinterConnection;

    .line 259
    :try_start_0
    invoke-interface {v0}, Lcom/zebra/android/comm/ZebraPrinterConnection;->open()V
    :try_end_0
    .catch Lcom/zebra/android/comm/ZebraPrinterConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 262
    invoke-virtual {v0}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;->printStackTrace()V

    .line 263
    invoke-virtual {p0}, Lcom/br/ipad/isc/impressao/ZebraUtils;->disconnect()V

    .line 264
    new-instance v0, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {v0}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw v0
.end method

.method private isStatusImpressoraReady(Lcom/zebra/sdk/printer/PrinterStatus;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/StatusImpressoraException;
        }
    .end annotation

    .line 216
    iget-boolean v0, p1, Lcom/zebra/sdk/printer/PrinterStatus;->isReadyToPrint:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 219
    :cond_0
    new-instance v0, Lcom/br/ipad/isc/impressao/PrinterStatusMessages;

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/impressao/PrinterStatusMessages;-><init>(Lcom/zebra/sdk/printer/PrinterStatus;)V

    .line 220
    invoke-virtual {v0}, Lcom/br/ipad/isc/impressao/PrinterStatusMessages;->getStatusMessage()[Ljava/lang/String;

    move-result-object p1

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 222
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 223
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_1
    new-instance p1, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private sendLabel([BLcom/zebra/android/printer/ZebraPrinter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    .line 275
    :try_start_0
    invoke-interface {p2}, Lcom/zebra/android/printer/ZebraPrinter;->getCurrentStatus()Lcom/zebra/android/printer/PrinterStatus;

    move-result-object p2

    .line 277
    iget-boolean v0, p2, Lcom/zebra/android/printer/PrinterStatus;->isReadyToPrint:Z

    if-eqz v0, :cond_0

    .line 278
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "1 sendLabel:"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    iget-object p2, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->zebraPrinterConnection:Lcom/zebra/android/comm/ZebraPrinterConnection;

    invoke-interface {p2, p1}, Lcom/zebra/android/comm/ZebraPrinterConnection;->write([B)V
    :try_end_0
    .catch Lcom/zebra/android/comm/ZebraPrinterConnectionException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 p1, 0x1f4

    .line 281
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/zebra/android/comm/ZebraPrinterConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    :catch_0
    :try_start_2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "2 sendLabel: "

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 287
    :cond_0
    iget-boolean p1, p2, Lcom/zebra/android/printer/PrinterStatus;->isPaused:Z

    if-nez p1, :cond_3

    .line 289
    iget-boolean p1, p2, Lcom/zebra/android/printer/PrinterStatus;->isHeadOpen:Z

    if-nez p1, :cond_2

    .line 291
    iget-boolean p1, p2, Lcom/zebra/android/printer/PrinterStatus;->isPaperOut:Z

    if-eqz p1, :cond_1

    .line 292
    new-instance p1, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;

    const-string p2, "A Impressora est\u00e1 sem papel."

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "SendLabel"

    const-string p2, "status not ready"

    .line 294
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance p1, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {p1}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw p1

    .line 290
    :cond_2
    new-instance p1, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;

    const-string p2, "A impressora est\u00e1 com a tampa aberta."

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 288
    :cond_3
    new-instance p1, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;

    const-string p2, "Impressora em pausa."

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lcom/zebra/android/comm/ZebraPrinterConnectionException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 299
    invoke-virtual {p1}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;->printStackTrace()V

    .line 300
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "3 sendLabel: "

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 301
    iput-object p1, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->printer:Lcom/zebra/android/printer/ZebraPrinter;

    .line 302
    new-instance p1, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {p1}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw p1
.end method


# virtual methods
.method public connect()Lcom/zebra/android/printer/ZebraPrinter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->zebraPrinterConnection:Lcom/zebra/android/comm/ZebraPrinterConnection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zebra/android/comm/ZebraPrinterConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/br/ipad/isc/impressao/ZebraUtils;->initConnection()V

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->zebraPrinterConnection:Lcom/zebra/android/comm/ZebraPrinterConnection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/zebra/android/comm/ZebraPrinterConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->zebraPrinterConnection:Lcom/zebra/android/comm/ZebraPrinterConnection;

    invoke-static {v0}, Lcom/zebra/android/printer/ZebraPrinterFactory;->getInstance(Lcom/zebra/android/comm/ZebraPrinterConnection;)Lcom/zebra/android/printer/ZebraPrinter;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/zebra/android/printer/ZebraPrinter;->getPrinterControlLanguage()Lcom/zebra/android/printer/PrinterLanguage;
    :try_end_0
    .catch Lcom/zebra/android/comm/ZebraPrinterConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/zebra/android/printer/ZebraPrinterLanguageUnknownException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {p0}, Lcom/br/ipad/isc/impressao/ZebraUtils;->disconnect()V

    .line 71
    invoke-virtual {v0}, Lcom/zebra/android/printer/ZebraPrinterLanguageUnknownException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Lcom/br/ipad/isc/util/Bluetooth;->resetarBluetooth()V

    .line 73
    new-instance v0, Lcom/br/ipad/isc/excecoes/ImpressaoException;

    const-string v1, "Erro de conex\u00e3o."

    invoke-direct {v0, v1}, Lcom/br/ipad/isc/excecoes/ImpressaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :catch_1
    invoke-virtual {p0}, Lcom/br/ipad/isc/impressao/ZebraUtils;->disconnect()V

    .line 67
    invoke-static {}, Lcom/br/ipad/isc/util/Bluetooth;->resetarBluetooth()V

    .line 68
    new-instance v0, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {v0}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw v0

    :cond_2
    const-string v0, "DLS"

    const-string v1, "ZebraUtils.connect N\u00e3o conectado"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->zebraPrinterConnection:Lcom/zebra/android/comm/ZebraPrinterConnection;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->zebraPrinterConnection:Lcom/zebra/android/comm/ZebraPrinterConnection;

    invoke-interface {v0}, Lcom/zebra/android/comm/ZebraPrinterConnection;->close()V
    :try_end_0
    .catch Lcom/zebra/android/comm/ZebraPrinterConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 87
    :catch_0
    new-instance v0, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {v0}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw v0
.end method

.method public getPrinter(Z)Lcom/zebra/android/printer/ZebraPrinter;
    .locals 0

    .line 233
    :try_start_0
    iget-object p1, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->printer:Lcom/zebra/android/printer/ZebraPrinter;

    if-nez p1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/br/ipad/isc/impressao/ZebraUtils;->connect()Lcom/zebra/android/printer/ZebraPrinter;

    move-result-object p1

    iput-object p1, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->printer:Lcom/zebra/android/printer/ZebraPrinter;
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ImpressaoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 238
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ImpressaoException;->printStackTrace()V

    .line 241
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->printer:Lcom/zebra/android/printer/ZebraPrinter;

    return-object p1
.end method

.method public imprimir(Ljava/lang/StringBuilder;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    .line 248
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/impressao/ZebraUtils;->imprimirZebra(Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1
.end method

.method public isCPCLPrinter()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;
        }
    .end annotation

    const-string v0, "ISC"

    const-string v1, "Inicio isCPCLPrinter() linha 92"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/br/ipad/isc/util/SettingsHelper;->getPrinterType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCPCLPrinter: cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "DLS"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Fim isCPCLPrinter() linha 95"

    .line 95
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Inicio imprimirConta() linha 109"

    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v0, Lcom/zebra/sdk/printer/PrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/PrinterLanguage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    :goto_1
    const-string v1, "Inicio BluetoothConnection() linha 97"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v1, Lcom/zebra/sdk/comm/BluetoothConnection;

    iget-object v5, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/br/ipad/isc/util/SettingsHelper;->getBluetoothAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/zebra/sdk/comm/BluetoothConnection;-><init>(Ljava/lang/String;)V

    const-string v5, "Inicio BluetoothConnection() linha 99"

    .line 99
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v5, "Inicio open() linha 101"

    .line 101
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-interface {v1}, Lcom/zebra/sdk/comm/Connection;->open()V

    const-string v5, "Fim open() linha 104"

    .line 104
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "Fim isConnected() linha 106"

    .line 106
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {v1}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getInstance(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object v5

    const-string v6, "Fim ZebraPrinterFactory() linha 108"

    .line 108
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-interface {v5}, Lcom/zebra/sdk/printer/ZebraPrinter;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v5

    const-string v6, "Fim getPrinterControlLanguage() linha 111"

    .line 111
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v6, p0, Lcom/br/ipad/isc/impressao/ZebraUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/zebra/sdk/printer/PrinterLanguage;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/br/ipad/isc/util/SettingsHelper;->savePrinterType(Landroid/content/Context;Ljava/lang/String;)V

    const-string v6, "Fim savePrinterType() linha 113"

    .line 113
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v6, Lcom/zebra/sdk/printer/PrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/PrinterLanguage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 123
    :goto_2
    :try_start_1
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-interface {v1}, Lcom/zebra/sdk/comm/Connection;->close()V

    .line 125
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Lcom/zebra/sdk/comm/ConnectionException;->printStackTrace()V

    :goto_3
    return v3

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_1
    move-exception v3

    .line 119
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    new-instance v3, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {v3}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :goto_4
    :try_start_3
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-interface {v1}, Lcom/zebra/sdk/comm/Connection;->close()V

    .line 125
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 127
    invoke-virtual {v0}, Lcom/zebra/sdk/comm/ConnectionException;->printStackTrace()V

    .line 129
    :goto_5
    throw v3
.end method

.method public verificaExistenciaImpressoraConfigigurada(Landroid/content/Context;Lcom/br/ipad/isc/bean/ImovelConta;)Z
    .locals 3

    .line 323
    invoke-static {p1}, Lcom/br/ipad/isc/util/SettingsHelper;->getBluetoothAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {p1}, Lcom/br/ipad/isc/util/SettingsHelper;->getPrinterName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 334
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 335
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 336
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "imovel"

    .line 337
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method
