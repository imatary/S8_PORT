.class public Lcom/sec/android/gallery3d/util/GalleryVisionUtils;
.super Ljava/lang/Object;
.source "GalleryVisionUtils.java"


# static fields
.field private static final FEATURE_IS_UPSM:Z

.field private static final MIN_DUPLICATE_RECT_RATIO:F = 0.25f

.field private static final SEF_FILE_TYPE_PRO_MODE:I = 0x9f0

.field public static final SEVENTH_SMARTCROP_RECT_NUM:I = 0x3e8

.field public static final SMART_CROP_ROI_RECT_TYPE:Ljava/lang/String; = "salience"

.field private static final SUPPORT_KNOX_DESKTOP:Z

.field private static final SUPPORT_MAX_RATIO:F = 0.45454544f

.field private static final SUPPORT_MIN_LENGTH:I = 0x168

.field private static final SUPPORT_TYPE_BMP:Ljava/lang/String; = "image/bmp"

.field private static final SUPPORT_TYPE_MS_BMP:Ljava/lang/String; = "image/x-ms-bmp"

.field private static final SUPPORT_TYPE_PNG:Ljava/lang/String; = "png"

.field public static final USER_ROI_RECT_TYPE:Ljava/lang/String; = "Modify"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportKnoxDesktop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/util/GalleryVisionUtils;->SUPPORT_KNOX_DESKTOP:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/util/GalleryVisionUtils;->FEATURE_IS_UPSM:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSEFType(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8c0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x910

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9f0

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa30

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRotatedRect(Landroid/graphics/RectF;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/RectF;
    .locals 6

    const/high16 v3, 0x3f000000    # 0.5f

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public static isDuplicateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 7

    const/high16 v6, 0x447a0000    # 1000.0f

    const/4 v3, 0x0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget v4, p0, Landroid/graphics/RectF;->left:F

    div-float/2addr v4, v6

    iget v5, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v1, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v1, Landroid/graphics/RectF;->right:F

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    iget v5, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    iget v4, p0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Landroid/graphics/RectF;->left:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    mul-float v2, v4, v5

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget v6, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    mul-float v0, v4, v5

    div-float v4, v0, v2

    const/high16 v5, 0x3e800000    # 0.25f

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_2

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isSupportType(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 12

    const-wide/16 v10, 0x200

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    sget-boolean v5, Lcom/sec/android/gallery3d/util/GalleryVisionUtils;->FEATURE_IS_UPSM:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-interface {p0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    sget-boolean v5, Lcom/sec/android/gallery3d/util/GalleryVisionUtils;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v5, :cond_2

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "image/jpeg"

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "png"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "image/bmp"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "image/x-ms-bmp"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    move v4, v6

    :goto_1
    sget-object v5, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->NO:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    invoke-virtual {p1, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getArcWidth(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I

    move-result v5

    sget-object v8, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->NO:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getArcHeight(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    sget-object v5, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->NO:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    invoke-virtual {p1, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getArcWidth(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I

    move-result v5

    sget-object v8, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->NO:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getArcHeight(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    move v3, v6

    :goto_2
    if-eqz v4, :cond_7

    if-nez v3, :cond_7

    const/16 v5, 0x168

    if-lt v2, v5, :cond_7

    int-to-float v5, v2

    int-to-float v8, v1

    div-float/2addr v5, v8

    const v8, 0x3ee8ba2e

    cmpl-float v5, v5, v8

    if-lez v5, :cond_7

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSefFileType()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryVisionUtils;->checkSEFType(I)Z

    move-result v5

    if-eqz v5, :cond_7

    move v4, v6

    :goto_3
    move v7, v4

    goto/16 :goto_0

    :cond_5
    move v4, v7

    goto :goto_1

    :cond_6
    move v3, v7

    goto :goto_2

    :cond_7
    move v4, v7

    goto :goto_3
.end method
