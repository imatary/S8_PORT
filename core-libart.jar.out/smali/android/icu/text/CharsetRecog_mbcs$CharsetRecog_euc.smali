.class abstract Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc;
.super Landroid/icu/text/CharsetRecog_mbcs;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CharsetRecog_euc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;,
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_mbcs;-><init>()V

    return-void
.end method


# virtual methods
.method nextChar(Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;Landroid/icu/text/CharsetDetector;)Z
    .locals 7

    const/4 v4, 0x0

    const/16 v6, 0xa1

    const/4 v3, 0x1

    iget v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    iput v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->index:I

    iput-boolean v4, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v0

    iput v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    if-gez v0, :cond_1

    iput-boolean v3, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    :cond_0
    :goto_0
    iget-boolean v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    if-nez v5, :cond_4

    :goto_1
    return v3

    :cond_1
    const/16 v5, 0x8d

    if-le v0, v5, :cond_0

    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v1

    iget v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v1

    iput v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    if-lt v0, v6, :cond_2

    const/16 v5, 0xfe

    if-gt v0, v5, :cond_2

    if-ge v1, v6, :cond_0

    iput-boolean v3, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    goto :goto_0

    :cond_2
    const/16 v5, 0x8e

    if-ne v0, v5, :cond_3

    if-ge v1, v6, :cond_0

    iput-boolean v3, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    goto :goto_0

    :cond_3
    const/16 v5, 0x8f

    if-ne v0, v5, :cond_0

    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v2

    iget v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v2

    iput v5, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    if-ge v2, v6, :cond_0

    iput-boolean v3, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method
