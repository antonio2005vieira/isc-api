.class public Lcom/zebra/sdk/certificate/ZebraCertificateInfo;
.super Ljava/lang/Object;


# static fields
.field public static final CA_CERT_NRD_PRINTER_FILE_NAME:Ljava/lang/String; = "E:CACERTSV.NRD"

.field public static final CLIENT_CERT_NRD_PRINTER_FILE_NAME:Ljava/lang/String; = "E:CERTCLN.NRD"

.field public static final CLIENT_PRIVATE_KEY_NRD_PRINTER_FILE_NAME:Ljava/lang/String; = "E:PRIVKEY.NRD"


# instance fields
.field public caCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public clientCertificate:Ljava/lang/String;

.field public privateKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zebra/sdk/certificate/ZebraCertificateInfo;->caCertificates:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCaChain()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraCertificateInfo;->caCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/zebra/sdk/certificate/ZebraCertificateInfo;->caCertificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
