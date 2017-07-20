.class public Lcom/android/phone/utils/Encryption;
.super Ljava/lang/Object;
.source "Encryption.java"


# static fields
.field private static mCipher:Ljavax/crypto/Cipher;

.field private static mSalt:[B

.field private static secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field private static securityPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v3, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_4

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move/from16 v0, p3

    invoke-static {v11, v0}, Lcom/android/phone/utils/Encryption;->decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v7

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x0

    const/16 v11, 0x400

    :try_start_1
    new-array v2, v11, [B

    :goto_0
    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-virtual {v7, v2, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    const/4 v11, 0x0

    invoke-virtual {v9, v2, v11, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v8, v9

    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    :cond_2
    :goto_2
    return-object v3

    :cond_3
    move-object v8, v9

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catch_1
    move-exception v5

    :goto_3
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    :cond_8
    throw v11

    :catchall_1
    move-exception v11

    move-object v8, v9

    goto :goto_4

    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    move-object v8, v9

    goto :goto_3
.end method

.method public static decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v2, Lcom/android/phone/utils/Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/16 v2, 0x10

    new-array v2, v2, [B

    sput-object v2, Lcom/android/phone/utils/Encryption;->mSalt:[B

    sget-object v2, Lcom/android/phone/utils/Encryption;->mSalt:[B

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    invoke-static {}, Lcom/android/phone/utils/Encryption;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    sput-object v2, Lcom/android/phone/utils/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    :goto_0
    sget-object v2, Lcom/android/phone/utils/Encryption;->mCipher:Ljavax/crypto/Cipher;

    sget-object v3, Lcom/android/phone/utils/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherInputStream;

    sget-object v3, Lcom/android/phone/utils/Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p0, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v2

    :cond_0
    invoke-static {}, Lcom/android/phone/utils/Encryption;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    sput-object v2, Lcom/android/phone/utils/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0
.end method

.method public static encrypt(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v8, p2}, Lcom/android/phone/utils/Encryption;->encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x400

    new-array v0, v8, [B

    :goto_0
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v5, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v5

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_2
    :goto_2
    return-object v3

    :cond_3
    move-object v4, v5

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catch_1
    move-exception v2

    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_8
    throw v8

    :catchall_1
    move-exception v8

    move-object v4, v5

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v2

    move-object v4, v5

    goto :goto_3
.end method

.method public static encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    sget-object v2, Lcom/android/phone/utils/Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    if-ne p1, v4, :cond_0

    invoke-static {}, Lcom/android/phone/utils/Encryption;->generateEncryptSalt()[B

    move-result-object v2

    sput-object v2, Lcom/android/phone/utils/Encryption;->mSalt:[B

    sget-object v2, Lcom/android/phone/utils/Encryption;->mSalt:[B

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-static {}, Lcom/android/phone/utils/Encryption;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    sput-object v2, Lcom/android/phone/utils/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    :goto_0
    sget-object v2, Lcom/android/phone/utils/Encryption;->mCipher:Ljavax/crypto/Cipher;

    sget-object v3, Lcom/android/phone/utils/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherOutputStream;

    sget-object v3, Lcom/android/phone/utils/Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p0, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2

    :cond_0
    invoke-static {}, Lcom/android/phone/utils/Encryption;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    sput-object v2, Lcom/android/phone/utils/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0
.end method

.method public static generateEncryptSalt()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x10

    new-array v0, v2, [B

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public static generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const/16 v1, 0x3e8

    const/16 v4, 0x100

    sget-object v6, Lcom/android/phone/utils/Encryption;->securityPassword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string/jumbo v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v6, Lcom/android/phone/utils/Encryption;->mSalt:[B

    invoke-direct {v5, v0, v6, v1, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const-string/jumbo v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method public static generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v2, Lcom/android/phone/utils/Encryption;->securityPassword:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const/16 v2, 0x10

    new-array v1, v2, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method public static streamCrypt(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    sput-object p0, Lcom/android/phone/utils/Encryption;->securityPassword:Ljava/lang/String;

    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v2, Lcom/android/phone/utils/Encryption;->securityPassword:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const/16 v2, 0x10

    new-array v1, v2, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    sput-object v2, Lcom/android/phone/utils/Encryption;->mCipher:Ljavax/crypto/Cipher;

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object v2, Lcom/android/phone/utils/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-void
.end method
