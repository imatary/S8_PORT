.class public Lcom/samsung/app/video/editor/vesdk/EditWrapper;
.super Lcom/samsung/app/video/editor/external/Edit;
.source "EditWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private end_values:[F

.field private kenburn_orientation:I

.field private mInterpolation:I

.field private position_values:[F

.field private ref_values:[F

.field private relativeEffectEndTime:I

.field private relativeEffectStartTime:I

.field private start_values:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/Edit;-><init>()V

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->start_values:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->position_values:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->end_values:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->ref_values:[F

    iput v2, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->kenburn_orientation:I

    iput v2, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->mInterpolation:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/app/video/editor/external/Edit;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->start_values:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->position_values:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->end_values:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->ref_values:[F

    iput v2, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->kenburn_orientation:I

    iput v2, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->mInterpolation:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/vesdk/EditWrapper;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x9

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getType()Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getSubType()Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getEffectStartTime()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getEffectEndTime()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/app/video/editor/external/Edit;-><init>(Lcom/samsung/app/video/editor/external/EditType;Lcom/samsung/app/video/editor/external/EditSubType;II)V

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->start_values:[F

    new-array v0, v4, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->position_values:[F

    new-array v0, v4, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->end_values:[F

    new-array v0, v4, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->ref_values:[F

    iput v5, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->kenburn_orientation:I

    iput v5, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->mInterpolation:I

    iget-object v0, p1, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->start_values:[F

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->start_values:[F

    iget-object v0, p1, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->end_values:[F

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->end_values:[F

    iget-object v0, p1, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->position_values:[F

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->position_values:[F

    iget-object v0, p1, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->ref_values:[F

    iput-object v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->ref_values:[F

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->kenburn_orientation:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->kenburn_orientation:I

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->relativeEffectStartTime:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->relativeEffectStartTime:I

    iget v0, p1, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->relativeEffectEndTime:I

    iput v0, p0, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->relativeEffectEndTime:I

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getRefRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getStartRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getEndRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getPositionRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setKenburns(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getEffectEndTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectEndTime(I)Z

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getEffectStartTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectStartTime(I)Z

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getVolumeLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setVolumeLevel(I)Z

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getEffectSubType()Lcom/samsung/app/video/editor/external/EffectSubType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getEffectSubType()Lcom/samsung/app/video/editor/external/EffectSubType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectSubType(Lcom/samsung/app/video/editor/external/EffectSubType;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getEffectResourceFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setEffectResourceFile(Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->getTrans_duration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/vesdk/EditWrapper;->setTrans_duration(I)Z

    return-void

    :array_0
    .array-data 4
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800008    # 1.000001f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
