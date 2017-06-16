.class Lorg/apache/commons/imaging/palette/ColorGroup;
.super Ljava/lang/Object;
.source "ColorGroup.java"


# instance fields
.field public final alphaDiff:I

.field public final blueDiff:I

.field public final colorCounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/palette/ColorCount;",
            ">;"
        }
    .end annotation
.end field

.field public cut:Lorg/apache/commons/imaging/palette/ColorGroupCut;

.field public final diffTotal:I

.field public final greenDiff:I

.field public final ignoreAlpha:Z

.field public maxAlpha:I

.field public maxBlue:I

.field public final maxDiff:I

.field public maxGreen:I

.field public maxRed:I

.field public minAlpha:I

.field public minBlue:I

.field public minGreen:I

.field public minRed:I

.field public paletteIndex:I

.field public final redDiff:I

.field public final totalPoints:I


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/palette/ColorCount;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const v5, 0x7fffffff

    const/high16 v4, -0x80000000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->paletteIndex:I

    iput v5, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minRed:I

    iput v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxRed:I

    iput v5, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minGreen:I

    iput v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxGreen:I

    iput v5, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minBlue:I

    iput v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxBlue:I

    iput v5, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minAlpha:I

    iput v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxAlpha:I

    iput-object p1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    iput-boolean p2, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->ignoreAlpha:Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    new-instance v3, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v4, "empty color_group"

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/palette/ColorCount;

    iget v3, v0, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minAlpha:I

    iget v4, v0, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minAlpha:I

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxAlpha:I

    iget v4, v0, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxAlpha:I

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minRed:I

    iget v4, v0, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minRed:I

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxRed:I

    iget v4, v0, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxRed:I

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minGreen:I

    iget v4, v0, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minGreen:I

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxGreen:I

    iget v4, v0, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxGreen:I

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minBlue:I

    iget v4, v0, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minBlue:I

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxBlue:I

    iget v4, v0, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxBlue:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxAlpha:I

    iget v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minAlpha:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->alphaDiff:I

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxRed:I

    iget v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minRed:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->redDiff:I

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxGreen:I

    iget v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minGreen:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->greenDiff:I

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxBlue:I

    iget v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minBlue:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->blueDiff:I

    if-eqz p2, :cond_2

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->redDiff:I

    :goto_1
    iget v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->greenDiff:I

    iget v5, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->blueDiff:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxDiff:I

    if-eqz p2, :cond_3

    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->redDiff:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->greenDiff:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->blueDiff:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->diffTotal:I

    return-void

    :cond_2
    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->alphaDiff:I

    iget v4, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->redDiff:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_3
    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->alphaDiff:I

    goto :goto_2
.end method


# virtual methods
.method public contains(I)Z
    .locals 6

    const/4 v4, 0x0

    shr-int/lit8 v5, p1, 0x18

    and-int/lit16 v0, v5, 0xff

    shr-int/lit8 v5, p1, 0x10

    and-int/lit16 v3, v5, 0xff

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v2, v5, 0xff

    shr-int/lit8 v5, p1, 0x0

    and-int/lit16 v1, v5, 0xff

    iget-boolean v5, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->ignoreAlpha:Z

    if-nez v5, :cond_1

    iget v5, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minAlpha:I

    if-lt v0, v5, :cond_0

    iget v5, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxAlpha:I

    if-le v0, v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget v5, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minRed:I

    if-lt v3, v5, :cond_0

    iget v5, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxRed:I

    if-gt v3, v5, :cond_0

    iget v5, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minGreen:I

    if-lt v2, v5, :cond_0

    iget v5, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxGreen:I

    if-gt v2, v5, :cond_0

    iget v5, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minBlue:I

    if-lt v1, v5, :cond_0

    iget v5, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxBlue:I

    if-gt v1, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public getMedianValue()I
    .locals 22

    const-wide/16 v10, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/imaging/palette/ColorCount;

    iget v0, v8, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v10, v10, v18

    iget v0, v8, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    move/from16 v18, v0

    iget v0, v8, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    iget v0, v8, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    move/from16 v18, v0

    iget v0, v8, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    iget v0, v8, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    move/from16 v18, v0

    iget v0, v8, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v12, v12, v18

    iget v0, v8, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    move/from16 v18, v0

    iget v0, v8, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->ignoreAlpha:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    const/16 v2, 0xff

    :goto_1
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v18, v0

    long-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v15, v0

    long-to-double v0, v12

    move-wide/from16 v18, v0

    long-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v9, v0

    long-to-double v0, v6

    move-wide/from16 v18, v0

    long-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v3, v0

    shl-int/lit8 v18, v2, 0x18

    shl-int/lit8 v19, v15, 0x10

    or-int v18, v18, v19

    shl-int/lit8 v19, v9, 0x8

    or-int v18, v18, v19

    or-int v18, v18, v3

    return v18

    :cond_1
    long-to-double v0, v4

    move-wide/from16 v18, v0

    long-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v2, v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ColorGroup. minRed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minRed:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxRed:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minGreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minGreen:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxGreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxGreen:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minBlue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minBlue:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxBlue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxBlue:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minAlpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->minAlpha:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxAlpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxAlpha:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxDiff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->maxDiff:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", diffTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->diffTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
