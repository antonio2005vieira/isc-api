.class public Lcom/zebra/sdk/util/internal/SGDUtilities;
.super Ljava/lang/Object;


# static fields
.field public static final APPL_NAME:Ljava/lang/String; = "appl.name"

.field public static final CALIBRATE_PRINTER:Ljava/lang/String; = "zpl.calibrate"

.field public static final CALIBRATE_PRINTER_JSON:Ljava/lang/String; = "{}{\"zpl.calibrate\":\"\"}"

.field public static final DEVICE_LANGUAGES:Ljava/lang/String; = "device.languages"

.field public static final DEVICE_RESET:Ljava/lang/String; = "device.reset"

.field public static final DISCOVERY_NAME:Ljava/lang/String; = "ip.discovery_packet"

.field public static final HOST_STATUS:Ljava/lang/String; = "device.host_status"

.field public static final NETWORK_DEFAULT:Ljava/lang/String; = "device.prompted_default_network"

.field public static final NETWORK_DEFAULT_JSON:Ljava/lang/String; = "{}{\"device.prompted_default_network\":\"y\"}"

.field public static final NETWORK_RESET:Ljava/lang/String; = "device.prompted_network_reset"

.field public static final NETWORK_RESET_JSON:Ljava/lang/String; = "{}{\"device.prompted_network_reset\":\"y\"}"

.field public static final PRINTER_DEFAULT:Ljava/lang/String; = "ezpl.restore_defaults"

.field public static final PRINTER_DEFAULT_JSON:Ljava/lang/String; = "{}{\"ezpl.restore_defaults\":\"reload printer\"}"

.field public static final PRINTER_RESET_JSON:Ljava/lang/String; = "{}{\"device.reset\":\"\"}"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decorateWithGetCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "! U1 getvar \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
