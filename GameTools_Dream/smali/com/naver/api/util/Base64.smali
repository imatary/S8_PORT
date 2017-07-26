.class public Lcom/naver/api/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final INT_TO_BASE64:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/naver/api/util/Base64;->INT_TO_BASE64:[C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .locals 14

    array-length v0, p0

    div-int/lit8 v9, v0, 0x3

    mul-int/lit8 v12, v9, 0x3

    sub-int v8, v0, v12

    add-int/lit8 v12, v0, 0x2

    div-int/lit8 v12, v12, 0x3

    mul-int/lit8 v11, v12, 0x4

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v7, Lcom/naver/api/util/Base64;->INT_TO_BASE64:[C

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v6, v5

    :goto_0
    if-ge v4, v9, :cond_0

    add-int/lit8 v5, v6, 0x1

    aget-byte v12, p0, v6

    and-int/lit16 v1, v12, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v12, p0, v5

    and-int/lit16 v2, v12, 0xff

    add-int/lit8 v5, v6, 0x1

    aget-byte v12, p0, v6

    and-int/lit16 v3, v12, 0xff

    shr-int/lit8 v12, v1, 0x2

    aget-char v12, v7, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shl-int/lit8 v12, v1, 0x4

    and-int/lit8 v12, v12, 0x3f

    shr-int/lit8 v13, v2, 0x4

    or-int/2addr v12, v13

    aget-char v12, v7, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shl-int/lit8 v12, v2, 0x2

    and-int/lit8 v12, v12, 0x3f

    shr-int/lit8 v13, v3, 0x6

    or-int/2addr v12, v13

    aget-char v12, v7, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v12, v3, 0x3f

    aget-char v12, v7, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    move v6, v5

    goto :goto_0

    :cond_0
    if-eqz v8, :cond_2

    add-int/lit8 v5, v6, 0x1

    aget-byte v12, p0, v6

    and-int/lit16 v1, v12, 0xff

    shr-int/lit8 v12, v1, 0x2

    aget-char v12, v7, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v12, 0x1

    if-ne v8, v12, :cond_1

    shl-int/lit8 v12, v1, 0x4

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v7, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v12, "=="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_1
    add-int/lit8 v6, v5, 0x1

    aget-byte v12, p0, v5

    and-int/lit16 v2, v12, 0xff

    shl-int/lit8 v12, v1, 0x4

    and-int/lit8 v12, v12, 0x3f

    shr-int/lit8 v13, v2, 0x4

    or-int/2addr v12, v13

    aget-char v12, v7, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shl-int/lit8 v12, v2, 0x2

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v7, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v12, 0x3d

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    move v5, v6

    goto :goto_1
.end method
