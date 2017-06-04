.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMD5;
.super Ljava/lang/Object;
.source "XDMMD5.java"


# instance fields
.field private MD5Sum:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final xdmComputeMD5Credentials(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 11

    const/4 v10, 0x0

    move-object v7, p1

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMD5;->MD5Sum:Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMD5;->MD5Sum:Ljava/lang/Object;

    check-cast v8, Ljava/security/MessageDigest;

    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v8, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMD5;->MD5Sum:Ljava/lang/Object;

    check-cast v8, Ljava/security/MessageDigest;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v3, v8

    array-length v8, p3

    add-int/2addr v8, v3

    new-array v2, v8, [B

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v10, v2, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, p3

    invoke-static {p3, v10, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMD5;->MD5Sum:Ljava/lang/Object;

    check-cast v8, Ljava/security/MessageDigest;

    invoke-virtual {v8, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v4

    sget-object v8, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_0
.end method
