.class public Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;
.super Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;
.source "BurstShotIcon.java"


# static fields
.field private static final FEATURE_IS_NOS:Z


# instance fields
.field private mBurstShotCount:I

.field private mIconTextHeight:I

.field private mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->FEATURE_IS_NOS:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mBurstShotCount:I

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BURST_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mIconType:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    const v0, 0x7f020172

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mIconResId:I

    const v0, 0x7f0a006a

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mAccessibilityStringId:I

    const-string/jumbo v0, "4042"

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mSAEventId:Ljava/lang/String;

    return-void
.end method

.method private getStringPosX(Landroid/graphics/Rect;)I
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->getStringTexture()Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getStringPosY(Landroid/graphics/Rect;)I
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->getTexture()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->getExtraMargin()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getStringTexture()Lcom/sec/android/gallery3d/glrenderer/StringTexture;
    .locals 11

    const v9, 0x7f0a006c

    const/4 v10, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mBundle:Landroid/os/Bundle;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "burstshot_count"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    iget v6, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mBurstShotCount:I

    if-eq v1, v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->recycle()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    :cond_0
    iput v1, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mBurstShotCount:I

    :cond_1
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "ar"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "fa"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_2
    if-gtz v1, :cond_6

    const-string/jumbo v4, ""

    :goto_1
    const v6, 0x7f0b0067

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mIconTextHeight:I

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mContext:Landroid/content/Context;

    const v7, 0x7f10004a

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    if-nez v6, :cond_3

    new-instance v6, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mContext:Landroid/content/Context;

    const v8, 0x7f020172

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v9}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v9

    invoke-direct {v6, v7, v8, v5, v9}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;IZZ)V

    iput-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mIconTexture:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;

    :cond_3
    iget v5, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mIconTextHeight:I

    int-to-float v5, v5

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-static {v4, v5, v0, v10, v6}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FIZLandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    :cond_4
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    return-object v5

    :cond_5
    move v1, v5

    goto :goto_0

    :cond_6
    sget-boolean v6, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->FEATURE_IS_NOS:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    int-to-long v8, v1

    invoke-virtual {v6, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_8
    if-gtz v1, :cond_9

    const-string/jumbo v4, ""

    :goto_2
    goto :goto_1

    :cond_9
    sget-boolean v6, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->FEATURE_IS_NOS:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mContext:Landroid/content/Context;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v6, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_a
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method


# virtual methods
.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->getStringTexture()Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->getStringPosX(Landroid/graphics/Rect;)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->getStringPosY(Landroid/graphics/Rect;)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getAccessibilityString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseContinuousShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f0a006a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getExtraMargin()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mIconTextHeight:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public initialize()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/gallery3d/ui/playicon/MediaTypeIcon;->initialize()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mStringTexture:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/playicon/BurstShotIcon;->mBurstShotCount:I

    return-void
.end method

.method public onClick(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
