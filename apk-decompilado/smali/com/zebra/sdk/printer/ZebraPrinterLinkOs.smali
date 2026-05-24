.class public interface abstract Lcom/zebra/sdk/printer/ZebraPrinterLinkOs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/printer/ZebraPrinter;
.implements Lcom/zebra/sdk/device/Device;
.implements Lcom/zebra/sdk/printer/ProfileUtil;
.implements Lcom/zebra/sdk/printer/FontUtil;
.implements Lcom/zebra/sdk/printer/AlertProvider;
.implements Lcom/zebra/sdk/device/FileUtilLinkOs;
.implements Lcom/zebra/sdk/printer/FormatUtilLinkOs;
.implements Lcom/zebra/sdk/printer/ToolsUtilLinkOs;
.implements Lcom/zebra/sdk/printer/FirmwareUpdaterLinkOs;


# virtual methods
.method public abstract getGetCommunityName()Ljava/lang/String;
.end method

.method public abstract getLinkOsInformation()Lcom/zebra/sdk/printer/LinkOsInformation;
.end method

.method public abstract getPortStatus()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zebra/sdk/printer/TcpPortStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/comm/ConnectionException;
        }
    .end annotation
.end method

.method public abstract setGetCommunityName(Ljava/lang/String;)V
.end method
