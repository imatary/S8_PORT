.class public Llibcore/util/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verify(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/util/Set;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/InputStream;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v11, 0x0

    new-instance v0, Lsun/security/pkcs/PKCS7;

    invoke-direct {v0, p0}, Lsun/security/pkcs/PKCS7;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v10, v4

    if-nez v10, :cond_1

    :cond_0
    new-instance v10, Ljava/security/SignatureException;

    const-string/jumbo v11, "signature contains no certificates"

    invoke-direct {v10, v11}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    aget-object v3, v4, v11

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getSignerInfos()[Lsun/security/pkcs/SignerInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    array-length v10, v7

    if-nez v10, :cond_3

    :cond_2
    new-instance v10, Ljava/security/SignatureException;

    const-string/jumbo v11, "signature contains no signedData"

    invoke-direct {v10, v11}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_3
    aget-object v6, v7, v11

    const/4 v8, 0x0

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v8, 0x1

    :cond_5
    if-nez v8, :cond_6

    new-instance v10, Ljava/security/SignatureException;

    const-string/jumbo v11, "signature doesn\'t match any trusted key"

    invoke-direct {v10, v11}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_6
    invoke-virtual {v0, v6, p1}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v9

    if-nez v9, :cond_7

    new-instance v10, Ljava/security/SignatureException;

    const-string/jumbo v11, "signature digest verification failed"

    invoke-direct {v10, v11}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_7
    return-void
.end method
