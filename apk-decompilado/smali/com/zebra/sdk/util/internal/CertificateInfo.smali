.class public Lcom/zebra/sdk/util/internal/CertificateInfo;
.super Ljava/lang/Object;


# instance fields
.field protected certificate:Ljava/lang/String;

.field protected resultMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected userRequestInfo:Lcom/zebra/sdk/util/internal/CertificateSigningRequestInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zebra/sdk/util/internal/CertificateSigningRequestInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/util/internal/CertificateInfo;->setUserRequestInfo(Lcom/zebra/sdk/util/internal/CertificateSigningRequestInfo;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/CertificateInfo;->resultMessages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCertificate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/CertificateInfo;->certificate:Ljava/lang/String;

    return-object v0
.end method

.method public getResultMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/CertificateInfo;->resultMessages:Ljava/util/List;

    return-object v0
.end method

.method public getUserRequestInfo()Lcom/zebra/sdk/util/internal/CertificateSigningRequestInfo;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/util/internal/CertificateInfo;->userRequestInfo:Lcom/zebra/sdk/util/internal/CertificateSigningRequestInfo;

    return-object v0
.end method

.method public setCertificate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/CertificateInfo;->certificate:Ljava/lang/String;

    return-void
.end method

.method public setResultMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/CertificateInfo;->resultMessages:Ljava/util/List;

    return-void
.end method

.method public setUserRequestInfo(Lcom/zebra/sdk/util/internal/CertificateSigningRequestInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zebra/sdk/util/internal/CertificateInfo;->userRequestInfo:Lcom/zebra/sdk/util/internal/CertificateSigningRequestInfo;

    return-void
.end method
