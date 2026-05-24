.class public interface abstract Lcom/zebra/sdk/certificate/internal/CertificateHelperI;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getCertificateProvider()Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public abstract getCommonNameHelper(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation
.end method

.method public abstract pemWriterHelper(Ljava/security/PrivateKey;Ljava/io/StringWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract pemWriterHelper(Ljava/security/cert/Certificate;Ljava/io/StringWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
