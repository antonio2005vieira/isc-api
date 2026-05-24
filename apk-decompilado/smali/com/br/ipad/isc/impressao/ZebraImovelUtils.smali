.class public Lcom/br/ipad/isc/impressao/ZebraImovelUtils;
.super Ljava/lang/Object;
.source "ZebraImovelUtils.java"


# static fields
.field private static instance:Lcom/br/ipad/isc/impressao/ZebraImovelUtils;

.field private static printerConnection:Lcom/zebra/sdk/comm/Connection;

.field private static statusConn:Lcom/zebra/sdk/comm/Connection;


# instance fields
.field private ctx:Landroid/content/Context;

.field printer:Lcom/zebra/android/printer/ZebraPrinter;

.field private zebraPrinterConnection:Lcom/zebra/android/comm/ZebraPrinterConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISC"

    const-string v1, "Inicio ativarBluetooth() 38"

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Lcom/br/ipad/isc/util/Bluetooth;->ativarBluetooth()Z

    const-string v1, "Fim ativarBluetooth() linha 40"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput-object p1, p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->ctx:Landroid/content/Context;

    return-void
.end method

.method public static close()V
    .locals 4

    const-string v0, "ZebraUtil"

    const-string v1, "ISC"

    :try_start_0
    const-string v2, "Inicio printerConnection.close() linha 78"

    .line 84
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v2, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v2}, Lcom/zebra/sdk/comm/Connection;->close()V

    const-string v2, "Fim printerConnection.close() linha 80"

    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 88
    invoke-virtual {v2}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :goto_0
    sget-object v2, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->statusConn:Lcom/zebra/sdk/comm/Connection;

    if-eqz v2, :cond_0

    :try_start_1
    const-string v2, "Fim close() linha 86"

    .line 92
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v2, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->statusConn:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v2}, Lcom/zebra/sdk/comm/Connection;->close()V

    const-string v2, "Fim close() linha 88"

    .line 94
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 96
    invoke-virtual {v1}, Lcom/zebra/sdk/comm/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void
.end method

.method private codificarConta(Ljava/lang/StringBuilder;)[B
    .locals 2

    .line 385
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v0, "ISO-8859-1"

    .line 388
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 390
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/br/ipad/isc/impressao/ZebraImovelUtils;
    .locals 1

    .line 46
    sget-object v0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->instance:Lcom/br/ipad/isc/impressao/ZebraImovelUtils;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;

    invoke-direct {v0, p0}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->instance:Lcom/br/ipad/isc/impressao/ZebraImovelUtils;

    .line 49
    :cond_0
    sget-object p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->instance:Lcom/br/ipad/isc/impressao/ZebraImovelUtils;

    return-object p0
.end method

.method private imprimirZebra(Ljava/lang/StringBuilder;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    const-string v0, "DLS"

    const-string v1, "ISC"

    const-string v2, "Inicio imprimirZebra() linha 189"

    .line 200
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v2, "imprimirZebra: abre conexao"

    .line 204
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Inicio imprimirZebra() linha 211"

    .line 217
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v2, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v2}, Lcom/zebra/sdk/comm/Connection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Inicio imprimirZebra() linha 213"

    .line 219
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->isCPCLPrinter()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Inicio imprimirZebra() linha 216"

    .line 222
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sget-object v2, Lcom/zebra/sdk/printer/PrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/PrinterLanguage;

    sget-object v3, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-static {v2, v3}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getInstance(Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object v2

    const-string v3, "Inicio imprimirZebra() linha 220"

    .line 226
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "Inicio imprimirZebra() linha 223"

    .line 229
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v2, Lcom/zebra/sdk/printer/PrinterLanguage;->ZPL:Lcom/zebra/sdk/printer/PrinterLanguage;

    sget-object v3, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-static {v2, v3}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getInstance(Lcom/zebra/sdk/printer/PrinterLanguage;Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object v2

    const-string v3, "Inicio imprimirZebra() linha 227"

    .line 233
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v3, "imprimirZebra: abre conexao ZebraPrinterFactory linha 192"

    .line 236
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->isCPCLPrinter()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "imprimirZebra: abre conexao ZebraPrinterFactory linha 197"

    .line 241
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v2, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->statusConn:Lcom/zebra/sdk/comm/Connection;

    invoke-static {v2}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getLinkOsPrinter(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    move-result-object v2

    const-string v3, "Fim impressaoContaSAEMA.imprimirConta(isCPL)"

    .line 243
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v1, "imprimirZebra: abre conexao ZebraPrinterFactory linha 200"

    .line 245
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-interface {v2}, Lcom/zebra/sdk/printer/ZebraPrinter;->getCurrentStatus()Lcom/zebra/sdk/printer/PrinterStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->isStatusImpressoraReady(Lcom/zebra/sdk/printer/PrinterStatus;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "imprimirZebra: impressao"

    .line 247
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->codificarConta(Ljava/lang/StringBuilder;)[B

    move-result-object p1

    .line 249
    sget-object v1, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v1, p1}, Lcom/zebra/sdk/comm/Connection;->write([B)V

    const-string p1, "imprimirZebra: impressao fim"

    .line 250
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 257
    :cond_3
    new-instance p1, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {p1}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw p1
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    .line 265
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    new-instance p1, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {p1}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw p1

    .line 261
    :goto_3
    invoke-virtual {p1}, Lcom/zebra/sdk/comm/ConnectionException;->printStackTrace()V

    .line 262
    new-instance p1, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {p1}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :goto_4
    throw p1
.end method

.method private initConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    const-string v0, "ISC"

    const-string v1, "Fim isConnected() linha 283"

    .line 329
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v1, Lcom/zebra/android/comm/BluetoothPrinterConnection;

    iget-object v2, p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/br/ipad/isc/util/SettingsHelper;->getBluetoothAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zebra/android/comm/BluetoothPrinterConnection;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->zebraPrinterConnection:Lcom/zebra/android/comm/ZebraPrinterConnection;

    const-string v1, "Fim isConnected() linha 285"

    .line 331
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "Fim open() linha 287"

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->zebraPrinterConnection:Lcom/zebra/android/comm/ZebraPrinterConnection;

    invoke-interface {v1}, Lcom/zebra/android/comm/ZebraPrinterConnection;->open()V

    const-string v1, "Fim open() linha 289"

    .line 335
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/zebra/android/comm/ZebraPrinterConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    .line 341
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    .line 337
    :goto_2
    invoke-virtual {v0}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;->printStackTrace()V

    .line 338
    invoke-virtual {p0}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->disconnect()V

    .line 339
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

    .line 290
    iget-boolean v0, p1, Lcom/zebra/sdk/printer/PrinterStatus;->isReadyToPrint:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 293
    :cond_0
    new-instance v0, Lcom/br/ipad/isc/impressao/PrinterStatusMessages;

    invoke-direct {v0, p1}, Lcom/br/ipad/isc/impressao/PrinterStatusMessages;-><init>(Lcom/zebra/sdk/printer/PrinterStatus;)V

    .line 294
    invoke-virtual {v0}, Lcom/br/ipad/isc/impressao/PrinterStatusMessages;->getStatusMessage()[Ljava/lang/String;

    move-result-object p1

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 296
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 297
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
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

.method public static open(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ISC"

    const-string v1, "Inicio ZebraUtils Open() linha 53"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Inicio BluetoothConnection() linha 54"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v1, Lcom/zebra/sdk/comm/BluetoothConnection;

    invoke-static {p0}, Lcom/br/ipad/isc/util/SettingsHelper;->getBluetoothAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zebra/sdk/comm/BluetoothConnection;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    const-string v1, "Fim BluetoothConnection() linha 56"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Inicio printerStatus() linha 57"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Fim printerStatus() linha 59"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "Inicio isConnected() linha 61"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v1, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v1}, Lcom/zebra/sdk/comm/Connection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Inicio open() linha 63"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v1, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->printerConnection:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {v1}, Lcom/zebra/sdk/comm/Connection;->open()V

    const-string v1, "Fim open() linha 65"

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "Fim isConnected() linha 67"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Inicio BluetoothStatusConnection() linha 68"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v1, Lcom/zebra/sdk/comm/BluetoothStatusConnection;

    invoke-static {p0}, Lcom/br/ipad/isc/util/SettingsHelper;->getBluetoothAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/zebra/sdk/comm/BluetoothStatusConnection;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->statusConn:Lcom/zebra/sdk/comm/Connection;

    const-string p0, "Fim BluetoothStatusConnection() linha 70"

    .line 70
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Inicio open() linha 71"

    .line 71
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->statusConn:Lcom/zebra/sdk/comm/Connection;

    invoke-interface {p0}, Lcom/zebra/sdk/comm/Connection;->open()V

    const-string p0, "Fim open() linha 73"

    .line 73
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Inicio getLinkOsPrinter() linha 74"

    .line 74
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->statusConn:Lcom/zebra/sdk/comm/Connection;

    invoke-static {p0}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getLinkOsPrinter(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;

    const-string p0, "Fim getLinkOsPrinter() linha 76"

    .line 76
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/zebra/sdk/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Lcom/zebra/sdk/comm/ConnectionException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private sendLabel([BLcom/zebra/android/printer/ZebraPrinter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    .line 350
    :try_start_0
    invoke-interface {p2}, Lcom/zebra/android/printer/ZebraPrinter;->getCurrentStatus()Lcom/zebra/android/printer/PrinterStatus;

    move-result-object p2

    .line 352
    iget-boolean v0, p2, Lcom/zebra/android/printer/PrinterStatus;->isReadyToPrint:Z

    if-eqz v0, :cond_0

    .line 353
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "1 sendLabel:"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 354
    iget-object p2, p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->zebraPrinterConnection:Lcom/zebra/android/comm/ZebraPrinterConnection;

    invoke-interface {p2, p1}, Lcom/zebra/android/comm/ZebraPrinterConnection;->write([B)V
    :try_end_0
    .catch Lcom/zebra/android/comm/ZebraPrinterConnectionException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 p1, 0x1f4

    .line 356
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/zebra/android/comm/ZebraPrinterConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 360
    :catch_0
    :try_start_2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "2 sendLabel: "

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 362
    :cond_0
    iget-boolean p1, p2, Lcom/zebra/android/printer/PrinterStatus;->isPaused:Z

    if-nez p1, :cond_3

    .line 364
    iget-boolean p1, p2, Lcom/zebra/android/printer/PrinterStatus;->isHeadOpen:Z

    if-nez p1, :cond_2

    .line 366
    iget-boolean p1, p2, Lcom/zebra/android/printer/PrinterStatus;->isPaperOut:Z

    if-eqz p1, :cond_1

    .line 367
    new-instance p1, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;

    const-string p2, "A Impressora est\u00e1 sem papel."

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "SendLabel"

    const-string p2, "status not ready"

    .line 369
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance p1, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {p1}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw p1

    .line 365
    :cond_2
    new-instance p1, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;

    const-string p2, "A impressora est\u00e1 com a tampa aberta."

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 363
    :cond_3
    new-instance p1, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;

    const-string p2, "Impressora em pausa."

    invoke-direct {p1, p2}, Lcom/br/ipad/isc/excecoes/StatusImpressoraException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lcom/zebra/android/comm/ZebraPrinterConnectionException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 374
    invoke-virtual {p1}, Lcom/zebra/android/comm/ZebraPrinterConnectionException;->printStackTrace()V

    .line 375
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "3 sendLabel: "

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 376
    iput-object p1, p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->printer:Lcom/zebra/android/printer/ZebraPrinter;

    .line 377
    new-instance p1, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {p1}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw p1
.end method


# virtual methods
.method public connect()Lcom/zebra/android/printer/ZebraPrinter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->zebraPrinterConnection:Lcom/zebra/android/comm/ZebraPrinterConnection;

    const-string v1, "ISC"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zebra/android/comm/ZebraPrinterConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Inicio initConnection() linha 93"

    .line 106
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->initConnection()V

    :cond_1
    const-string v0, "Fim initConnection() linha 195"

    .line 109
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->zebraPrinterConnection:Lcom/zebra/android/comm/ZebraPrinterConnection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/zebra/android/comm/ZebraPrinterConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    const-string v0, "Fim isConnected() linha 98"

    .line 112
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->zebraPrinterConnection:Lcom/zebra/android/comm/ZebraPrinterConnection;

    invoke-static {v0}, Lcom/zebra/android/printer/ZebraPrinterFactory;->getInstance(Lcom/zebra/android/comm/ZebraPrinterConnection;)Lcom/zebra/android/printer/ZebraPrinter;

    move-result-object v0

    const-string v2, "Inicio getPrinterControlLanguage() linha 103"

    .line 116
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-interface {v0}, Lcom/zebra/android/printer/ZebraPrinter;->getPrinterControlLanguage()Lcom/zebra/android/printer/PrinterLanguage;

    const-string v2, "Fim getPrinterControlLanguage() linha 105"

    .line 118
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/zebra/android/comm/ZebraPrinterConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/zebra/android/printer/ZebraPrinterLanguageUnknownException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Inicio disconnect() linha 115"

    .line 128
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->disconnect()V

    const-string v2, "Fim disconnect() linha 117"

    .line 130
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v0}, Lcom/zebra/android/printer/ZebraPrinterLanguageUnknownException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Lcom/br/ipad/isc/util/Bluetooth;->resetarBluetooth()V

    const-string v0, "Fim resetarBluetooth() linha 120"

    .line 133
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Lcom/br/ipad/isc/excecoes/ImpressaoException;

    const-string v1, "Erro de conex\u00e3o."

    invoke-direct {v0, v1}, Lcom/br/ipad/isc/excecoes/ImpressaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    const-string v0, "Inicio disconnect() linha 108"

    .line 121
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->disconnect()V

    const-string v0, "Fim disconnect() linha 110"

    .line 123
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/br/ipad/isc/util/Bluetooth;->resetarBluetooth()V

    const-string v0, "Fim resetarBluetooth() linha 112"

    .line 125
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {v0}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw v0

    :cond_2
    const-string v0, "DLS"

    const-string v1, "ZebraUtils.connect N\u00e3o conectado"

    .line 137
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

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->zebraPrinterConnection:Lcom/zebra/android/comm/ZebraPrinterConnection;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->zebraPrinterConnection:Lcom/zebra/android/comm/ZebraPrinterConnection;

    invoke-interface {v0}, Lcom/zebra/android/comm/ZebraPrinterConnection;->close()V
    :try_end_0
    .catch Lcom/zebra/android/comm/ZebraPrinterConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 148
    :catch_0
    new-instance v0, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {v0}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw v0
.end method

.method public getPrinter(Z)Lcom/zebra/android/printer/ZebraPrinter;
    .locals 1

    const-string p1, "ISC"

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->printer:Lcom/zebra/android/printer/ZebraPrinter;

    if-nez v0, :cond_0

    const-string v0, "Fim isConnected() linha 263"

    .line 308
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p0}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->connect()Lcom/zebra/android/printer/ZebraPrinter;

    move-result-object v0

    iput-object v0, p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->printer:Lcom/zebra/android/printer/ZebraPrinter;

    const-string v0, "Fim isConnected() linha 265"

    .line 310
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/br/ipad/isc/excecoes/ImpressaoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 313
    invoke-virtual {p1}, Lcom/br/ipad/isc/excecoes/ImpressaoException;->printStackTrace()V

    .line 316
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->printer:Lcom/zebra/android/printer/ZebraPrinter;

    return-object p1
.end method

.method public imprimir(Ljava/lang/StringBuilder;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ImpressaoException;
        }
    .end annotation

    .line 323
    invoke-direct {p0, p1}, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->imprimirZebra(Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1
.end method

.method public isCPCLPrinter()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/br/ipad/isc/util/SettingsHelper;->getPrinterType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISC"

    const-string v2, "Inicio isCPCLPrinter() linha 148"

    .line 154
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCPCLPrinter: cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

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

    const-string v2, "Inicio imprimirZebra() linha 189"

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 189
    :cond_1
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v1, Lcom/zebra/sdk/printer/PrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/PrinterLanguage;

    invoke-virtual {v1}, Lcom/zebra/sdk/printer/PrinterLanguage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    :goto_1
    const-string v0, "Fim BluetoothConnection() linha 152"

    .line 158
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v0, Lcom/zebra/sdk/comm/BluetoothConnection;

    iget-object v5, p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/br/ipad/isc/util/SettingsHelper;->getBluetoothAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/zebra/sdk/comm/BluetoothConnection;-><init>(Ljava/lang/String;)V

    const-string v5, "Fim BluetoothConnection() linha 154"

    .line 160
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v5, "Fim open() linha 156"

    .line 162
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->open()V

    const-string v5, "Fim open() linha 158"

    .line 164
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-interface {v0}, Lcom/zebra/sdk/comm/Connection;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v2, "Fim isConnected() linha 161"

    .line 167
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {v0}, Lcom/zebra/sdk/printer/ZebraPrinterFactory;->getInstance(Lcom/zebra/sdk/comm/Connection;)Lcom/zebra/sdk/printer/ZebraPrinter;

    move-result-object v0

    const-string v2, "Fim ZebraPrinterFactory() linha 163"

    .line 169
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-interface {v0}, Lcom/zebra/sdk/printer/ZebraPrinter;->getPrinterControlLanguage()Lcom/zebra/sdk/printer/PrinterLanguage;

    move-result-object v0

    const-string v2, "Fim getPrinterControlLanguage() linha 166"

    .line 172
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/br/ipad/isc/impressao/ZebraImovelUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/zebra/sdk/printer/PrinterLanguage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/br/ipad/isc/util/SettingsHelper;->savePrinterType(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "Fim savePrinterType() linha 168"

    .line 174
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v1, Lcom/zebra/sdk/printer/PrinterLanguage;->CPCL:Lcom/zebra/sdk/printer/PrinterLanguage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    return v3

    .line 193
    :cond_4
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v0, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {v0}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 178
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    new-instance v0, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;

    invoke-direct {v0}, Lcom/br/ipad/isc/excecoes/ConexaoImpressoraException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :goto_3
    throw v0
.end method

.method public verificaExistenciaImpressoraConfigigurada(Landroid/content/Context;Lcom/br/ipad/isc/bean/ImovelConta;)Z
    .locals 3

    .line 398
    invoke-static {p1}, Lcom/br/ipad/isc/util/SettingsHelper;->getBluetoothAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-static {p1}, Lcom/br/ipad/isc/util/SettingsHelper;->getPrinterName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 401
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 409
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/br/ipad/isc/gui/ListaImpressorasActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 410
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 411
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "imovel"

    .line 412
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 413
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method
