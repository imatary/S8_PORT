.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAuth;
.super Ljava/lang/Object;
.source "XDMAuth.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/interfaces/XDMInterface;


# static fields
.field private static final SHA_KEY_PAD_LEN:I = 0x40

.field private static final SHA_KEY_PAD_LEN_:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdmAuthAAuthType2String(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "NONE"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "BASIC"

    goto :goto_0

    :pswitch_1
    const-string v0, "DIGEST"

    goto :goto_0

    :pswitch_2
    const-string v0, "HMAC"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static xdmAuthAAuthtring2Type(Ljava/lang/String;)I
    .locals 1

    const-string v0, "BASIC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "DIGEST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "HMAC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static xdmAuthCredString2Type(Ljava/lang/String;)I
    .locals 1

    const-string v0, "syncml:auth-basic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "syncml:auth-md5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "syncml:auth-MAC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static xdmAuthCredType2String(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v1, "Not Support Auth Type"

    invoke-virtual {v0, v1}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "syncml:auth-basic"

    goto :goto_0

    :pswitch_1
    const-string v0, "syncml:auth-md5"

    goto :goto_0

    :pswitch_2
    const-string v0, "syncml:auth-MAC"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static xdmAuthMakeDigest(ILjava/lang/String;Ljava/lang/String;[BI[BI)Ljava/lang/String;
    .locals 17

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/16 v14, 0x10

    new-array v3, v14, [B

    packed-switch p0, :pswitch_data_0

    sget-object v14, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v15, "Not Support Auth Type"

    invoke-virtual {v14, v15}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    const/4 v14, 0x0

    :goto_0
    return-object v14

    :pswitch_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_0
    sget-object v14, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v15, "userName or passWord is NULL"

    invoke-virtual {v14, v15}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v14, 0x0

    goto :goto_0

    :pswitch_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    if-eqz p3, :cond_1

    if-gtz p4, :cond_3

    :cond_1
    sget-object v14, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v15, "userName or passWord or nonce or nonceLength is NULL"

    invoke-virtual {v14, v15}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v14, 0x0

    goto :goto_0

    :pswitch_2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    if-eqz p3, :cond_2

    if-lez p4, :cond_2

    if-eqz p5, :cond_2

    if-gtz p6, :cond_3

    :cond_2
    sget-object v14, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v15, "userName or passWord or nonce or nonceLength or packetBody or bodyLength is NULL"

    invoke-virtual {v14, v15}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v14, 0x0

    goto :goto_0

    :cond_3
    packed-switch p0, :pswitch_data_1

    :goto_1
    move-object v14, v13

    goto :goto_0

    :pswitch_3
    move-object/from16 v10, p1

    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v3

    new-instance v13, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v13, v3, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v14, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "XDM_CRED_TYPE_BASIC cred:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ret:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_1

    :pswitch_4
    new-instance v8, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMD5;

    invoke-direct {v8}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMD5;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMD5;->xdmComputeMD5Credentials(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v9

    new-instance v13, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v13, v9, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v12, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-direct {v12, v0, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v14, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "XDM_CRED_TYPE_MD5 nonce= "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ret= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    const/4 v8, 0x0

    :try_start_0
    const-string v14, "MD5"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_2
    if-nez v8, :cond_4

    const/4 v14, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    sget-object v14, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object/from16 v10, p1

    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v5

    new-instance v10, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v10, v5, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v6

    new-instance v11, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v11, v6, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-direct {v14, v0, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v10, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    const/4 v14, 0x2

    move/from16 v0, p0

    if-ne v0, v14, :cond_5

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v7

    new-instance v13, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v13, v7, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/16 :goto_1

    :cond_5
    new-instance v13, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v13, v3, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static xdmAuthMakeDigestSHA1(I[BI[B)Ljava/lang/String;
    .locals 12

    move v4, p2

    const/16 v10, 0x40

    new-array v7, v10, [B

    const/16 v10, 0x40

    new-array v8, v10, [B

    const/4 v9, 0x0

    const/4 v0, 0x0

    const-string v6, ""

    packed-switch p0, :pswitch_data_0

    sget-object v10, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v11, "Not Support Auth Type."

    invoke-virtual {v10, v11}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_0
    return-object v10

    :pswitch_0
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    const/16 v10, 0x40

    if-le v4, v10, :cond_3

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/16 v10, 0x40

    if-lt v2, v10, :cond_4

    const/4 v3, 0x0

    :goto_2
    const/16 v10, 0x40

    if-lt v3, v10, :cond_5

    const/4 v5, 0x0

    :try_start_0
    const-string v10, "SHA-1"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_3
    if-nez v5, :cond_6

    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_2

    aget-byte v10, p1, v2

    aput-byte v10, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    aget-byte v10, v7, v2

    aput-byte v10, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    aget-byte v10, v7, v3

    xor-int/lit8 v10, v10, 0x36

    int-to-byte v10, v10

    aput-byte v10, v7, v3

    aget-byte v10, v8, v3

    xor-int/lit8 v10, v10, 0x5c

    int-to-byte v10, v10

    aput-byte v10, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v10, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5, p3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-virtual {v5, v8}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5, v9}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMem;->xdmLibBytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    :cond_7
    move-object v10, v6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
