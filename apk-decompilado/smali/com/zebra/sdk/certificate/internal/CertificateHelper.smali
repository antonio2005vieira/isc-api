.class public Lcom/zebra/sdk/certificate/internal/CertificateHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zebra/sdk/certificate/internal/CertificateHelperI;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCertificateProvider()Ljava/security/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    return-object v0
.end method

.method public getCommonNameHelper(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    new-instance v0, Lorg/spongycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v0, p1}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v0}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateHolder;->getSubject()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object p1

    sget-object v0, Lorg/spongycastle/asn1/x500/style/BCStyle;->CN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/x500/X500Name;->getRDNs(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/RDN;->getFirst()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->valueToString(Lorg/spongycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public pemWriterHelper(Ljava/security/PrivateKey;Ljava/io/StringWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/spongycastle/openssl/PEMWriter;

    invoke-direct {v0, p2}, Lorg/spongycastle/openssl/PEMWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, p1}, Lorg/spongycastle/openssl/PEMWriter;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/spongycastle/openssl/PEMWriter;->close()V

    return-void
.end method

.method public pemWriterHelper(Ljava/security/cert/Certificate;Ljava/io/StringWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/spongycastle/openssl/PEMWriter;

    invoke-direct {v0, p2}, Lorg/spongycastle/openssl/PEMWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, p1}, Lorg/spongycastle/openssl/PEMWriter;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/spongycastle/openssl/PEMWriter;->close()V

    return-void
.end method
