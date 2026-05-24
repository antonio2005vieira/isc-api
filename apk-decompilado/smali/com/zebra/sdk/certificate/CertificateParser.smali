.class public Lcom/zebra/sdk/certificate/CertificateParser;
.super Ljava/lang/Object;


# static fields
.field private static final CERTIFICATE_PATTERN:Ljava/lang/String; = "(-----BEGIN CERTIFICATE-----.*?-----END CERTIFICATE-----)"

.field private static final PEM_PATTERN:Ljava/lang/String; = "(-----BEGIN .*?-----.*?-----END .*?-----)"

.field private static final PRIVATE_KEY_PATTERN:Ljava/lang/String; = "(-----BEGIN( RSA)? PRIVATE KEY-----.*?-----END( RSA)? PRIVATE KEY-----)"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addCertificate(Lcom/zebra/sdk/certificate/ZebraCertificateInfo;Ljava/security/cert/CertificateFactory;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/zebra/sdk/certificate/ZebraCertificateInfo;->clientCertificate:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zebra/sdk/certificate/ZebraCertificateInfo;->caCertificates:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private static getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 1

    const/16 v0, 0x28

    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    return-object p0
.end method

.method private static getPrivateKeyFromPem(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "(-----BEGIN( RSA)? PRIVATE KEY-----.*?-----END( RSA)? PRIVATE KEY-----)"

    invoke-static {v0, p0}, Lcom/zebra/sdk/certificate/CertificateParser;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseAsCertificate([BLcom/zebra/sdk/certificate/ZebraCertificateInfo;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "\r\n"

    :try_start_0
    const-string v2, "X.509"

    invoke-static {}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesFactory;->getCertificateHelper()Lcom/zebra/sdk/certificate/internal/CertificateHelperI;

    move-result-object v3

    invoke-interface {v3}, Lcom/zebra/sdk/certificate/internal/CertificateHelperI;->getCertificateProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    invoke-static {}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesFactory;->getCertificateHelper()Lcom/zebra/sdk/certificate/internal/CertificateHelperI;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/zebra/sdk/certificate/internal/CertificateHelperI;->pemWriterHelper(Ljava/security/cert/Certificate;Ljava/io/StringWriter;)V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/zebra/sdk/certificate/CertificateParser;->addCertificate(Lcom/zebra/sdk/certificate/ZebraCertificateInfo;Ljava/security/cert/CertificateFactory;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static parseAsDerPrivateKey([BLcom/zebra/sdk/certificate/ZebraCertificateInfo;)Z
    .locals 4

    const-string v0, "\n"

    const-string v1, "\r\n"

    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    :try_start_0
    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-static {}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesFactory;->getCertificateHelper()Lcom/zebra/sdk/certificate/internal/CertificateHelperI;

    move-result-object v3

    invoke-interface {v3, p0, v2}, Lcom/zebra/sdk/certificate/internal/CertificateHelperI;->pemWriterHelper(Ljava/security/PrivateKey;Ljava/io/StringWriter;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/zebra/sdk/certificate/ZebraCertificateInfo;->privateKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static parseAsP12([BLcom/zebra/sdk/certificate/ZebraCertificateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;,
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance v0, Lcom/zebra/sdk/certificate/ZebraP12Info;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, p3}, Lcom/zebra/sdk/certificate/ZebraP12Info;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getCertificateContent()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/zebra/sdk/certificate/ZebraCertificateInfo;->clientCertificate:Ljava/lang/String;

    invoke-virtual {v0, p3, p3}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getEncryptedPrivateKeyContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/zebra/sdk/certificate/ZebraCertificateInfo;->privateKey:Ljava/lang/String;

    invoke-static {}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesFactory;->getCertUtilities()Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;

    move-result-object p0

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getKeyStore()Ljava/security/KeyStore;

    move-result-object p2

    invoke-virtual {p2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Lcom/zebra/sdk/certificate/ZebraP12Info;->getKeyStore()Ljava/security/KeyStore;

    move-result-object p3

    invoke-interface {p0, p2, p3}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;->getCertificateChain(Ljava/lang/String;Ljava/security/KeyStore;)[Ljava/security/cert/Certificate;

    move-result-object p2

    const/4 p3, 0x1

    :goto_0
    array-length v0, p2

    if-ge p3, v0, :cond_1

    aget-object v0, p2, p3

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    iget-object v1, p1, Lcom/zebra/sdk/certificate/ZebraCertificateInfo;->caCertificates:Ljava/util/List;

    invoke-interface {p0, v0}, Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;->convertDerCertToPemCert([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static parseAsPem(Lcom/zebra/sdk/certificate/ZebraCertificateInfo;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "-----BEGIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/zebra/sdk/certificate/CertificateParser;->stripExtraInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zebra/sdk/certificate/CertificateParser;->getPrivateKeyFromPem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zebra/sdk/certificate/ZebraCertificateInfo;->privateKey:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/zebra/sdk/certificate/CertificateParser;->processPemCertificates(Lcom/zebra/sdk/certificate/ZebraCertificateInfo;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static parseCertificate(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/zebra/sdk/certificate/ZebraCertificateInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/certificate/ZebraCertificateException;,
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->readFully(Ljava/io/InputStream;[B)V

    invoke-static {v0}, Lcom/zebra/sdk/certificate/CertificateParser;->stripPkcs7OpenSSLHeader([B)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Lcom/zebra/sdk/certificate/ZebraCertificateInfo;

    invoke-direct {v1}, Lcom/zebra/sdk/certificate/ZebraCertificateInfo;-><init>()V

    invoke-static {v1, v0}, Lcom/zebra/sdk/certificate/CertificateParser;->parseAsPem(Lcom/zebra/sdk/certificate/ZebraCertificateInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v1}, Lcom/zebra/sdk/certificate/CertificateParser;->parseAsCertificate([BLcom/zebra/sdk/certificate/ZebraCertificateInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v1}, Lcom/zebra/sdk/certificate/CertificateParser;->parseAsDerPrivateKey([BLcom/zebra/sdk/certificate/ZebraCertificateInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v1, p1, p2}, Lcom/zebra/sdk/certificate/CertificateParser;->parseAsP12([BLcom/zebra/sdk/certificate/ZebraCertificateInfo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method private static processPemCertificates(Lcom/zebra/sdk/certificate/ZebraCertificateInfo;Ljava/lang/String;)V
    .locals 4

    const-string v0, "\n"

    const-string v1, "\r\n"

    const-string v2, "(-----BEGIN CERTIFICATE-----.*?-----END CERTIFICATE-----)"

    invoke-static {v2, p1}, Lcom/zebra/sdk/certificate/CertificateParser;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object p1

    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/zebra/sdk/certificate/CertificateParser;->addCertificate(Lcom/zebra/sdk/certificate/ZebraCertificateInfo;Ljava/security/cert/CertificateFactory;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private static stripExtraInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(-----BEGIN .*?-----.*?-----END .*?-----)"

    const/16 v2, 0x28

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static stripPkcs7OpenSSLHeader([B)[B
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    const-string v1, "-----BEGIN PKCS7-----"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, ""

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-----END PKCS7-----"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zebra/sdk/util/internal/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    :cond_0
    return-object p0
.end method
