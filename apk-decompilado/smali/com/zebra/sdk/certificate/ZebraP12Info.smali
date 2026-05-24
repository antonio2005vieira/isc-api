.class public Lcom/zebra/sdk/certificate/ZebraP12Info;
.super Ljava/lang/Object;


# instance fields
.field private firstAlias:Ljava/lang/String;

.field private keyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    const-string v0, "The provided password was incorrect."

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    const-string v1, ""

    iput-object v1, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->firstAlias:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getPkcs12KeyStore(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->firstAlias:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v0, "The provided stream does not appear to contain valid certificate content or the password is incorrect."

    invoke-direct {p2, v0, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "password"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "The provided certificate file was invalid."

    :goto_0
    new-instance p2, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    invoke-direct {p2, v0, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    invoke-direct {p2, v0, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getPkcs12KeyStore(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljavax/crypto/BadPaddingException;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided password was incorrect."

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_0
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to read contents of the certificate file - make sure that the provided password is correct."

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public getAliases()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    const-string v1, "The certificate file was not valid."

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    invoke-direct {v2, v1, v0}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    new-instance v0, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    invoke-direct {v0, v1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getCaCommonName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->firstAlias:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getCaCommonName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaCommonName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getAliases()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesFactory;->getCertUtilities()Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    invoke-interface {v0, p1, v1}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;->getCertificateChain(Ljava/lang/String;Ljava/security/KeyStore;)[Ljava/security/cert/Certificate;

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    check-cast p1, Ljava/security/cert/X509Certificate;

    :try_start_0
    invoke-static {}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesFactory;->getCertificateHelper()Lcom/zebra/sdk/certificate/internal/CertificateHelperI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zebra/sdk/certificate/internal/CertificateHelperI;->getCommonNameHelper(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v1, "The certificate could not be parsed for a common name."

    invoke-direct {v0, v1, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The provided alias \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" was not found in the provided keystore."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v0, "The certificate file was not valid."

    invoke-direct {p1, v0}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCaContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->firstAlias:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getCaContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getAliases()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesFactory;->getCertUtilities()Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;

    move-result-object v1

    iget-object v2, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    invoke-interface {v1, p1, v0, v2}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;->getCaFromPkcs12Keystore(Ljava/lang/String;Ljava/io/OutputStream;Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v0, "The provided certificate file does not contain a ca."

    invoke-direct {p1, v0}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v1, "Failed to retrieve the ca contents"

    invoke-direct {v0, v1, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The provided alias \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" was not found in the provided keystore."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v0, "The certificate file was not valid."

    invoke-direct {p1, v0}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCaExpirationDate()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->firstAlias:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getCertificateExpirationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCaExpirationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getAliases()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesFactory;->getCertUtilities()Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    invoke-interface {v0, p1, v1}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;->getCertificateChain(Ljava/lang/String;Ljava/security/KeyStore;)[Ljava/security/cert/Certificate;

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The provided alias \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" was not found in the provided keystore."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v0, "The certificate file was not valid."

    invoke-direct {p1, v0}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCertificateCommonName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->firstAlias:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getCertificateCommonName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateCommonName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getAliases()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesFactory;->getCertUtilities()Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    invoke-interface {v0, p1, v1}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;->getCertificateChain(Ljava/lang/String;Ljava/security/KeyStore;)[Ljava/security/cert/Certificate;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/security/cert/X509Certificate;

    :try_start_0
    invoke-static {}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesFactory;->getCertificateHelper()Lcom/zebra/sdk/certificate/internal/CertificateHelperI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zebra/sdk/certificate/internal/CertificateHelperI;->getCommonNameHelper(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v1, "The certificate could not be parsed for a common name."

    invoke-direct {v0, v1, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The provided alias \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" was not found in the provided keystore."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v0, "The certificate file was not valid."

    invoke-direct {p1, v0}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCertificateContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->firstAlias:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getCertificateContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getAliases()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesFactory;->getCertUtilities()Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;

    move-result-object v1

    iget-object v2, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    invoke-interface {v1, p1, v0, v2}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;->getCertificateFromPkcs12Keystore(Ljava/lang/String;Ljava/io/OutputStream;Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v1, "Failed to retrieve the certificate contents"

    invoke-direct {v0, v1, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The provided alias \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" was not found in the provided keystore."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v0, "The certificate file was not valid."

    invoke-direct {p1, v0}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCertificateExpirationDate()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->firstAlias:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getCertificateExpirationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateExpirationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getAliases()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesFactory;->getCertUtilities()Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    invoke-interface {v0, p1, v1}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;->getCertificateChain(Ljava/lang/String;Ljava/security/KeyStore;)[Ljava/security/cert/Certificate;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The provided alias \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" was not found in the provided keystore."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v0, "The certificate file was not valid."

    invoke-direct {p1, v0}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCertificateIssuer()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->firstAlias:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getCertificateIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateIssuer(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getAliases()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesFactory;->getCertUtilities()Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    invoke-interface {v0, p1, v1}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;->getCertificateChain(Ljava/lang/String;Ljava/security/KeyStore;)[Ljava/security/cert/Certificate;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The provided alias \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" was not found in the provided keystore."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v0, "The certificate file was not valid."

    invoke-direct {p1, v0}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEncryptedPrivateKeyContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->firstAlias:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getEncryptedPrivateKeyContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEncryptedPrivateKeyContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getAliases()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesFactory;->getCertUtilities()Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;

    move-result-object v1

    iget-object v6, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, v0

    invoke-interface/range {v1 .. v6}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;->getPrivateKeyFromPkcs12Keystore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string p3, "Failed to retrieve the private key contents"

    invoke-direct {p2, p3, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string p3, "Could not recover the key from the provided certificate keystore."

    invoke-direct {p2, p3, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p2, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The provided alias \""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" was not found in the provided keystore."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string p2, "The certificate file was not valid."

    invoke-direct {p1, p2}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getKeyStore()Ljava/security/KeyStore;
    .locals 1

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method public getPrivateKeyAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->firstAlias:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getPrivateKeyAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKeyAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getAliases()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesFactory;->getCertUtilities()Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    invoke-interface {v0, p1, p2, v1}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;->getPrivateKey(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;)Ljava/security/PrivateKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v0, "Could not recover the key from the provided certificate keystore."

    invoke-direct {p2, v0, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p2, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The provided alias \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" was not found in the provided keystore."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string p2, "The certificate file was not valid."

    invoke-direct {p1, p2}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrivateKeyFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->firstAlias:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getPrivateKeyFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKeyFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getAliases()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesFactory;->getCertUtilities()Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;

    move-result-object v0

    iget-object v1, p0, Lcom/zebra/sdk/certificate/ZebraP12Info;->keyStore:Ljava/security/KeyStore;

    invoke-interface {v0, p1, p2, v1}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;->getPrivateKey(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;)Ljava/security/PrivateKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v0, "Could not recover the key from the provided certificate keystore."

    invoke-direct {p2, v0, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p2, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The provided alias \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" was not found in the provided keystore."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string p2, "The certificate file was not valid."

    invoke-direct {p1, p2}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
