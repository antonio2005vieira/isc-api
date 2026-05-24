.class public Lcom/br/ipad/isc/util/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "OurSavedAddress"

.field private static final bluetoothAddressKey:Ljava/lang/String; = "ZEBRA_DEMO_BLUETOOTH_ADDRESS"

.field private static final horarioUltimaRequisicao:Ljava/lang/String; = "HORARIO_ULTIMA_REQUISICAO"

.field private static final printerNameKey:Ljava/lang/String; = "ZEBRA_PRINTER_NAME"

.field private static final printerTypeKey:Ljava/lang/String; = "ZEBRA_PRINTER_TYPE"

.field private static final printerTypeZebra:Ljava/lang/String; = "ZEBRA_TYPE"

.field private static final tcpAddressKey:Ljava/lang/String; = "ZEBRA_DEMO_TCP_ADDRESS"

.field private static final tcpPortKey:Ljava/lang/String; = "ZEBRA_DEMO_TCP_PORT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBluetoothAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "OurSavedAddress"

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ZEBRA_DEMO_BLUETOOTH_ADDRESS"

    const-string v1, ""

    .line 43
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHorarioUltimaRequisicao(Landroid/content/Context;)J
    .locals 3

    const-string v0, "OurSavedAddress"

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "HORARIO_ULTIMA_REQUISICAO"

    const-wide/16 v1, 0x0

    .line 121
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getIp(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "OurSavedAddress"

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ZEBRA_DEMO_TCP_ADDRESS"

    const-string v1, ""

    .line 33
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPort(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "OurSavedAddress"

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ZEBRA_DEMO_TCP_PORT"

    const-string v1, ""

    .line 38
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrinterName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "OurSavedAddress"

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ZEBRA_PRINTER_NAME"

    const-string v1, ""

    .line 48
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrinterType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "OurSavedAddress"

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ZEBRA_PRINTER_TYPE"

    const-string v2, ""

    .line 99
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0}, Lcom/br/ipad/isc/util/SettingsHelper;->getBluetoothAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x11

    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPrinterTypeZebra(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "OurSavedAddress"

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ZEBRA_TYPE"

    .line 116
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static saveBluetoothAddress(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "OurSavedAddress"

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 67
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "ZEBRA_DEMO_BLUETOOTH_ADDRESS"

    .line 68
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveIp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "OurSavedAddress"

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 53
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "ZEBRA_DEMO_TCP_ADDRESS"

    .line 54
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveIsCPL(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "OurSavedAddress"

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 109
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "ZEBRA_TYPE"

    .line 110
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static savePort(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "OurSavedAddress"

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 60
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "ZEBRA_DEMO_TCP_PORT"

    .line 61
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static savePrinterName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "OurSavedAddress"

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 74
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "ZEBRA_PRINTER_NAME"

    .line 75
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static savePrinterType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "OurSavedAddress"

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/br/ipad/isc/util/SettingsHelper;->getBluetoothAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZEBRA_PRINTER_TYPE"

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setHorarioUltimaRequisicao(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "OurSavedAddress"

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 126
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "HORARIO_ULTIMA_REQUISICAO"

    .line 127
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
