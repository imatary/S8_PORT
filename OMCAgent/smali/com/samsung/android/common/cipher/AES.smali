.class public Lcom/samsung/android/common/cipher/AES;
.super Ljava/lang/Object;
.source "AES.java"


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEY_LENGTH:I = 0x80

.field private static final RANDOM_ALGORITHM:Ljava/lang/String; = "SHA1PRNG"


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private key:Ljava/security/Key;

.field private sr:Ljava/security/SecureRandom;


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/common/cipher/AES;->cipher:Ljavax/crypto/Cipher;

    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/common/cipher/AES;->sr:Ljava/security/SecureRandom;

    return-void
.end method

.method private generateKey()Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x80

    iget-object v2, p0, Lcom/samsung/android/common/cipher/AES;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    return-object v1
.end method

.method public static newWith([B)Lcom/samsung/android/common/cipher/AES;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/common/cipher/AES;

    invoke-direct {v0}, Lcom/samsung/android/common/cipher/AES;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/common/cipher/AES;->with([B)Lcom/samsung/android/common/cipher/AES;

    move-result-object v0

    return-object v0
.end method

.method public static newWithGeneratedKey()Lcom/samsung/android/common/cipher/AES;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/common/cipher/AES;

    invoke-direct {v0}, Lcom/samsung/android/common/cipher/AES;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/common/cipher/AES;->withGeneratedKey()Lcom/samsung/android/common/cipher/AES;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized decrypt([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/common/cipher/AES;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    invoke-static {p1, v1}, Lcom/samsung/android/common/cipher/util/Bytes;->splitBytes([BI)[[B

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/common/cipher/AES;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/common/cipher/AES;->key:Ljava/security/Key;

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v1, p0, Lcom/samsung/android/common/cipher/AES;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized encrypt([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/common/cipher/AES;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/samsung/android/common/cipher/AES;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v1, p0, Lcom/samsung/android/common/cipher/AES;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/common/cipher/AES;->key:Ljava/security/Key;

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v1, p0, Lcom/samsung/android/common/cipher/AES;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/common/cipher/util/Bytes;->mergeBytes([B[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getKey()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/common/cipher/AES;->key:Ljava/security/Key;

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public with([B)Lcom/samsung/android/common/cipher/AES;
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/common/cipher/AES;->key:Ljava/security/Key;

    return-object p0
.end method

.method public withGeneratedKey()Lcom/samsung/android/common/cipher/AES;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/common/cipher/AES;->generateKey()Ljava/security/Key;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/common/cipher/AES;->key:Ljava/security/Key;

    return-object p0
.end method
