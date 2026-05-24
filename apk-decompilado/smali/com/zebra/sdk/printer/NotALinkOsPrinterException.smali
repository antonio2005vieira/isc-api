.class public Lcom/zebra/sdk/printer/NotALinkOsPrinterException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x9dbfc7066f01a0fL


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "This is not a Link-OS printer"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
