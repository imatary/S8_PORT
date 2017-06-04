.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SecureSHA1PRNGKeyDerivator;
.super Ljava/lang/Object;
.source "SecureSHA1PRNGKeyDerivator.java"


# direct methods
.method static deriveKeySecurely(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 8

    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SecureSHA1PRNGKeyDerivator;->retrieveSalt()[B

    move-result-object v5

    const/16 v6, 0x64

    const/16 v7, 0x80

    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    :try_start_0
    const-string/jumbo v4, "PBKDF2WithHmacSHA1"

    invoke-static {v4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v5, "AES"

    invoke-direct {v4, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Deal with exceptions properly!"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static readBytes(Ljava/lang/String;[B)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->toByte(Ljava/lang/String;[B)[B

    return-void
.end method

.method private static readFromPrefOrCreateRandom(Ljava/lang/String;[B)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SecureSHA1PRNGKeyDerivator;->readBytes(Ljava/lang/String;[B)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->toHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static retrieveIv()[B
    .locals 2

    const/16 v1, 0x10

    new-array v0, v1, [B

    const-string/jumbo v1, "crypto_iv"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SecureSHA1PRNGKeyDerivator;->readFromPrefOrCreateRandom(Ljava/lang/String;[B)V

    return-object v0
.end method

.method private static retrieveSalt()[B
    .locals 2

    const/16 v1, 0x10

    new-array v0, v1, [B

    const-string/jumbo v1, "crypto_salt"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SecureSHA1PRNGKeyDerivator;->readFromPrefOrCreateRandom(Ljava/lang/String;[B)V

    return-object v0
.end method
