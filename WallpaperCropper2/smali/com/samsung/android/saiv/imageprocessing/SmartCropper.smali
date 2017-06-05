.class public Lcom/samsung/android/saiv/imageprocessing/SmartCropper;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;
    }
.end annotation


# static fields
.field public static final BIG_OBJECT_COMPOSITION_THRESHOLD:I = 0x0

.field public static final CROP_MODE_COMPOSITION_ALIGNMENT:I = 0x2

.field public static final CROP_MODE_KEEP_OBJECT_ASPECT:I = 0x8

.field public static final CROP_MODE_KEEP_ORIGINAL_ASPECT:I = 0x4

.field public static final CROP_MODE_QUADRATIC_COMPOSITION_OPTIMIZATION:I = 0x10

.field public static final CROP_MODE_USE_COLOR:I = 0x1

.field private static final E_INVALID_ARG:I = -0x1

.field private static final E_NO_DATA_INPUT:I = -0x5

.field private static final E_OPERATION_FAIL:I = -0x2

.field private static final E_OUT_OF_MEMORY:I = -0x3

.field private static final E_SUCCESS:I = 0x0

.field private static final E_UN_INIT:I = -0x4

.field public static final MIN_CROP_RECT_COMPOSITION_THRESHOLD:I = 0x3

.field public static final OVER_BIG_OBJECT_COMPOSITION_THRESHOLD:I = 0x1

.field public static final OVER_CROP_OBJECT_COMPOSITION_THRESHOLD:I = 0x2

.field public static final USE_INFO_MONITOR:I = 0x1000


# instance fields
.field private _cropMode:I

.field private mBDPtr:J

.field public memory:I

.field private useInfoMonitor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "smart_cropping"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->memory:I

    const/16 v0, 0x3f

    invoke-static {v0, v1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->init(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->memory:I

    iput p1, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->_cropMode:I

    const/16 v0, 0x3f

    invoke-static {v0, p1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->init(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    iput-boolean v2, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->useInfoMonitor:Z

    and-int/lit16 v0, p1, 0x1000

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->useInfoMonitor:Z

    goto :goto_0
.end method

.method public static native SetCropAreaThreshold(JF)I
.end method

.method public static native addRect(JIIII)Z
.end method

.method public static native convertARGBToGray([B[III)I
.end method

.method public static native convertGRAYToARGB([B[III)I
.end method

.method public static native findCropRect(JII[I)I
.end method

.method public static native findMultiObjectRect(J[I)I
.end method

.method public static native findObjRect(J[I)Z
.end method

.method public static native findObjectRect(J[I)I
.end method

.method public static native getFeatureMap(J[B)I
.end method

.method public static native getObjectCount(J)I
.end method

.method public static native getThumbnailRect(JII[I)Z
.end method

.method public static native init(II)J
.end method

.method private printVersionCode()V
    .locals 2

    const-string/jumbo v0, "SCE_v2.0"

    const-string/jumbo v1, "This is SCE v2.02"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native release(J)V
.end method

.method public static native releaseOneImage(J)I
.end method

.method public static native setCompositionThreshold(JIF)Z
.end method

.method public static native setImage(J[BIII)J
.end method

.method public static native setImageByteBuf(J[BIII)J
.end method

.method public static native setImageIntBuf(J[IIII)J
.end method

.method public static native setObjectTightness(JF)I
.end method

.method public static native setROI(JIIII)I
.end method


# virtual methods
.method public addROI(Landroid/graphics/Rect;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->addRect(JIIII)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->release(J)V

    iput-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public findCropRect(II)Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    iget-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v2, v3, p1, p2, v1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->findCropRect(JII[I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    aget v2, v1, v4

    iput v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x2

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x3

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public findMultiObjectRect()[Landroid/graphics/Rect;
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v2, v3}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->getObjectCount(J)I

    move-result v1

    mul-int/lit8 v2, v1, 0x4

    new-array v2, v2, [I

    new-array v3, v1, [Landroid/graphics/Rect;

    if-gtz v1, :cond_1

    :cond_0
    return-object v3

    :cond_1
    iget-wide v4, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v4, v5, v2}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->findMultiObjectRect(J[I)I

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aput-object v4, v3, v0

    aget-object v4, v3, v0

    mul-int/lit8 v5, v0, 0x4

    aget v5, v2, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    aget-object v4, v3, v0

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x1

    aget v5, v2, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    aget-object v4, v3, v0

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x2

    aget v5, v2, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    aget-object v4, v3, v0

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x3

    aget v5, v2, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findObjectRect()Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    iget-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v2, v3, v1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->findObjectRect(J[I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    aget v2, v1, v4

    iput v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x2

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x3

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public getCropRect(II)Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    iget-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v2, v3, p1, p2, v1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->getThumbnailRect(JII[I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    aget v2, v1, v4

    iput v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x2

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x3

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public getObjectRect()Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x5

    new-array v1, v1, [I

    iget-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v2, v3, v1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->findObjRect(J[I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->useInfoMonitor:Z

    if-nez v2, :cond_1

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    aget v2, v1, v4

    iput v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x2

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x3

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    aget v1, v1, v2

    iput v1, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->memory:I

    goto :goto_1
.end method

.method public makeFeatureMap([B)I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->getFeatureMap(J[B)I

    move-result v0

    return v0
.end method

.method public releaseImage()Z
    .locals 3

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->releaseOneImage(J)I

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setCompositionThreshold(IF)Z
    .locals 2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string/jumbo v0, "Autocrop"

    const-string/jumbo v1, "This type threshold is not suppored anymore."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->setMinCropSize(F)Z

    move-result v0

    return v0
.end method

.method public setImage([BIII)Z
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->printVersionCode()V

    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->setImage(J[BIII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setImage([IIII)Z
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->printVersionCode()V

    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->setImageIntBuf(J[IIII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setMinCropSize(F)Z
    .locals 3

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->SetCropAreaThreshold(JF)I

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setObjectTightness(F)Z
    .locals 3

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->setObjectTightness(JF)I

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setROI(Landroid/graphics/Rect;)Z
    .locals 7

    const/4 v6, 0x0

    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->setROI(JIIII)I

    move-result v0

    if-eqz v0, :cond_0

    return v6

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
