.class public Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static SMOOTHING_TYPE_AUTO:I

.field public static SMOOTHING_TYPE_GROUP_NEAREST:I

.field public static SMOOTHING_TYPE_MARKOV_CHAIN:I

.field public static SMOOTHING_TYPE_NONE:I

.field public static SMOOTHING_TYPE_TO_CENTER:I

.field public static SMOOTHING_TYPE_TO_FIRST_FRAME:I

.field public static TRANSFORMATION_CALCULATION_GRID_PREDICTOR_BILINEAR_INTER_WARP:I

.field public static TRANSFORMATION_CALCULATION_ROTATION_BASED_BILINEAR_INTER_WARP:I

.field public static TRANSFORMATION_CALCULATION_ROTATION_BASED_NEAREST_INTER_WARP:I

.field public static TRANSFORMATION_CALCULATION_TRANSLATION_BASED:I


# instance fields
.field private mDefaultStableRectHeight:I

.field private mDefaultStableRectWidth:I

.field private mImageStabilizationPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->TRANSFORMATION_CALCULATION_TRANSLATION_BASED:I

    sput v1, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->TRANSFORMATION_CALCULATION_ROTATION_BASED_BILINEAR_INTER_WARP:I

    sput v2, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->TRANSFORMATION_CALCULATION_ROTATION_BASED_NEAREST_INTER_WARP:I

    sput v3, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->TRANSFORMATION_CALCULATION_GRID_PREDICTOR_BILINEAR_INTER_WARP:I

    sput v0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->SMOOTHING_TYPE_NONE:I

    sput v1, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->SMOOTHING_TYPE_TO_CENTER:I

    sput v2, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->SMOOTHING_TYPE_TO_FIRST_FRAME:I

    sput v3, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->SMOOTHING_TYPE_GROUP_NEAREST:I

    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->SMOOTHING_TYPE_MARKOV_CHAIN:I

    const/4 v0, 0x5

    sput v0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->SMOOTHING_TYPE_AUTO:I

    const-string/jumbo v0, "saiv_imagesequencestabilizer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectWidth:I

    iput v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectHeight:I

    invoke-direct {p0}, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mImageStabilizationPtr:J

    return-void
.end method

.method private native addImage(JJ)V
.end method

.method private native clear(J)V
.end method

.method private destroy()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mImageStabilizationPtr:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->release(J)I

    move-result v0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mImageStabilizationPtr:J

    return v0
.end method

.method private native getStableImage(JJ)J
.end method

.method private native getStableRect(J[I)Z
.end method

.method private native init()J
.end method

.method private native release(J)I
.end method

.method private native setSmoothingType(JI)V
.end method

.method private native setStableImageSize(JII)V
.end method

.method private native setTransformationCalculationType(JI)V
.end method

.method private native useFixedAspect(JZ)V
.end method


# virtual methods
.method public addOriginalImage(Lcom/samsung/android/saiv/vision/Image;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mImageStabilizationPtr:J

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getPtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->addImage(JJ)V

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectWidth:I

    if-ge v0, v2, :cond_2

    :cond_0
    iput v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectWidth:I

    :goto_0
    iget v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectHeight:I

    if-ge v1, v0, :cond_3

    :cond_1
    iput v1, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectHeight:I

    :goto_1
    return-void

    :cond_2
    iget v2, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectWidth:I

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectHeight:I

    if-ltz v0, :cond_1

    goto :goto_1
.end method

.method public clear()V
    .locals 3

    const/4 v2, -0x1

    iget-wide v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mImageStabilizationPtr:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->clear(J)V

    iput v2, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectWidth:I

    iput v2, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectHeight:I

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->destroy()I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getStableImage(Lcom/samsung/android/saiv/vision/Image;)Lcom/samsung/android/saiv/vision/Image;
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mImageStabilizationPtr:J

    invoke-virtual {p1}, Lcom/samsung/android/saiv/vision/Image;->getPtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->getStableImage(JJ)J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/saiv/vision/Image;

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/saiv/vision/Image;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStableRectangle()Landroid/graphics/Rect;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-wide v2, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mImageStabilizationPtr:J

    invoke-direct {p0, v2, v3, v0}, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->getStableRect(J[I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aget v2, v0, v4

    iput v2, v1, Landroid/graphics/Rect;->left:I

    aget v2, v0, v5

    iput v2, v1, Landroid/graphics/Rect;->top:I

    aget v2, v0, v6

    iput v2, v1, Landroid/graphics/Rect;->right:I

    aget v0, v0, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectWidth:I

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectHeight:I

    return-object v1

    :cond_0
    aput v4, v0, v4

    aput v4, v0, v5

    iget v1, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectWidth:I

    aput v1, v0, v6

    iget v1, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectHeight:I

    aput v1, v0, v7

    goto :goto_0
.end method

.method public setSmoothingType(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mImageStabilizationPtr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->setSmoothingType(JI)V

    return-void
.end method

.method public setStableImageSize(II)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mImageStabilizationPtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->setStableImageSize(JII)V

    return-void
.end method

.method public setTransformationCalculationType(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mImageStabilizationPtr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->setTransformationCalculationType(JI)V

    return-void
.end method

.method public useFixedAspect(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mImageStabilizationPtr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->useFixedAspect(JZ)V

    return-void
.end method
