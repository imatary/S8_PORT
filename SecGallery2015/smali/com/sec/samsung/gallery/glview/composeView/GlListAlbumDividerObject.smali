.class Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlListAlbumDividerObject.java"


# instance fields
.field private final mAblumIndex:I

.field private mCheckWidth:F

.field private final mContext:Landroid/content/Context;

.field private mDividerHeight:F

.field private mDividerLeftMarg:F

.field private mListAlbumLeftMarg:F

.field private mListAlbumRightMarg:F

.field private mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

.field private mSoftKeyHeightPixel:I

.field private mThumbMarg:F

.field private mThumbSize:F


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;ILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->BOTTOM:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->setReuseObj(Z)V

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mAblumIndex:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->resetAttributes()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->setEmptyFill(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mContext:Landroid/content/Context;

    const v1, 0x7f10013c

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->setEmptyFillColor(I)V

    return-void
.end method

.method private resetAttributes()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mSoftKeyHeightPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0314

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mThumbSize:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0313

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mThumbMarg:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b030f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mListAlbumLeftMarg:F

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->resetDividerMargin()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mCheckWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b030c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mDividerHeight:F

    return-void
.end method

.method private resetDividerMargin()V
    .locals 5

    const v4, 0x7f0b030d

    const/4 v1, 0x0

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mSoftKeyHeightPixel:I

    :goto_0
    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mListAlbumRightMarg:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v2, v3, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mSoftKeyHeightPixel:I

    :cond_0
    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mDividerLeftMarg:F

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mSoftKeyHeightPixel:I

    :goto_2
    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mListAlbumRightMarg:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v2, v3, :cond_3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mSoftKeyHeightPixel:I

    :cond_3
    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mDividerLeftMarg:F

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public resetNavigationBarPosition(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    return-void
.end method

.method public setVisibleRange(FZF)V
    .locals 11

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v7, v7, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v8, v8, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v8, v8

    div-float v6, v7, v8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v7, v7, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v8, v8, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v8, v8

    div-float v2, v7, v8

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mThumbSize:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mThumbMarg:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    mul-float v5, v7, v2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->resetDividerMargin()V

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mThumbSize:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mListAlbumLeftMarg:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mDividerLeftMarg:F

    add-float/2addr v7, v8

    mul-float v3, v7, v6

    if-eqz p2, :cond_0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mCheckWidth:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mListAlbumLeftMarg:F

    add-float/2addr v7, v8

    mul-float/2addr v7, v6

    add-float/2addr v3, v7

    :cond_0
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mListAlbumRightMarg:F

    mul-float v4, v7, v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mDividerHeight:F

    mul-float v0, v7, v2

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v7, v7, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    sub-float/2addr v7, v3

    sub-float v1, v7, v4

    invoke-virtual {p0, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->setSize(FF)V

    sget-boolean v7, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v7, v7, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    sub-float/2addr v7, v1

    div-float/2addr v7, v9

    sub-float/2addr v7, v3

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v8, v8, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    add-float/2addr v8, v0

    div-float/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mAblumIndex:I

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    sub-float/2addr v8, p3

    add-float/2addr v8, p1

    invoke-virtual {p0, v7, v8, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->setPos(FFF)V

    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v7, v7, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    neg-float v7, v7

    add-float/2addr v7, v1

    div-float/2addr v7, v9

    add-float/2addr v7, v3

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v8, v8, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    add-float/2addr v8, v0

    div-float/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->mAblumIndex:I

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    sub-float/2addr v8, p3

    add-float/2addr v8, p1

    invoke-virtual {p0, v7, v8, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->setPos(FFF)V

    goto :goto_0
.end method
