.class public Lcom/zebra/sdk/certificate/internal/CertUtilities;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;


# static fields
.field protected static final PEM_BEGIN_CERTIFICATE:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----"

.field protected static final PEM_BEGIN_PRIVATE_KEY:Ljava/lang/String; = "-----BEGIN PRIVATE KEY-----"

.field protected static final PEM_END_CERTIFICATE:Ljava/lang/String; = "-----END CERTIFICATE-----"

.field protected static final PEM_END_PRIVATE_KEY:Ljava/lang/String; = "-----END PRIVATE KEY-----"

.field protected static final PEM_FOOTER:Ljava/lang/String; = "-----END "

.field protected static final PEM_HEADER:Ljava/lang/String; = "-----BEGIN "

.field protected static final PRIVATE_KEY_CMS_ALGO:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field protected static final ZEBRA_PKCS12_KEY_ALIAS:Ljava/lang/String; = "zebra_linkos"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/spongycastle/cms/CMSAlgorithm;->AES128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/zebra/sdk/certificate/internal/CertUtilities;->PRIVATE_KEY_CMS_ALGO:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertDerToPem([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/zebra/sdk/util/internal/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v0, "The DER contents must be provided"

    invoke-direct {p1, v0}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getKeyFile(Ljava/lang/String;Ljava/lang/String;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 4

    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/spongycastle/openssl/PEMParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/openssl/PEMParser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Lorg/spongycastle/openssl/PEMParser;->readObject()Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lorg/spongycastle/openssl/PEMKeyPair;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/spongycastle/openssl/PEMParser;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/openssl/PEMKeyPair;

    invoke-virtual {p1}, Lorg/spongycastle/openssl/PEMKeyPair;->getPrivateKeyInfo()Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    goto :goto_1

    :cond_0
    instance-of v2, p1, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_1
    instance-of v2, p1, Lorg/spongycastle/openssl/PEMEncryptedKeyPair;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/spongycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/spongycastle/pkcs/PKCSException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "SC"

    if-eqz v2, :cond_2

    :try_start_1
    check-cast p1, Lorg/spongycastle/openssl/PEMEncryptedKeyPair;

    new-instance v2, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;

    invoke-direct {v2}, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;-><init>()V

    invoke-virtual {v2, v3}, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->build([C)Lorg/spongycastle/openssl/PEMDecryptorProvider;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/spongycastle/openssl/PEMEncryptedKeyPair;->decryptKeyPair(Lorg/spongycastle/openssl/PEMDecryptorProvider;)Lorg/spongycastle/openssl/PEMKeyPair;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/spongycastle/openssl/PEMKeyPair;->getPrivateKeyInfo()Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lorg/spongycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;

    if-eqz v2, :cond_3

    check-cast p1, Lorg/spongycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;

    new-instance v2, Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;

    invoke-direct {v2}, Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;-><init>()V

    invoke-virtual {v2, v3}, Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;->build([C)Lorg/spongycastle/operator/InputDecryptorProvider;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/spongycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;->decryptPrivateKeyInfo(Lorg/spongycastle/operator/InputDecryptorProvider;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Lorg/spongycastle/openssl/PEMParser;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/spongycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/spongycastle/pkcs/PKCSException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method private getKeyFileFromStream(Ljava/io/InputStream;Ljava/lang/String;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 0

    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/zebra/sdk/certificate/internal/CertUtilities;->getKeyFile(Ljava/lang/String;Ljava/lang/String;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public convertDerCertToPemCert([B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "-----BEGIN CERTIFICATE-----\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lcom/zebra/sdk/certificate/internal/CertUtilities;->convertDerToPem([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "-----END CERTIFICATE-----\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertDerKeyToPemKey([B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "-----BEGIN PRIVATE KEY-----\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lcom/zebra/sdk/certificate/internal/CertUtilities;->convertDerToPem([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "-----END PRIVATE KEY-----\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createCertChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "certificates/ZebraCAChain.cer"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/openssl/PEMParser;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/openssl/PEMParser;-><init>(Ljava/io/Reader;)V

    new-instance v0, Lorg/spongycastle/openssl/PEMParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/spongycastle/openssl/PEMParser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Lorg/spongycastle/openssl/PEMParser;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/cert/X509CertificateHolder;

    invoke-virtual {v1}, Lorg/spongycastle/openssl/PEMParser;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/cert/X509CertificateHolder;

    invoke-virtual {v1}, Lorg/spongycastle/openssl/PEMParser;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/cert/X509CertificateHolder;

    invoke-virtual {v0}, Lorg/spongycastle/openssl/PEMParser;->close()V

    invoke-virtual {v1}, Lorg/spongycastle/openssl/PEMParser;->close()V

    new-instance v0, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {v0}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    const-string v1, "SC"

    invoke-virtual {v0, v1}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/lang/String;)Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/spongycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/jce/provider/X509CertificateObject;

    invoke-virtual {v0, v2}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/spongycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/jce/provider/X509CertificateObject;

    invoke-virtual {v0, v3}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/spongycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/provider/X509CertificateObject;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const/4 p1, 0x2

    aput-object v0, v2, p1

    return-object v2
.end method

.method public createP12File(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "zebra_linkos"

    invoke-virtual {v0, v2, p1, v1, p2}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    invoke-virtual {p0, p3}, Lcom/zebra/sdk/certificate/internal/CertUtilities;->getOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    return-void
.end method

.method public getCaFromPkcs12Keystore(Ljava/lang/String;Ljava/io/OutputStream;Ljava/security/KeyStore;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    if-eqz p3, :cond_1

    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    invoke-virtual {p0, p1, p3}, Lcom/zebra/sdk/certificate/internal/CertUtilities;->getCertificateChain(Ljava/lang/String;Ljava/security/KeyStore;)[Ljava/security/cert/Certificate;

    move-result-object p1

    new-instance p3, Ljava/io/OutputStreamWriter;

    invoke-direct {p3, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 p2, 0x1

    :goto_0
    :try_start_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    aget-object v0, p1, p2

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zebra/sdk/certificate/internal/CertUtilities;->convertDerCertToPemCert([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/io/OutputStreamWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v0, "Failed to encode the certificate provided in the p12 file."

    invoke-direct {p2, v0, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p3}, Ljava/io/OutputStreamWriter;->close()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A keystore must be supplied"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 2

    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    :try_start_0
    const-string v0, "X.509"

    const-string v1, "SC"

    invoke-static {v0, v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->toInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;Ljava/security/KeyStore;)[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    array-length p2, p1

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string p2, "Error: Could not locate the certificate within the provided PKCS12 file. Make sure the alias used is valid."

    invoke-direct {p1, p2}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v0, "The p12 file was not valid."

    invoke-direct {p2, v0, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getCertificateFromPkcs12Keystore(Ljava/lang/String;Ljava/io/OutputStream;Ljava/security/KeyStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    invoke-virtual {p0, p1, p3}, Lcom/zebra/sdk/certificate/internal/CertUtilities;->getCertificateChain(Ljava/lang/String;Ljava/security/KeyStore;)[Ljava/security/cert/Certificate;

    move-result-object p1

    new-instance p3, Ljava/io/OutputStreamWriter;

    invoke-direct {p3, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 p2, 0x0

    :try_start_0
    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/certificate/internal/CertUtilities;->convertDerCertToPemCert([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3}, Ljava/io/OutputStreamWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/zebra/sdk/certificate/ZebraCertificateException;

    const-string v0, "Failed to encode the certificate provided in the p12 file."

    invoke-direct {p2, v0, p1}, Lcom/zebra/sdk/certificate/ZebraCertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p3}, Ljava/io/OutputStreamWriter;->close()V

    throw p1
.end method

.method public getKeyPair()Ljava/security/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string v0, "RSA"

    const-string v1, "SC"

    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method protected getOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;)Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const-string v0, "Could not recover the private key from the pkcs12 file. Verify that the provided passkey is correct and any provided aliases are valid."

    new-instance v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of p2, p1, Ljava/security/PrivateKey;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/security/PrivateKey;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    invoke-direct {p1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/UnrecoverableKeyException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not recover the private key from the pkcs12 file. The key algorithm may not be supported: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    invoke-direct {p1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrivateKeyFromPkcs12Keystore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/security/KeyStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Ljava/io/IOException;,
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    invoke-virtual {p0, p1, p2, p5}, Lcom/zebra/sdk/certificate/internal/CertUtilities;->getPrivateKey(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;)Ljava/security/PrivateKey;

    move-result-object p1

    new-instance p2, Ljava/io/OutputStreamWriter;

    invoke-direct {p2, p4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/zebra/sdk/certificate/internal/CertUtilities;->savePrivateKey(Ljava/security/PrivateKey;Ljava/io/Writer;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A keystore must be supplied"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An alias must be supplied"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A p12 keystore passphrase must be supplied"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A private key passphrase must be supplied"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getWriter(Ljava/lang/String;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public save(Lcom/zebra/sdk/util/internal/CertificateInfo;Ljava/security/KeyPair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_1

    const-string p6, "/"

    invoke-virtual {p3, p6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p7

    if-nez p7, :cond_0

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {p1}, Lcom/zebra/sdk/util/internal/CertificateInfo;->getUserRequestInfo()Lcom/zebra/sdk/util/internal/CertificateSigningRequestInfo;

    move-result-object p6

    invoke-virtual {p6}, Lcom/zebra/sdk/util/internal/CertificateSigningRequestInfo;->getCommonName()Ljava/lang/String;

    move-result-object p6

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p8, ".cer"

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p9, ".csr"

    invoke-virtual {p8, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    new-instance p9, Ljava/lang/StringBuilder;

    invoke-direct {p9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".p12"

    invoke-virtual {p9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".key"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/zebra/sdk/certificate/internal/CertUtilities;->getWriter(Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p6

    invoke-virtual {p0, p6, p3, p5}, Lcom/zebra/sdk/certificate/internal/CertUtilities;->savePrivateKey(Ljava/security/PrivateKey;Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, p7}, Lcom/zebra/sdk/certificate/internal/CertUtilities;->getWriter(Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p1}, Lcom/zebra/sdk/util/internal/CertificateInfo;->getCertificate()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/Writer;->close()V

    invoke-virtual {p0, p8}, Lcom/zebra/sdk/certificate/internal/CertUtilities;->getWriter(Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p1}, Lcom/zebra/sdk/util/internal/CertificateInfo;->getUserRequestInfo()Lcom/zebra/sdk/util/internal/CertificateSigningRequestInfo;

    move-result-object p5

    invoke-virtual {p5}, Lcom/zebra/sdk/util/internal/CertificateSigningRequestInfo;->getCsr()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/Writer;->close()V

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-virtual {p1}, Lcom/zebra/sdk/util/internal/CertificateInfo;->getCertificate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zebra/sdk/certificate/internal/CertUtilities;->createCertChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p9, p4}, Lcom/zebra/sdk/certificate/internal/CertUtilities;->createP12File(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "All parameters must be supplied in order to save the p12 fill successfully"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected savePrivateKey(Ljava/security/PrivateKey;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Lorg/spongycastle/util/io/pem/PemWriter;

    invoke-direct {v0, p2}, Lorg/spongycastle/util/io/pem/PemWriter;-><init>(Ljava/io/Writer;)V

    new-instance p2, Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;

    sget-object v1, Lcom/zebra/sdk/certificate/internal/CertUtilities;->PRIVATE_KEY_CMS_ALGO:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p2, v1}, Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v1, "SC"

    invoke-virtual {p2, v1}, Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;

    new-instance v1, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;

    invoke-direct {v1}, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;-><init>()V

    new-instance v2, Ljava/security/SecureRandom;

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;->generateSeed(IZ)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/SecureRandom;-><init>([B)V

    invoke-virtual {p2, v2}, Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;->setRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;->setPasssword([C)Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;

    invoke-virtual {p2}, Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;->build()Lorg/spongycastle/operator/OutputEncryptor;

    move-result-object p2

    new-instance p3, Lorg/spongycastle/openssl/jcajce/JcaPKCS8Generator;

    invoke-direct {p3, p1, p2}, Lorg/spongycastle/openssl/jcajce/JcaPKCS8Generator;-><init>(Ljava/security/PrivateKey;Lorg/spongycastle/operator/OutputEncryptor;)V

    invoke-virtual {p3}, Lorg/spongycastle/openssl/jcajce/JcaPKCS8Generator;->generate()Lorg/spongycastle/util/io/pem/PemObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/spongycastle/util/io/pem/PemWriter;->writeObject(Lorg/spongycastle/util/io/pem/PemObjectGenerator;)V

    invoke-virtual {v0}, Lorg/spongycastle/util/io/pem/PemWriter;->close()V
    :try_end_0
    .catch Lorg/spongycastle/util/io/pem/PemGenerationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/spongycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
