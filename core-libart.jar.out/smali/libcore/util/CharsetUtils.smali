.class public final Llibcore/util/CharsetUtils;
.super Ljava/lang/Object;
.source "CharsetUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native asciiBytesToChars([BII[C)V
.end method

.method public static native isoLatin1BytesToChars([BII[C)V
.end method

.method public static native toAsciiBytes(Ljava/lang/String;II)[B
.end method

.method public static toBigEndianUtf16Bytes(Ljava/lang/String;II)[B
    .locals 7

    mul-int/lit8 v6, p2, 0x2

    new-array v3, v6, [B

    add-int v1, p1, p2

    const/4 v4, 0x0

    move v2, p1

    move v5, v4

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v4, v5, 0x1

    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v4, 0x1

    int-to-byte v6, v0

    aput-byte v6, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static native toIsoLatin1Bytes(Ljava/lang/String;II)[B
.end method

.method public static native toUtf8Bytes(Ljava/lang/String;II)[B
.end method
