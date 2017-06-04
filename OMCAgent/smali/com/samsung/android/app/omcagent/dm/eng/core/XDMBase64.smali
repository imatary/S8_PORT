.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMBase64;
.super Ljava/lang/Object;
.source "XDMBase64.java"


# static fields
.field private static base64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xff

    new-array v1, v3, [B

    sput-object v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMBase64;->base64Alphabet:[B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    const/16 v0, 0x5a

    :goto_1
    const/16 v1, 0x41

    if-ge v0, v1, :cond_1

    const/16 v0, 0x7a

    :goto_2
    const/16 v1, 0x61

    if-ge v0, v1, :cond_2

    const/16 v0, 0x39

    :goto_3
    const/16 v1, 0x30

    if-ge v0, v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMBase64;->base64Alphabet:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMBase64;->base64Alphabet:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMBase64;->base64Alphabet:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMBase64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMBase64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMBase64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static myisBase64(B)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x3d

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMBase64;->base64Alphabet:[B

    aget-byte v1, v1, p0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xdmBase64Decode([B)[B
    .locals 14

    const/4 v13, 0x4

    const/4 v2, 0x0

    const/4 v8, 0x0

    :try_start_0
    const-string v11, "org.apache.commons.codec.binary.Base64"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v11, 0x1

    new-array v10, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, [B

    aput-object v12, v10, v11

    array-length v11, p0

    new-array v6, v11, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    move v9, v8

    :goto_0
    :try_start_1
    array-length v11, p0

    if-lt v5, v11, :cond_2

    const/4 v7, 0x0

    array-length v11, v6

    rem-int/lit8 v11, v11, 0x4

    if-nez v11, :cond_0

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v13, :cond_4

    :cond_0
    if-ne v7, v13, :cond_1

    add-int/lit8 v11, v9, -0x4

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    add-int/lit8 v11, v9, -0x3

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    add-int/lit8 v11, v9, -0x2

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    add-int/lit8 v11, v9, -0x1

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    :cond_1
    const-string v11, "decodeBase64"

    invoke-virtual {v1, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v3, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, [B

    move-object v2, v0

    move v8, v9

    :goto_2
    return-object v2

    :cond_2
    aget-byte v11, p0, v5

    invoke-static {v11}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMBase64;->myisBase64(B)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-eqz v11, :cond_3

    add-int/lit8 v8, v9, 0x1

    :try_start_2
    aget-byte v11, p0, v5

    aput-byte v11, v6, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    goto :goto_0

    :cond_3
    :try_start_3
    sget-object v11, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v12, "Not base64"

    invoke-virtual {v11, v12}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    move v8, v9

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v5, 0x1

    sub-int v11, v9, v11

    aget-byte v11, v6, v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v12, 0x3d

    if-ne v11, v12, :cond_5

    add-int/lit8 v7, v7, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_4
    sget-object v11, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v4

    move v8, v9

    goto :goto_4
.end method

.method public static xdmBase64Encode([B)[B
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    const-string v6, "org.apache.commons.codec.binary.Base64"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [B

    aput-object v7, v5, v6

    const-string v6, "encodeBase64"

    invoke-virtual {v1, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v3

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_0
.end method
