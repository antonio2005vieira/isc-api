.class public Lcom/br/ipad/isc/util/Bluetooth;
.super Ljava/lang/Object;
.source "Bluetooth.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ativarBluetooth()Z
    .locals 3

    .line 10
    sget-boolean v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIMULADOR:Z

    if-nez v0, :cond_0

    .line 11
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const-string v1, "DLS"

    const-string v2, "bluetooth: verifica se ta habilitado"

    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "bluetooth: Habilita"

    .line 14
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static desativarBluetooth()Z
    .locals 2

    .line 26
    sget-boolean v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIMULADOR:Z

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    const-string v0, "DLS"

    const-string v1, "bluetooth: desabilita"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static resetarBluetooth()V
    .locals 2

    .line 42
    sget-boolean v0, Lcom/br/ipad/isc/util/ConstantesSistema;->SIMULADOR:Z

    if-nez v0, :cond_1

    .line 44
    invoke-static {}, Lcom/br/ipad/isc/util/Bluetooth;->desativarBluetooth()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x5dc

    .line 46
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 52
    :cond_0
    :goto_0
    invoke-static {}, Lcom/br/ipad/isc/util/Bluetooth;->ativarBluetooth()Z

    :cond_1
    return-void
.end method
