.class Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;
.super Landroid/icu/text/CharsetRecog_Unicode;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_Unicode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_UTF_16_BE"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_Unicode;-><init>()V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "UTF-16BE"

    return-object v0
.end method

.method match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 8

    const/16 v7, 0x64

    iget-object v4, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    const/16 v3, 0xa

    array-length v5, v4

    const/16 v6, 0x1e

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_0

    aget-byte v5, v4, v1

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v4, v6

    invoke-static {v5, v6}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;->codeUnit16FromBytes(BB)I

    move-result v2

    if-nez v1, :cond_2

    const v5, 0xfeff

    if-ne v2, v5, :cond_2

    const/16 v3, 0x64

    :cond_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_1

    if-ge v3, v7, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-lez v3, :cond_3

    new-instance v5, Landroid/icu/text/CharsetMatch;

    invoke-direct {v5, p1, p0, v3}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    return-object v5

    :cond_2
    invoke-static {v2, v3}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;->adjustConfidence(II)I

    move-result v3

    if-eqz v3, :cond_0

    if-eq v3, v7, :cond_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    return-object v5
.end method
