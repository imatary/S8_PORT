.class public Lcom/samsung/android/common/cipher/AESCrypt;
.super Ljava/lang/Object;
.source "AESCrypt.java"


# static fields
.field private static final CRYPTO_KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final CRYPTO_KEY_SIZE:I = 0x80

.field private static final CRYPTO_RANDOM_ALGORITHM:Ljava/lang/String; = "SHA1PRNG"

.field public static final CRYPTO_SEED_PASSWORD:Ljava/lang/String; = "FEM"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptor([B)Ljava/lang/String;
    .locals 6

    const-string v2, ""

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, v4, v5}, Lcom/samsung/android/common/cipher/AESCrypt;->getCryptionResult([BILjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static decryptor([BLjava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v2, ""

    const/4 v1, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-static {p0, v4, p1}, Lcom/samsung/android/common/cipher/AESCrypt;->getCryptionResult([BILjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static decryptorString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v2, ""

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x2

    invoke-static {p0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/samsung/android/common/cipher/AESCrypt;->getCryptionResult([BILjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encryptor(Ljava/lang/String;)[B
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/common/cipher/AESCrypt;->getCryptionResult([BILjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encryptor(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, p1}, Lcom/samsung/android/common/cipher/AESCrypt;->getCryptionResult([BILjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encryptorLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v1, ""

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/common/cipher/AESCrypt;->encryptor(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encryptorString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v2, ""

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/samsung/android/common/cipher/AESCrypt;->getCryptionResult([BILjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getCryptionResult([BILjava/lang/String;)[B
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "GetInstance"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v4, 0x172c

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lcom/samsung/android/common/cipher/AESCrypt;->mealyMachine(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static mealyMachine(II)Ljava/lang/String;
    .locals 11

    new-array v8, p1, [B

    const/16 v9, 0x10

    new-array v4, v9, [[I

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_1

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_2

    aput-object v10, v4, v9

    const/4 v9, 0x3

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_3

    aput-object v10, v4, v9

    const/4 v9, 0x4

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_4

    aput-object v10, v4, v9

    const/4 v9, 0x5

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_5

    aput-object v10, v4, v9

    const/4 v9, 0x6

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_6

    aput-object v10, v4, v9

    const/4 v9, 0x7

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_7

    aput-object v10, v4, v9

    const/16 v9, 0x8

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_8

    aput-object v10, v4, v9

    const/16 v9, 0x9

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_9

    aput-object v10, v4, v9

    const/16 v9, 0xa

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_a

    aput-object v10, v4, v9

    const/16 v9, 0xb

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_b

    aput-object v10, v4, v9

    const/16 v9, 0xc

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_c

    aput-object v10, v4, v9

    const/16 v9, 0xd

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_d

    aput-object v10, v4, v9

    const/16 v9, 0xe

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_e

    aput-object v10, v4, v9

    const/16 v9, 0xf

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_f

    aput-object v10, v4, v9

    const/16 v9, 0x10

    new-array v5, v9, [[C

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [C

    fill-array-data v10, :array_10

    aput-object v10, v5, v9

    const/4 v9, 0x1

    const/4 v10, 0x2

    new-array v10, v10, [C

    fill-array-data v10, :array_11

    aput-object v10, v5, v9

    const/4 v9, 0x2

    const/4 v10, 0x2

    new-array v10, v10, [C

    fill-array-data v10, :array_12

    aput-object v10, v5, v9

    const/4 v9, 0x3

    const/4 v10, 0x2

    new-array v10, v10, [C

    fill-array-data v10, :array_13

    aput-object v10, v5, v9

    const/4 v9, 0x4

    const/4 v10, 0x2

    new-array v10, v10, [C

    fill-array-data v10, :array_14

    aput-object v10, v5, v9

    const/4 v9, 0x5

    const/4 v10, 0x2

    new-array v10, v10, [C

    fill-array-data v10, :array_15

    aput-object v10, v5, v9

    const/4 v9, 0x6

    const/4 v10, 0x2

    new-array v10, v10, [C

    fill-array-data v10, :array_16

    aput-object v10, v5, v9

    const/4 v9, 0x7

    const/4 v10, 0x2

    new-array v10, v10, [C

    fill-array-data v10, :array_17

    aput-object v10, v5, v9

    const/16 v9, 0x8

    const/4 v10, 0x2

    new-array v10, v10, [C

    fill-array-data v10, :array_18

    aput-object v10, v5, v9

    const/16 v9, 0x9

    const/4 v10, 0x2

    new-array v10, v10, [C

    fill-array-data v10, :array_19

    aput-object v10, v5, v9

    const/16 v9, 0xa

    const/4 v10, 0x2

    new-array v10, v10, [C

    fill-array-data v10, :array_1a

    aput-object v10, v5, v9

    const/16 v9, 0xb

    const/4 v10, 0x2

    new-array v10, v10, [C

    fill-array-data v10, :array_1b

    aput-object v10, v5, v9

    const/16 v9, 0xc

    const/4 v10, 0x2

    new-array v10, v10, [C

    fill-array-data v10, :array_1c

    aput-object v10, v5, v9

    const/16 v9, 0xd

    const/4 v10, 0x2

    new-array v10, v10, [C

    fill-array-data v10, :array_1d

    aput-object v10, v5, v9

    const/16 v9, 0xe

    const/4 v10, 0x2

    new-array v10, v10, [C

    fill-array-data v10, :array_1e

    aput-object v10, v5, v9

    const/16 v9, 0xf

    const/4 v10, 0x2

    new-array v10, v10, [C

    fill-array-data v10, :array_1f

    aput-object v10, v5, v9

    const/4 v7, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_0

    and-int/lit8 v1, p0, 0x1

    shr-int/lit8 p0, p0, 0x1

    add-int/lit8 v2, v3, 0x1

    aget-object v9, v5, v7

    aget-char v9, v9, v1

    int-to-byte v9, v9

    aput-byte v9, v8, v3

    aget-object v9, v4, v7

    aget v7, v9, v1

    move v3, v2

    goto :goto_0

    :cond_0
    const-string v6, ""

    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v6, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v6

    :catch_0
    move-exception v0

    const-string v6, ""

    goto :goto_1

    :array_0
    .array-data 4
        0xb
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x8
        0xf
    .end array-data

    :array_3
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xf
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x5
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x3
        0xd
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x2
        0xd
    .end array-data

    :array_10
    .array-data 2
        0x73s
        0x33s
    .end array-data

    :array_11
    .array-data 2
        0x76s
        0x6es
    .end array-data

    :array_12
    .array-data 2
        0x31s
        0x39s
    .end array-data

    :array_13
    .array-data 2
        0x6ds
        0x30s
    .end array-data

    :array_14
    .array-data 2
        0x65s
        0x63s
    .end array-data

    :array_15
    .array-data 2
        0x33s
        0x42s
    .end array-data

    :array_16
    .array-data 2
        0x37s
        0x4es
    .end array-data

    :array_17
    .array-data 2
        0x6bs
        0x32s
    .end array-data

    :array_18
    .array-data 2
        0x32s
        0x43s
    .end array-data

    :array_19
    .array-data 2
        0x61s
        0x43s
    .end array-data

    :array_1a
    .array-data 2
        0x4as
        0x32s
    .end array-data

    :array_1b
    .array-data 2
        0x79s
        0x6cs
    .end array-data

    :array_1c
    .array-data 2
        0x38s
        0x64s
    .end array-data

    :array_1d
    .array-data 2
        0x31s
        0x30s
    .end array-data

    :array_1e
    .array-data 2
        0x41s
        0x5es
    .end array-data

    :array_1f
    .array-data 2
        0x37s
        0x30s
    .end array-data
.end method
