.class abstract Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;
.super Landroid/icu/text/CharsetRecog_Unicode;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_Unicode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CharsetRecog_UTF_32"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_Unicode;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getChar([BI)I
.end method

.method abstract getName()Ljava/lang/String;
.end method

.method match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 11

    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-object v4, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    iget v9, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    div-int/lit8 v9, v9, 0x4

    mul-int/lit8 v5, v9, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez v5, :cond_0

    return-object v8

    :cond_0
    invoke-virtual {p0, v4, v10}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;->getChar([BI)I

    move-result v9

    const v10, 0xfeff

    if-ne v9, v10, :cond_1

    const/4 v2, 0x1

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_5

    invoke-virtual {p0, v4, v3}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;->getChar([BI)I

    move-result v0

    if-ltz v0, :cond_2

    const v9, 0x10ffff

    if-lt v0, v9, :cond_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_3
    const v9, 0xd800

    if-lt v0, v9, :cond_4

    const v9, 0xdfff

    if-le v0, v9, :cond_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_7

    if-nez v6, :cond_7

    const/16 v1, 0x64

    :cond_6
    :goto_2
    if-nez v1, :cond_b

    :goto_3
    return-object v8

    :cond_7
    if-eqz v2, :cond_8

    mul-int/lit8 v9, v6, 0xa

    if-le v7, v9, :cond_8

    const/16 v1, 0x50

    goto :goto_2

    :cond_8
    const/4 v9, 0x3

    if-le v7, v9, :cond_9

    if-nez v6, :cond_9

    const/16 v1, 0x64

    goto :goto_2

    :cond_9
    if-lez v7, :cond_a

    if-nez v6, :cond_a

    const/16 v1, 0x50

    goto :goto_2

    :cond_a
    mul-int/lit8 v9, v6, 0xa

    if-le v7, v9, :cond_6

    const/16 v1, 0x19

    goto :goto_2

    :cond_b
    new-instance v8, Landroid/icu/text/CharsetMatch;

    invoke-direct {v8, p1, p0, v1}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    goto :goto_3
.end method
