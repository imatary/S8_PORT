.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMem;
.super Ljava/lang/Object;
.source "XDMMem.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMem;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdmLibBytesToHexString([B)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    array-length v3, p0

    if-lt v1, v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static xdmLibCharToString([C)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    array-length v3, p0

    if-gtz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    aget-char v3, p0, v1

    if-eqz v3, :cond_2

    array-length v3, p0

    if-gt v3, v1, :cond_0

    :cond_2
    new-array v0, v1, [C

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_3

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    aget-char v3, p0, v2

    aput-char v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static xdmLibHexToChar(I)I
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    if-gt v0, p0, :cond_1

    const/16 v0, 0xf

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, 0x41

    add-int/lit8 v0, v0, -0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x3f

    goto :goto_0
.end method

.method public static xdmLibStrncmp(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    return v1

    :cond_0
    move-object v0, p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static xdmLibStrrchr(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static xdmLibStrsplit([CC[C)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    array-length v4, p0

    if-eqz v4, :cond_0

    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_0

    aget-char v4, p0, v0

    if-ne v4, p1, :cond_3

    const/4 v3, 0x0

    aput-char v3, p2, v0

    array-length v3, p0

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v3, v4

    new-array v2, v3, [C

    const/4 v1, 0x0

    :goto_2
    array-length v3, p0

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    add-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    aget-char v3, p0, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    aget-char v4, p0, v0

    aput-char v4, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static xdmLibStrstr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static xdmLibToHexString([BII)Ljava/lang/String;
    .locals 8

    mul-int/lit8 v6, p2, 0x2

    new-array v1, v6, [C

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v4, p1

    move v3, v2

    :goto_0
    add-int v6, p1, p2

    if-lt v4, v6, :cond_1

    const/4 v4, 0x0

    :goto_1
    array-length v6, v1

    if-lt v4, v6, :cond_2

    :cond_0
    array-length v6, v1

    if-ne v4, v6, :cond_3

    new-instance v5, Ljava/lang/String;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    return-object v5

    :cond_1
    aget-byte v0, p0, v4

    add-int/lit8 v2, v3, 0x1

    sget-object v6, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMem;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    add-int/lit8 v3, v2, 0x1

    sget-object v6, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMem;->HEX_DIGITS:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    aget-char v6, v1, v4

    const/16 v7, 0x30

    if-gt v6, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    array-length v6, v1

    sub-int/2addr v6, v4

    invoke-static {v1, v4, v6}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method
