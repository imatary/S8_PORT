.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposePhotoRecycleTextObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;
    }
.end annotation


# static fields
.field private static final RES_ID_TEXT_BG:I = 0x1


# instance fields
.field private mActionbarHeight:F

.field private final mContext:Landroid/content/Context;

.field private final mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

.field private final mExpanded:Z

.field private mExtraHeight:F

.field private mHeightViewRatio:F

.field private final mResources:Landroid/content/res/Resources;

.field private mTextObjHeight:F

.field private mTextObjWidth:F

.field private mTextView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mWidthViewRatio:F


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;)V
    .locals 2

    const/4 v1, 0x0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mContext:Landroid/content/Context;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;->mExpanded:Z
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mExpanded:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$Builder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private calcXPosition()F
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v2, :cond_1

    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mWidthViewRatio:F

    mul-float v0, v1, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v2, :cond_0

    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mWidthViewRatio:F

    mul-float v0, v1, v2

    goto :goto_0
.end method

.method private drawText(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0a032e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0b08e1

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0b033d

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0b033e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mContext:Landroid/content/Context;

    const v7, 0x7f10019d

    invoke-static {v4, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    mul-int/lit8 v4, v15, 0x2

    sub-int v3, v20, v4

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-direct {v0, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    move/from16 v0, v18

    int-to-float v4, v0

    invoke-static {v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setTextViewPaint(Landroid/text/TextPaint;)V

    if-nez v6, :cond_2

    move/from16 v0, v18

    int-to-float v4, v0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->newInstance(Ljava/lang/String;IFILandroid/graphics/Typeface;ZZ)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setTextViewPaint(Landroid/text/TextPaint;)V

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    float-to-int v13, v4

    const/4 v4, 0x1

    const/4 v7, 0x2

    invoke-virtual {v6, v4, v7}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setAlign(II)V

    sget-boolean v4, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    move/from16 v0, v17

    move/from16 v1, v17

    invoke-virtual {v6, v0, v13, v1, v4}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setMargin(IIII)V

    :goto_1
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getHeight()I

    move-result v19

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v14, v4, Landroid/content/res/Configuration;->fontScale:F

    float-to-double v8, v14

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    cmpl-double v4, v8, v10

    if-ltz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b073b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v19, v19, v4

    :cond_1
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setSize(II)V

    return-object p1

    :cond_2
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    move/from16 v0, v18

    int-to-float v7, v0

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    move/from16 v0, v18

    int-to-float v9, v0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v11

    const/4 v12, 0x0

    move-object v7, v2

    move v8, v3

    move v10, v5

    invoke-virtual/range {v6 .. v12}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setText(Ljava/lang/String;IFILandroid/graphics/Typeface;Z)V

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setTextViewPaint(Landroid/text/TextPaint;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0, v13, v4, v13}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setMargin(IIII)V

    goto :goto_1
.end method

.method private getActionbarHeight(F)F
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeightPixel()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    return v0
.end method

.method private getCoverViewScroll(F)F
    .locals 3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mTextObjHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mExtraHeight:F

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mExpanded:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mTextObjHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mExtraHeight:F

    add-float/2addr v1, v2

    sub-float v0, v1, p1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mActionbarHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mTextObjHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mExtraHeight:F

    add-float/2addr v1, v2

    neg-float v0, v1

    goto :goto_0
.end method

.method private init()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->resetAttributes()V

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mTextView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->initCanvas()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mHeightViewRatio:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mTextObjHeight:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mActionbarHeight:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mExtraHeight:F

    sub-float v0, v1, v2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->calcXPosition()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setPos(FFF)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mTextObjWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mTextObjHeight:F

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setSize(FF)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setUseTouchEvent(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setVisibility(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->initGenericMotionListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    return-void
.end method

.method private initCanvas()V
    .locals 5

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mTextObjWidth:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mWidthViewRatio:F

    div-float/2addr v3, v4

    float-to-int v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b033c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v3, v2, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mTextView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->drawText(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mTextView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mTextView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void
.end method

.method private initGenericMotionListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;)V

    return-object v0
.end method

.method private resetAttributes()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b033c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mWidthViewRatio:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mHeightViewRatio:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mHeightViewRatio:F

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->getActionbarHeight(F)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mActionbarHeight:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mTextObjWidth:F

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mHeightViewRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mTextObjHeight:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mActionbarHeight:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mExtraHeight:F

    return-void
.end method

.method private setTextViewPaint(Landroid/text/TextPaint;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method drawBorder(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setFocusBorderVisible(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setBorderWidth(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setBorderColor(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setBorderVisible(Z)V

    goto :goto_0
.end method

.method public drawFocusBorder(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->getFocusBorderVisible()Z

    move-result v1

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a032e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->drawBorder(Z)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->drawBorder(Z)V

    goto :goto_0
.end method

.method public resetLayout(FZ)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->resetAttributes()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->initCanvas()V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mTextObjWidth:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mTextObjHeight:F

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setSize(FF)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setVisibleRange(F)V

    return-void
.end method

.method public setVisibleRange(F)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->getCoverViewScroll(F)F

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v1, v2, v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->calcXPosition()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoRecycleTextObject;->setPos(FFF)V

    return-void
.end method
