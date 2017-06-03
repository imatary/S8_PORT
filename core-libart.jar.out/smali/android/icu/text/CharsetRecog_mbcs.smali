.class abstract Landroid/icu/text/CharsetRecog_mbcs;
.super Landroid/icu/text/CharsetRecognizer;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;,
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc;,
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;,
        Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;,
        Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/CharsetRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getName()Ljava/lang/String;
.end method

.method match(Landroid/icu/text/CharsetDetector;[I)I
    .locals 20

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    new-instance v8, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;

    invoke-direct {v8}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;-><init>()V

    invoke-virtual {v8}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->reset()V

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v1}, Landroid/icu/text/CharsetRecog_mbcs;->nextChar(Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;Landroid/icu/text/CharsetDetector;)Z

    move-result v15

    if-eqz v15, :cond_5

    add-int/lit8 v14, v14, 0x1

    iget-boolean v15, v8, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    if-eqz v15, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_0
    const/4 v15, 0x2

    if-lt v2, v15, :cond_0

    mul-int/lit8 v15, v2, 0x5

    if-lt v15, v5, :cond_0

    :cond_2
    :goto_1
    return v4

    :cond_3
    iget v15, v8, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v6, v16, v18

    const-wide/16 v16, 0xff

    cmp-long v15, v6, v16

    if-gtz v15, :cond_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    if-eqz p2, :cond_1

    long-to-int v15, v6

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v15

    if-ltz v15, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/16 v15, 0xa

    if-gt v5, v15, :cond_7

    if-nez v2, :cond_7

    if-nez v5, :cond_6

    const/16 v15, 0xa

    if-ge v14, v15, :cond_6

    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    const/16 v4, 0xa

    goto :goto_1

    :cond_7
    mul-int/lit8 v15, v2, 0x14

    if-ge v5, v15, :cond_8

    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    if-nez p2, :cond_9

    add-int/lit8 v15, v5, 0x1e

    mul-int/lit8 v16, v2, 0x14

    sub-int v4, v15, v16

    const/16 v15, 0x64

    if-le v4, v15, :cond_2

    const/16 v4, 0x64

    goto :goto_1

    :cond_9
    int-to-float v15, v5

    const/high16 v16, 0x40800000    # 4.0f

    div-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    const-wide v16, 0x4056800000000000L    # 90.0

    div-double v12, v16, v10

    add-int/lit8 v15, v3, 0x1

    int-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    mul-double v16, v16, v12

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v4, v0

    const/16 v15, 0x64

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1
.end method

.method abstract nextChar(Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;Landroid/icu/text/CharsetDetector;)Z
.end method
