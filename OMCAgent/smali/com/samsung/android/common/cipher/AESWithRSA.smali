.class public abstract Lcom/samsung/android/common/cipher/AESWithRSA;
.super Ljava/lang/Object;
.source "AESWithRSA.java"


# static fields
.field private static aes:Lcom/samsung/android/common/cipher/AES;

.field private static encryptedKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/common/cipher/AES;->newWithGeneratedKey()Lcom/samsung/android/common/cipher/AES;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/common/cipher/AESWithRSA;->aes:Lcom/samsung/android/common/cipher/AES;

    invoke-static {}, Lcom/samsung/android/common/cipher/AESWithRSA;->reload()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/common/cipher/AESWithRSA;->encrypt([B)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static encrypt([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    sget-object v1, Lcom/samsung/android/common/cipher/AESWithRSA;->aes:Lcom/samsung/android/common/cipher/AES;

    invoke-virtual {v1, p0}, Lcom/samsung/android/common/cipher/AES;->encrypt([B)[B

    move-result-object v0

    sget-object v1, Lcom/samsung/android/common/cipher/AESWithRSA;->encryptedKey:[B

    invoke-static {v1, v0}, Lcom/samsung/android/common/cipher/util/Bytes;->mergeBytes([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public static reload()V
    .locals 2

    :try_start_0
    sget-object v1, Lcom/samsung/android/common/cipher/AESWithRSA;->aes:Lcom/samsung/android/common/cipher/AES;

    invoke-virtual {v1}, Lcom/samsung/android/common/cipher/AES;->getKey()[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/common/cipher/RSA;->encrypt([B)[B

    move-result-object v1

    sput-object v1, Lcom/samsung/android/common/cipher/AESWithRSA;->encryptedKey:[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
