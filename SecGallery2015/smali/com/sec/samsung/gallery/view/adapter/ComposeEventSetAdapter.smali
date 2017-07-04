.class public Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
.source "ComposeEventSetAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ComposeMediaItemAdapter"


# instance fields
.field private mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

.field private final mIsKnox:Z

.field private final mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mIsKnox:Z

    return-void
.end method

.method private addNewMarkView(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    if-eqz p1, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0a02c3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewMarkFontSize()I

    move-result v6

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f100221

    invoke-static {v9, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f020109

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f100024

    invoke-static {v9, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    int-to-float v10, v6

    invoke-static {v9, v10, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoMediumFont()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v13}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewNewLabelTopPadding()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    add-int v4, v9, v10

    const/4 v8, 0x0

    sget-boolean v9, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->sIsTallCategoryLanguage:Z

    if-nez v9, :cond_0

    int-to-float v9, v4

    iget v10, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v11, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v10, v11

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    :cond_0
    sget v9, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->BOLD_FONT_START_END_PADDING:I

    invoke-virtual {v7, v9, v8, v12, v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v9

    sget v10, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->BOLD_FONT_START_END_PADDING:I

    add-int/2addr v9, v10

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewNewLabelPadding()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    invoke-virtual {v3, v9, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v9, 0x3

    invoke-virtual {v3, v9, v13}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewMarkTopMargin()I

    move-result v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewMarkRightMargin()I

    move-result v10

    invoke-virtual {v3, v12, v9, v10, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/4 v9, 0x6

    invoke-virtual {p1, v3, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/16 v9, 0xc

    invoke-virtual {v3, v7, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    return-void
.end method

.method private drawAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;F)V
    .locals 30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewTitleFontColor()I

    move-result v19

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewSubTitleFontColor()I

    move-result v14

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewTitleFontSize()I

    move-result v21

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewTitleHeight()I

    move-result v20

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewSubTitleFontSize()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewSelctionModeTitleLeftMargin()I

    move-result v6

    :goto_0
    move v12, v6

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewTitleTopMargin()I

    move-result v24

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewSubTitleTopMargin()I

    move-result v17

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewTitlePaddingforSSFont()I

    move-result v9

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getWin2WorldRatio()F

    move-result v25

    div-float v25, p3, v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    const/4 v11, 0x0

    const/16 v25, 0xcc

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v22

    check-cast v22, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v18

    :goto_1
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v10

    sget-object v25, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    sub-int v25, v23, v9

    sub-int v25, v25, v12

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-static {v0, v11, v1, v10}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v5

    if-nez v22, :cond_6

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v19

    invoke-static {v5, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v22

    sget-boolean v25, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v25, :cond_5

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v25

    sub-int v12, v12, v25

    :goto_2
    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v6, v1, v12, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    sget-object v25, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v25

    if-nez v25, :cond_1

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v25

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    invoke-virtual/range {v25 .. v29}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_1
    const/16 v25, 0xcc

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_3
    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    sget-boolean v25, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v25, :cond_9

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v25

    iget v0, v8, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v26, v0

    iget v0, v8, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    :goto_4
    const/16 v25, 0xcd

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v16

    check-cast v16, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getEventAlbumTimeInfo()Ljava/lang/String;

    move-result-object v13

    :goto_5
    int-to-float v0, v15

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v10

    sub-int v25, v23, v9

    div-int/lit8 v26, v12, 0x2

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v13, v11, v0, v10}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v5

    if-nez v16, :cond_b

    int-to-float v0, v15

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v5, v0, v14}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v16

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    add-int v25, v24, v20

    add-int v25, v25, v17

    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v6, v1, v12, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    sget-object v25, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v25

    if-nez v25, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v25

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    invoke-virtual/range {v25 .. v29}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_2
    const/16 v25, 0xcd

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_6
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    sget-boolean v25, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v25, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v25

    iget v0, v8, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v26, v0

    iget v0, v8, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    :goto_7
    return-void

    :cond_3
    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewTitleLeftMargin()I

    move-result v6

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v18, ""

    goto/16 :goto_1

    :cond_5
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v25

    sub-int v6, v6, v25

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    sget-object v25, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v25

    if-nez v25, :cond_7

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v25

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    invoke-virtual/range {v25 .. v29}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_7
    sget-boolean v25, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v25, :cond_8

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v25

    sub-int v12, v12, v25

    :goto_8
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v6, v1, v12, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    goto/16 :goto_3

    :cond_8
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v25

    sub-int v6, v6, v25

    goto :goto_8

    :cond_9
    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    add-int v25, v25, v9

    iget v0, v8, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v26, v0

    iget v0, v8, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    goto/16 :goto_4

    :cond_a
    const-string/jumbo v13, ""

    goto/16 :goto_5

    :cond_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    sget-object v25, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v25

    if-nez v25, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v25

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    invoke-virtual/range {v25 .. v29}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_c
    add-int v25, v24, v20

    add-int v25, v25, v17

    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v6, v1, v12, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    goto/16 :goto_6

    :cond_d
    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    add-int v25, v25, v9

    iget v0, v8, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v26, v0

    iget v0, v8, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    goto/16 :goto_7
.end method

.method private drawAlbumLabelBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v2, 0x7f02010d

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0
.end method

.method private drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;Z)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 6

    const/16 v5, 0xd

    const/4 v4, 0x2

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz p2, :cond_3

    if-nez v0, :cond_1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsFolderModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f020061

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setScaleRatio(F)V

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v0, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    :goto_1
    return-object p1

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f020060

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto :goto_1
.end method

.method private drawThumbStroke(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 5

    const/16 v4, 0x12

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f020066

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    return-object p1
.end method

.method private drawTitleButtonBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0
.end method

.method private drawTitleButtonLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V
    .locals 23

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0b0103

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f100111

    invoke-static/range {v19 .. v20}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0b0102

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0b057d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0b00fe

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0b0101

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mObjective:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0a017b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0b001d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/16 v19, -0x1

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    mul-int/lit8 v19, v7, 0x2

    sub-int v11, v8, v19

    :goto_1
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    int-to-float v0, v11

    move/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v10

    const/16 v19, 0xce

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v17

    check-cast v17, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-nez v17, :cond_6

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v10, v0, v15}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->setTextViewPaint(Landroid/text/TextPaint;Z)V

    const/16 v19, 0x2

    const/16 v20, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v19

    sub-int v19, v4, v19

    div-int/lit8 v19, v19, 0x2

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v9, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v21, v0

    iget v0, v9, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    sub-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f0b0108

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    add-int v18, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1, v6, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    const/16 v19, 0xce

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_2
    sget-boolean v19, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v19, :cond_2

    sget-object v19, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v19

    if-eqz v19, :cond_7

    const/4 v13, 0x4

    :cond_2
    :goto_3
    invoke-virtual {v12, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    sget v20, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->BOLD_FONT_START_END_PADDING:I

    add-int v20, v20, v13

    mul-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    const/16 v19, -0x1

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v19

    mul-int/lit8 v20, v7, 0x2

    add-int v19, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v19, v7, 0x2

    sub-int v11, p3, v19

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0a024d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0b001e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/16 v19, -0x1

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    mul-int/lit8 v19, v7, 0x2

    sub-int v11, v8, v19

    goto/16 :goto_1

    :cond_5
    mul-int/lit8 v19, v7, 0x2

    sub-int v11, p3, v19

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    const/16 v19, 0x2

    const/16 v20, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->setTextViewPaint(Landroid/text/TextPaint;Z)V

    goto/16 :goto_2

    :cond_7
    const/4 v13, 0x5

    goto/16 :goto_3

    :cond_8
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    if-ge v0, v11, :cond_9

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v19

    mul-int/lit8 v20, v7, 0x2

    add-int v19, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_0
.end method

.method private getLatestEventInfo()I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "latest_update_event"

    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setTextViewPaint(Landroid/text/TextPaint;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method


# virtual methods
.method public drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 17

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v13}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getLatestEventInfo()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v14

    if-ne v13, v14, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaSet;->isSuggestionEvent()Z

    move-result v5

    const/16 v13, 0xc9

    invoke-virtual {v1, v13}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0a0438

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewSuggestionFontSize()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewSuggestionFontColor()I

    move-result v9

    if-nez v8, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f02014c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float v13, v11

    invoke-static {v7, v13, v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    int-to-float v13, v11

    invoke-virtual {v12, v13}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setTextSize(F)V

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0b00f7

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v3, v14, v15}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v8, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v13, 0x3

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewSuggestionTopMargin()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewSuggestionRightMargin()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v13, v14, v15, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewSuggestionStartPadding()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewSuggestionHeight()I

    move-result v14

    invoke-virtual {v8, v13, v14}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/16 v13, 0xc9

    invoke-virtual {v1, v8, v13}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/16 v13, 0xca

    invoke-virtual {v8, v12, v13}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    :goto_1
    const/4 v13, 0x6

    invoke-virtual {v1, v13}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v5, :cond_4

    if-eqz v4, :cond_4

    if-nez v6, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->addNewMarkView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_1
    :goto_2
    return-object v1

    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_3
    if-eqz v8, :cond_0

    invoke-virtual {v1, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_1

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto :goto_2
.end method

.method public getAllCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAllCount()I

    move-result v0

    return v0
.end method

.method public getAllItem(IZ)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllItemCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAllItemCount(I)I

    move-result v0

    return v0
.end method

.method public getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getCount()I

    move-result v0

    return v0
.end method

.method public getCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getCount(I)I

    move-result v0

    return v0
.end method

.method public getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemImage(II)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getImage(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getScreenNailImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getSource()Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method public getTitleButtonView(ILcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/Object;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getTitleButtonView(ILcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/Object;I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    return-object v0
.end method

.method public getTitleButtonView(ILcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/Object;I)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v2, p1

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    instance-of v2, p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->drawTitleButtonBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v1

    check-cast p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0, v1, p3, p4}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->drawTitleButtonLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V

    goto :goto_0
.end method

.method public getView(IILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlLayer;Ljava/lang/Object;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v2, p1

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-eqz v2, :cond_0

    if-gez p2, :cond_2

    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->drawAlbumLabelBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v1

    check-cast p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->getItemWidth()F

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->drawAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;F)V

    instance-of v2, p5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_0

    check-cast p5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;Z)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0

    :cond_2
    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-ge p2, v2, :cond_0

    if-nez p3, :cond_3

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    move-object v1, p3

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0
.end method

.method public getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Z)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;ZZ)Z

    move-result v0

    return v0
.end method

.method public getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;ZZ)Z
    .locals 12

    const/4 v7, 0x0

    if-nez p4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mReorderEnable:Z

    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    const/4 v4, -0x1

    move-object/from16 v0, p4

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBucketId:I

    if-eqz p3, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v10, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->getItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v11

    iget-object v8, v10, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    move-object/from16 v0, p4

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v4

    move-object/from16 v0, p4

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    :goto_1
    if-eqz v7, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v5, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v4

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    sget-boolean v4, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->FEATURE_IS_DUALSCREEN:Z

    if-eqz v4, :cond_1

    iget-object v4, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v4

    move-object/from16 v0, p4

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBucketId:I

    :cond_1
    if-nez v8, :cond_a

    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lt p1, v4, :cond_4

    :cond_3
    const-string/jumbo v4, "ComposeMediaItemAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GetViewInfo pos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v7, v4, p1

    if-eqz v7, :cond_5

    iget v4, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-lt p2, v4, :cond_7

    :cond_5
    if-nez v7, :cond_6

    const-string/jumbo v4, "ComposeMediaItemAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GetViewInfo album is null = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v4, "ComposeMediaItemAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GetViewInfo position is over index  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    iget-object v4, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v11, v4, p2

    if-nez v11, :cond_8

    const-string/jumbo v4, "ComposeMediaItemAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GetViewInfo mediaItem is null = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", sub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    move-object/from16 v0, p4

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v4

    move-object/from16 v0, p4

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    iget-object v4, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    aget-object v10, v4, p2

    if-nez v10, :cond_9

    const/4 v8, 0x0

    :goto_3
    goto/16 :goto_1

    :cond_9
    iget-object v8, v10, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-nez v4, :cond_b

    if-eqz v10, :cond_b

    iget-object v4, v10, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v4, :cond_b

    iget-object v4, v10, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    :cond_b
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->isEnabledResStroke()Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->drawThumbStroke(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    :cond_c
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    move/from16 v0, p5

    invoke-direct {p0, v4, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;Z)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_e

    instance-of v4, v11, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v4, :cond_d

    instance-of v4, v11, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v4, :cond_e

    :cond_d
    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v4

    if-nez v4, :cond_e

    check-cast v11, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/LocalImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v3

    :cond_e
    move-object/from16 v0, p4

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    move-object/from16 v0, p4

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    move-object/from16 v0, p4

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    invoke-static/range {v1 .. v6}, Lcom/sec/samsung/gallery/util/FaceUtil;->calcFaceCropRect(IILandroid/graphics/RectF;FFI)Landroid/graphics/Rect;

    move-result-object v9

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    move-object/from16 v0, p4

    iput-object v8, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public isVisibleHighlightVideo(I)Z
    .locals 6

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lt p1, v5, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v5, p1

    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-nez v5, :cond_4

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v3, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;->getHighlightVideoStatus()I

    move-result v1

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    if-nez v1, :cond_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isVisibleMapView(I)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsGooglePlayServicesAvailable:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-ge p1, v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v4, p1

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-eqz v4, :cond_0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->hasLocation()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mIsKnox:Z

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    move v3, v1

    goto :goto_0
.end method

.method public requestScreenNailUrgent(II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->requestScreenNail(IIZ)Z

    move-result v0

    return v0
.end method

.method public requestScreenNailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->requestScreenNail(Lcom/sec/android/gallery3d/data/MediaItem;IZ)Z

    move-result v0

    return v0
.end method

.method public setInitThumbType(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    int-to-byte v1, p1

    iput-byte v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLevel:B

    return-void
.end method

.method public setScreenNailImage(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;I)V
    .locals 8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->recycle()V

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    new-instance v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object v2, p1

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;IIILandroid/graphics/Bitmap;)V

    iput-object v0, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    return-void
.end method

.method public setThumbReslevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->setThumbReslevel(I)V

    return-void
.end method
