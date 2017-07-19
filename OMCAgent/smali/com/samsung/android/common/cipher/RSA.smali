.class public Lcom/samsung/android/common/cipher/RSA;
.super Ljava/lang/Object;
.source "RSA.java"


# static fields
.field public static final CIPHER_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field public static final KEY_ALGORITHM:Ljava/lang/String; = "RSA"

.field protected static final PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4hCCVWWB2/kpBfkG/hhaHT/TeyND99Fj4owwfEk+vNKmP6WAmq5QA32ctQY4MvXDHDRssjQ9Y+Bxg1c4ciaQ9StgpMAnn4epuO+p6q+aHnRNHeMLOkqDHwfMfyzMq57cK/Az/yfVDjNwZrDxZ4lsE+RtTX8QUtvbdwU8O4H+KoT352mlC1kgrNTK8aJEwaEVnpD5LFG9gvWx/insJO7dr7cjk2fyj1d/aYRe2+mjSkaQX9QlYVW+COnAcRnIg9XDIOyW5tGtepFYX6w/621dQT6eoferwegH54glfIf78/GJMUUBwN/FPmOgN3siHZIZH4iv51XfOXyAb0KHlb3UswIDAQAB"

.field private static rsa:Lcom/samsung/android/common/cipher/RSA;

.field private static rsaOrig:Lcom/samsung/android/common/cipher/RSA;


# instance fields
.field private rsaCipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4hCCVWWB2/kpBfkG/hhaHT/TeyND99Fj4owwfEk+vNKmP6WAmq5QA32ctQY4MvXDHDRssjQ9Y+Bxg1c4ciaQ9StgpMAnn4epuO+p6q+aHnRNHeMLOkqDHwfMfyzMq57cK/Az/yfVDjNwZrDxZ4lsE+RtTX8QUtvbdwU8O4H+KoT352mlC1kgrNTK8aJEwaEVnpD5LFG9gvWx/insJO7dr7cjk2fyj1d/aYRe2+mjSkaQX9QlYVW+COnAcRnIg9XDIOyW5tGtepFYX6w/621dQT6eoferwegH54glfIf78/GJMUUBwN/FPmOgN3siHZIZH4iv51XfOXyAb0KHlb3UswIDAQAB"

    invoke-static {v0}, Lcom/samsung/android/common/cipher/RSA;->resetPublicKey(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/common/cipher/RSA;->rsa:Lcom/samsung/android/common/cipher/RSA;

    sput-object v0, Lcom/samsung/android/common/cipher/RSA;->rsaOrig:Lcom/samsung/android/common/cipher/RSA;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "GetInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v4, Ljava/security/InvalidKeyException;

    const-string v5, "Key BASE64 decoding failed"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v4, "RSA/ECB/PKCS1Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/common/cipher/RSA;->rsaCipher:Ljavax/crypto/Cipher;

    iget-object v4, p0, Lcom/samsung/android/common/cipher/RSA;->rsaCipher:Ljavax/crypto/Cipher;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-void
.end method

.method public static encrypt([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/common/cipher/RSA;->rsa:Lcom/samsung/android/common/cipher/RSA;

    invoke-virtual {v0, p0}, Lcom/samsung/android/common/cipher/RSA;->encrypt_([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getEncryptedDataSize()I
    .locals 1

    sget-object v0, Lcom/samsung/android/common/cipher/RSA;->rsa:Lcom/samsung/android/common/cipher/RSA;

    invoke-virtual {v0}, Lcom/samsung/android/common/cipher/RSA;->getEncryptedDataSize_()I

    move-result v0

    return v0
.end method

.method public static resetPublicKey()V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/cipher/RSA;->rsaOrig:Lcom/samsung/android/common/cipher/RSA;

    sput-object v0, Lcom/samsung/android/common/cipher/RSA;->rsa:Lcom/samsung/android/common/cipher/RSA;

    return-void
.end method

.method public static resetPublicKey(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v1, Lcom/samsung/android/common/cipher/RSA;

    invoke-direct {v1, p0}, Lcom/samsung/android/common/cipher/RSA;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/common/cipher/RSA;->rsa:Lcom/samsung/android/common/cipher/RSA;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3

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

    :catch_2
    move-exception v0

    sget-object v1, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    sget-object v1, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/common/log/LoggerData;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized encrypt_([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/common/cipher/RSA;->rsaCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEncryptedDataSize_()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/common/cipher/RSA;->rsaCipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method
