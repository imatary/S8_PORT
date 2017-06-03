.class abstract Landroid/icu/text/CharsetRecog_Unicode;
.super Landroid/icu/text/CharsetRecognizer;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;,
        Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;,
        Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;,
        Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;,
        Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/CharsetRecognizer;-><init>()V

    return-void
.end method

.method static adjustConfidence(II)I
    .locals 1

    if-nez p0, :cond_2

    add-int/lit8 p1, p1, -0xa

    :cond_0
    :goto_0
    if-gez p1, :cond_4

    const/4 p1, 0x0

    :cond_1
    :goto_1
    return p1

    :cond_2
    const/16 v0, 0x20

    if-lt p0, v0, :cond_3

    const/16 v0, 0xff

    if-gt p0, v0, :cond_3

    :goto_2
    add-int/lit8 p1, p1, 0xa

    goto :goto_0

    :cond_3
    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_2

    :cond_4
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    const/16 p1, 0x64

    goto :goto_1
.end method

.method static codeUnit16FromBytes(BB)I
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method abstract getName()Ljava/lang/String;
.end method

.method abstract match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
.end method
