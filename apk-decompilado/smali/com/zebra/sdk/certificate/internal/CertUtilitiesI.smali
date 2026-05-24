.class public interface abstract Lcom/zebra/sdk/certificate/internal/CertUtilitiesI;
.super Ljava/lang/Object;


# virtual methods
.method public abstract convertDerCertToPemCert([B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation
.end method

.method public abstract convertDerKeyToPemKey([B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation
.end method

.method public abstract createCertChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public abstract createP12File(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCaFromPkcs12Keystore(Ljava/lang/String;Ljava/io/OutputStream;Ljava/security/KeyStore;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation
.end method

.method public abstract getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
.end method

.method public abstract getCertificateChain(Ljava/lang/String;Ljava/security/KeyStore;)[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation
.end method

.method public abstract getCertificateFromPkcs12Keystore(Ljava/lang/String;Ljava/io/OutputStream;Ljava/security/KeyStore;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zebra/sdk/certificate/ZebraCertificateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getKeyPair()Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation
.end method

.method public abstract getPrivateKey(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;)Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation
.end method

.method public abstract getPrivateKeyFromPkcs12Keystore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/security/KeyStore;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Ljava/io/IOException;,
            Lcom/zebra/sdk/certificate/ZebraCertificateException;
        }
    .end annotation
.end method

.method public abstract save(Lcom/zebra/sdk/util/internal/CertificateInfo;Ljava/security/KeyPair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method
