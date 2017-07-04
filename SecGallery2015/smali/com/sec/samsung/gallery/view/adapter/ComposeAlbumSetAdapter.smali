.class public Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;
.super Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
.source "ComposeAlbumSetAdapter.java"


# static fields
.field private static final FeatureUseFaceTag:Z

.field private static final FeatureUseGraceAlbumViewGUI:Z

.field private static final PLUS_ICON_WEIGHT:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "ComposeAlbumSetAdapter"


# instance fields
.field private mAlbumCountHeight:I

.field private mAlbumNameHeight:I

.field private mAlbumNameMarginTop:I

.field private mAlbumObjWidth:F

.field private mAlbumTitleLeftMargin:I

.field private mAlbumTitleTextColor:I

.field private mAlbumTitleTextSize:I

.field private mAlbumTitleTextWidth:I

.field private mCountFontSize:I

.field private mCreateIcon:Landroid/graphics/Bitmap;

.field private mIsCheckMode:Z

.field private mIsListAlbumLayout:Z

.field private mIsPreCheckMode:Z

.field private mTitleObjWidth:F

.field private typedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseFaceTag:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseGraceAlbumViewGUI:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsPreCheckMode:Z

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mCreateIcon:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->typedValue:Landroid/util/TypedValue;

    const/4 v2, 0x6

    if-ne p4, v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsAlbumCopyMoveMode:Z

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->typedValue:Landroid/util/TypedValue;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x1010038

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->typedValue:Landroid/util/TypedValue;

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->notifyLayoutChanged()V

    return-void
.end method

.method private drawAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;Ljava/lang/Object;)V
    .locals 32

    const/4 v13, 0x0

    if-eqz p2, :cond_b

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWeChatSightPath(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_0

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSDCardWeChatSightPath(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_7

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v26, v0

    const v27, 0x7f0a04e2

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    move/from16 v26, v0

    if-lez v26, :cond_8

    move-object/from16 v0, p2

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    :goto_1
    if-nez v5, :cond_1

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v26, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    aget-object v5, v25, v26

    const-string/jumbo v26, "Camera"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v26, v0

    const v27, 0x7f0a00de

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_1
    sget-boolean v26, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v26, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v26, v0

    const v27, 0x7f0b0333

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    :goto_2
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mCountFontSize:I

    sget-boolean v26, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v26, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsListAlbumLayout:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->typedValue:Landroid/util/TypedValue;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v26, v0

    :goto_3
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    :goto_4
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->setCreateAlbumLabelValues(Z)V

    sget-boolean v26, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseFaceTag:Z

    if-eqz v26, :cond_2

    instance-of v0, v13, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    move/from16 v26, v0

    if-nez v26, :cond_2

    const-string/jumbo v26, "/"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_2

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v5, v25, v26

    :cond_2
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaSet;->getTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v26

    sget-object v27, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v26, v0

    const v27, 0x7f0a031f

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_3
    const/16 v26, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v16

    check-cast v16, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz p2, :cond_15

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mIsNewAlbum:Z

    move/from16 v26, v0

    if-eqz v26, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsListAlbumLayout:Z

    move/from16 v26, v0

    if-eqz v26, :cond_15

    if-nez v16, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v26, v0

    const v27, 0x7f0a02c3

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewMarkFontSize()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f100221

    invoke-static/range {v26 .. v27}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v20

    sget-boolean v26, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v26, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v26, v0

    const v27, 0x7f02010a

    invoke-virtual/range {v26 .. v27}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_5
    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f100024

    invoke-static/range {v26 .. v27}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v26

    sget-object v27, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v9, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v27

    sget-boolean v26, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->USE_N_OS_DECOR:Z

    if-eqz v26, :cond_10

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v26

    :goto_6
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/16 v26, 0x2

    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewNewLabelTopPadding()I

    move-result v26

    mul-int/lit8 v17, v26, 0x2

    const/16 v24, 0x0

    sget-boolean v26, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->sIsTallCategoryLanguage:Z

    if-nez v26, :cond_4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v27, v0

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    sub-float v26, v26, v27

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v24

    :cond_4
    sget v26, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->BOLD_FONT_START_END_PADDING:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v24

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v26

    sget v27, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->BOLD_FONT_START_END_PADDING:I

    add-int v26, v26, v27

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v27

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    new-instance v16, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v26, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v26, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewNewLabelPaddingOver30()I

    move-result v15

    :goto_7
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v26

    mul-int/lit8 v27, v15, 0x2

    add-int v26, v26, v27

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsCheckMode:Z

    move/from16 v26, v0

    if-eqz v26, :cond_12

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewMarkTopMargin()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v28, v0

    const v29, 0x7f0b0311

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0b0310

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    add-int v28, v28, v29

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsCheckMode:Z

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsPreCheckMode:Z

    const/16 v26, 0x3

    const/16 v27, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    const/16 v26, 0x16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    const/16 v26, 0x17

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_5
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getPhotoNumberLabel(I)Ljava/lang/String;

    move-result-object v19

    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v23

    check-cast v23, Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getLengthLimitForAlbumTitle(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;Ljava/lang/Object;Lcom/sec/android/gallery3d/glcore/GlImageView;)F

    move-result v12

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-static {v5, v0, v12, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v11

    monitor-enter p1

    if-nez v23, :cond_16

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextColor:I

    move/from16 v27, v0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v28

    move/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v11, v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v23

    const/16 v26, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_a
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleLeftMargin:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumNameMarginTop:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleLeftMargin:I

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "hy"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumNameHeight:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    :goto_b
    move-object/from16 v26, p3

    check-cast v26, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlbumTitleText(Ljava/lang/String;)V

    move-object/from16 v26, p3

    check-cast v26, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumNameHeight:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlbumTitleHeight(I)V

    move-object/from16 v26, p3

    check-cast v26, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextWidth:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlbumTitleTextWidth(I)V

    check-cast p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_19

    const/16 v26, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlbumTitleTextLengthOver(Z)V

    if-eqz v6, :cond_6

    monitor-enter p1

    const/16 v26, 0xe

    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-nez v8, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mCountFontSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v27

    move-object/from16 v0, v19

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v7, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v8

    const/16 v26, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_d
    sget-boolean v26, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseGraceAlbumViewGUI:Z

    if-nez v26, :cond_1c

    const/16 v26, 0x1

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleLeftMargin:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumNameMarginTop:I

    move/from16 v29, v0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    :goto_e
    sget-boolean v26, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v26, :cond_1d

    sget-boolean v26, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseGraceAlbumViewGUI:Z

    if-nez v26, :cond_1d

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumCountHeight:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleLeftMargin:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumNameMarginTop:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    const v31, 0x7f0b03d5

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    add-int v29, v29, v30

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    :goto_f
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_6
    return-void

    :cond_7
    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaSet;->hasCachedMediaItemCount()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v6

    goto/16 :goto_1

    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v5, ""

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v26, v0

    const v27, 0x7f0a02b8

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v26, v0

    const v27, 0x7f0b0055

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    goto/16 :goto_2

    :cond_d
    const v26, 0x7f100052

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f100022

    invoke-static/range {v26 .. v27}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v26, v0

    const v27, 0x7f020109

    invoke-virtual/range {v26 .. v27}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto/16 :goto_5

    :cond_10
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoBoldFont()Landroid/graphics/Typeface;

    move-result-object v26

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewNewLabelPadding()I

    move-result v15

    goto/16 :goto_7

    :cond_12
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewMarkTopMargin()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewMarkRightMargin()I

    move-result v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    goto/16 :goto_8

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsPreCheckMode:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsCheckMode:Z

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsCheckMode:Z

    move/from16 v26, v0

    if-eqz v26, :cond_14

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewMarkTopMargin()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v28, v0

    const v29, 0x7f0b0311

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v29, v0

    const v30, 0x7f0b0310

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    add-int v28, v28, v29

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    :goto_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsCheckMode:Z

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsPreCheckMode:Z

    goto/16 :goto_9

    :cond_14
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewMarkTopMargin()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewMarkRightMargin()I

    move-result v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    goto :goto_10

    :cond_15
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_9

    :cond_16
    :try_start_2
    sget-boolean v26, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v26, :cond_17

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextColor:I

    move/from16 v27, v0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v28

    move/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v11, v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v23

    const/16 v26, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    goto/16 :goto_a

    :catchall_0
    move-exception v26

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v26

    :cond_17
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextSize:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/text/TextPaint;->setTextSize(F)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_a

    :cond_18
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumNameHeight:I

    move/from16 v27, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    goto/16 :goto_b

    :cond_19
    const/16 v26, 0x0

    goto/16 :goto_c

    :cond_1a
    :try_start_4
    sget-boolean v26, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v26, :cond_1b

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mCountFontSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v27

    move-object/from16 v0, v19

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v7, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v8

    const/16 v26, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    goto/16 :goto_d

    :catchall_1
    move-exception v26

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v26

    :cond_1b
    :try_start_5
    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mCountFontSize:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/text/TextPaint;->setTextSize(F)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_1c
    const/16 v26, 0x1

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleLeftMargin:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumNameMarginTop:I

    move/from16 v27, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v28

    add-int v27, v27, v28

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    goto/16 :goto_e

    :cond_1d
    sget-boolean v26, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v26, :cond_1e

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumCountHeight:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    goto/16 :goto_f

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumCountHeight:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_f
.end method

.method private drawAlbumLabelBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 3

    if-nez p1, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsListAlbumLayout:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-object v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v2, 0x7f02010d

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private drawAlbumPlus(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Z)V
    .locals 15

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mCreateIcon:Landroid/graphics/Bitmap;

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f02032e

    invoke-static {v10, v11}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mCreateIcon:Landroid/graphics/Bitmap;

    :cond_0
    move-object/from16 v0, p1

    iget v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidthPixel:I

    int-to-float v10, v10

    const/high16 v11, 0x3e800000    # 0.25f

    mul-float/2addr v10, v11

    float-to-int v5, v10

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mCreateIcon:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    invoke-static {v10, v5, v11}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mCreateIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidthPixel:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeightPixel:I

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f100025

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v7, Landroid/graphics/Paint;

    const/4 v10, 0x2

    invoke-direct {v7, v10}, Landroid/graphics/Paint;-><init>(I)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    const/high16 v11, 0x7f100000

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p1

    iget v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidthPixel:I

    sub-int/2addr v10, v5

    div-int/lit8 v10, v10, 0x2

    int-to-float v6, v10

    move-object/from16 v0, p1

    iget v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeightPixel:I

    sub-int/2addr v10, v5

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p1

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mTitleHeightPixel:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v8, v10

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mCreateIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v10, v6, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v11, 0x0

    move/from16 v0, p2

    invoke-virtual {p0, v10, v0, v11}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;ZZ)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v10

    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->isEnabledResStroke()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-boolean v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsListAlbumLayout:Z

    if-eqz v10, :cond_2

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->drawThumbStroke(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v10

    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    :cond_1
    :goto_0
    int-to-float v10, v9

    int-to-float v11, v4

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidthPixel:I

    int-to-float v12, v12

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeightPixel:I

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-static {v10, v11, v12, v13, v14}, Lcom/sec/android/gallery3d/common/BitmapUtils;->calcCenterCropRect(FFFFI)Landroid/graphics/Rect;

    move-result-object v10

    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iput v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumObjWidth:F

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iput v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    return-void

    :cond_2
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->drawThumbStrokeTop(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v10

    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    goto :goto_0
.end method

.method private drawCreateAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a02b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->setCreateAlbumLabelValues(Z)V

    invoke-virtual {p1, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlTextView;

    iget v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextSize:I

    int-to-float v4, v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextWidth:I

    iget v6, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleLeftMargin:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v0, v4, v5, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextColor:I

    invoke-static {v1, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsListAlbumLayout:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3, v7, v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    :goto_0
    invoke-virtual {p1, v3, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_1
    iget v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleLeftMargin:I

    iget v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumNameMarginTop:I

    iget v6, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleLeftMargin:I

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumNameHeight:I

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    return-void

    :cond_1
    invoke-virtual {v3, v8, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private drawDecorViewAlbum(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 35

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispSelectCnt:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSetSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v24

    :goto_0
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p4

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mIsNewAlbum:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getLatestAlbumInfo(Landroid/content/Context;)I

    move-result v30

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getPlayTypeIconRsrc(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getContentTypeIconRsrc(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v21

    if-eqz v13, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getUserSelectedAlbum()[Ljava/lang/String;

    move-result-object v28

    const/16 v30, 0x2

    aget-object v30, v28, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "latest_update_item"

    const-wide/16 v32, -0x1

    invoke-static/range {v30 .. v33}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadLongKey(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v16

    cmp-long v30, v26, v16

    if-nez v30, :cond_0

    const/4 v13, 0x0

    :cond_0
    if-nez v13, :cond_3

    if-nez v22, :cond_3

    if-nez v21, :cond_3

    if-nez v14, :cond_3

    const/16 v30, 0x0

    :goto_2
    return-object v30

    :cond_1
    const/16 v24, 0x0

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    if-nez v8, :cond_4

    new-instance v8, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v8, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_4
    const/16 v30, 0x3

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v20

    check-cast v20, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v22, :cond_11

    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v30

    if-nez v30, :cond_11

    if-nez v20, :cond_5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    if-eqz v9, :cond_5

    new-instance v20, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v30, 0x2

    const/16 v31, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    sget-boolean v30, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v30, :cond_e

    const/16 v30, 0x1

    const/16 v31, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumPlayIconPaddingOver30()I

    move-result v19

    sget-boolean v30, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->USE_N_OS_DECOR:Z

    if-eqz v30, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumCameraIconSizeNOS()I

    move-result v29

    :goto_3
    sget-boolean v30, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->USE_N_OS_DECOR:Z

    if-eqz v30, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumCameraIconSizeNOS()I

    move-result v12

    :goto_4
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    :goto_5
    const/16 v30, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_5
    :goto_6
    const/16 v30, 0x4

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v21, :cond_20

    sget-boolean v30, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v30, :cond_18

    const v30, 0x7f020105

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    const v21, 0x7f020108

    :cond_6
    :goto_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    if-eqz v9, :cond_17

    new-instance v7, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v7, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v30, 0x1

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumPlayIconPaddingOver30()I

    move-result v19

    const v30, 0x7f020107

    move/from16 v0, v21

    move/from16 v1, v30

    if-eq v0, v1, :cond_7

    const v30, 0x7f020169

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumCameraMemoryIconWidthOver30()I

    move-result v29

    :goto_8
    sget-boolean v30, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->USE_N_OS_DECOR:Z

    if-eqz v30, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumCameraIconSizeNOS()I

    move-result v12

    :goto_9
    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v19

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v19

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    move/from16 v0, v29

    invoke-virtual {v7, v0, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/16 v30, 0x4

    move/from16 v0, v30

    invoke-virtual {v8, v7, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_8
    :goto_a
    const/16 v30, 0x6

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v18

    check-cast v18, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-gtz v24, :cond_22

    if-eqz v13, :cond_22

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p4

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mIsNewAlbum:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsListAlbumLayout:Z

    move/from16 v30, v0

    if-eqz v30, :cond_21

    if-eqz v18, :cond_9

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    :cond_9
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "is_new_item_present"

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v30

    move/from16 v0, v30

    if-eq v13, v0, :cond_a

    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mIsNewAlbum:Z

    move/from16 v30, v0

    if-eqz v30, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "is_new_item_present"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v13}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_a
    const/16 v30, 0xa

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v23

    check-cast v23, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v14, :cond_25

    invoke-static/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/LogicalBucketList;->isLogicalAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v30

    if-nez v30, :cond_25

    if-nez v23, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v30, v0

    const v31, 0x7f0201d1

    invoke-virtual/range {v30 .. v31}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_b

    new-instance v23, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v30, 0x1

    const/16 v31, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    sget-boolean v30, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v30, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumPlayIconPaddingOver30()I

    move-result v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumPlayIconPaddingOver30()I

    move-result v33

    move-object/from16 v0, v23

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumPlayIconWidthOver30()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumPlayIconHeightOver30()I

    move-result v31

    move-object/from16 v0, v23

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    :goto_c
    const/16 v30, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setFitMode(I)V

    const/16 v30, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_b
    :goto_d
    move-object/from16 v30, v8

    goto/16 :goto_2

    :catch_0
    move-exception v10

    const-string/jumbo v30, "ComposeAlbumSetAdapter"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v30, v8

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumPlayIconWidthOver30()I

    move-result v29

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumPlayIconHeightOver30()I

    move-result v12

    goto/16 :goto_4

    :cond_e
    sget v30, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->sDefaultPlayIconWidth:I

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumTimeViewVHGap()[I

    move-result-object v30

    const/16 v31, 0x0

    aget v30, v30, v31

    sget v31, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->DEFALUT_ITEM_COL_FOR_PLAYICON:I

    add-int/lit8 v31, v31, 0x1

    mul-int v11, v30, v31

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayShortSideSize()I

    move-result v30

    sub-int v30, v30, v11

    sget v31, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->DEFALUT_ITEM_COL_FOR_PLAYICON:I

    div-int v30, v30, v31

    sput v30, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->sDefaultPlayIconWidth:I

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewPlayIconSize()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mCurItemWidthForPlayIcon:I

    move/from16 v31, v0

    mul-int v30, v30, v31

    sget v31, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->sDefaultPlayIconWidth:I

    div-int v15, v30, v31

    sget-boolean v30, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FEATURE_IS_TABLET:Z

    if-eqz v30, :cond_10

    int-to-float v0, v15

    move/from16 v30, v0

    const v31, 0x3f47ae14    # 0.78f

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v15, v0

    :cond_10
    move-object/from16 v0, v20

    invoke-virtual {v0, v15, v15}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_5

    :cond_11
    if-eqz v20, :cond_5

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_6

    :cond_12
    const v30, 0x7f02010b

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_13

    const v21, 0x7f02010c

    goto/16 :goto_7

    :cond_13
    const v30, 0x7f020106

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    const v21, 0x7f020107

    goto/16 :goto_7

    :catch_1
    move-exception v10

    const-string/jumbo v30, "ComposeAlbumSetAdapter"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v30, v8

    goto/16 :goto_2

    :cond_14
    sget-boolean v30, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->USE_N_OS_DECOR:Z

    if-eqz v30, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumCameraIconSizeNOS()I

    move-result v29

    :goto_e
    goto/16 :goto_8

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumPlayIconWidthOver30()I

    move-result v29

    goto :goto_e

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailAlbumPlayIconHeightOver30()I

    move-result v12

    goto/16 :goto_9

    :cond_17
    if-eqz v7, :cond_8

    invoke-virtual {v8, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_a

    :cond_18
    const v30, 0x7f020106

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v30, v0

    const v31, 0x7f020105

    invoke-virtual/range {v30 .. v31}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_f
    if-eqz v9, :cond_1f

    if-nez v7, :cond_1b

    new-instance v7, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v7, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v30, 0x1

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    sget-boolean v30, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FEATURE_IS_TABLET:Z

    if-eqz v30, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    const v31, 0x7f0b03c3

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewCameraIconMarginLeft()I

    move-result v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewCameraIconMarginBottom()I

    move-result v33

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v30, 0x4

    move/from16 v0, v30

    invoke-virtual {v8, v7, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_11
    const/16 v30, 0x13

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/glcore/GlImageView;

    const v30, 0x7f020106

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v30, v0

    const v31, 0x7f02010b

    invoke-virtual/range {v30 .. v31}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v6, :cond_1d

    if-eqz v9, :cond_8

    new-instance v6, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v6, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v30, 0x1

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    sget-boolean v30, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FEATURE_IS_TABLET:Z

    if-eqz v30, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    const v31, 0x7f0b03c3

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    :goto_12
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewCameraIconMarginBottom()I

    move-result v33

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/16 v30, 0x13

    move/from16 v0, v30

    invoke-virtual {v8, v6, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    goto/16 :goto_a

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto/16 :goto_f

    :cond_1a
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v30

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_10

    :cond_1b
    invoke-virtual {v7, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_11

    :cond_1c
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v30

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto :goto_12

    :cond_1d
    invoke-virtual {v6, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    :cond_1e
    if-eqz v6, :cond_8

    invoke-virtual {v8, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_a

    :cond_1f
    if-eqz v7, :cond_8

    invoke-virtual {v8, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_a

    :cond_20
    if-eqz v7, :cond_8

    invoke-virtual {v8, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_a

    :cond_21
    if-nez v18, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->addNewMarkView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    goto/16 :goto_b

    :cond_22
    if-eqz v18, :cond_9

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_b

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    const v31, 0x7f0b0281

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v33, v0

    const v34, 0x7f0b0280

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    move-object/from16 v0, v23

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    sget-boolean v30, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FEATURE_IS_TABLET:Z

    if-eqz v30, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v30, v0

    const v31, 0x7f0b03c3

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_c

    :cond_24
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v30

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v31

    move-object/from16 v0, v23

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto/16 :goto_c

    :cond_25
    if-eqz v23, :cond_b

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_d
.end method

.method private drawThumbStrokeTop(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 5

    const/16 v4, 0x15

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v3, 0x7f020065

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    return-object p1
.end method

.method private drawTitleBackground(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 5

    const/16 v4, 0x14

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v3, 0x7f02010d

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    return-object p1
.end method

.method private getContentTypeIconRsrc(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 8

    const v5, 0x7f020169

    const v4, 0x7f020168

    const v6, 0x7f02010b

    const v2, 0x7f020106

    const v3, 0x7f020105

    const/4 v1, 0x0

    instance-of v7, p1, Lcom/sec/android/gallery3d/data/LocalAlbum;

    if-nez v7, :cond_0

    instance-of v7, p1, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-nez v7, :cond_0

    instance-of v7, p2, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v7, :cond_e

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    instance-of v7, p1, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->isCameraAlbum()Z

    move-result v7

    if-nez v7, :cond_5

    :cond_3
    instance-of v7, p1, Lcom/sec/android/gallery3d/data/LocalAlbum;

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->isCameraAlbum()Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    if-eqz p2, :cond_9

    instance-of v7, p2, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v7, :cond_9

    check-cast p2, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->isCameraItem()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_5
    invoke-static {v0}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isSDCardCameraPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    :goto_1
    return v2

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    move v2, v3

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWeChatSightPath(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v2, v4

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSDCardWeChatSightPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v2, v5

    goto :goto_1

    :cond_b
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isSDCardPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v2, v6

    goto :goto_1

    :cond_c
    instance-of v4, p1, Lcom/sec/android/gallery3d/data/FilterTypeSet;

    if-eqz v4, :cond_1e

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isCameraPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v2, v3

    goto :goto_1

    :cond_d
    invoke-static {v0}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isSDCardCameraPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isSDCardPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v2, v6

    goto :goto_1

    :cond_e
    instance-of v7, p1, Lcom/sec/android/gallery3d/data/UnionAlbum;

    if-nez v7, :cond_f

    instance-of v7, p1, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-nez v7, :cond_f

    instance-of v7, p2, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    if-nez v7, :cond_f

    instance-of v7, p1, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;

    if-eqz v7, :cond_1c

    :cond_f
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string/jumbo v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_10
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    :cond_11
    :goto_2
    instance-of v7, p1, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-nez v7, :cond_12

    instance-of v7, p1, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;

    if-eqz v7, :cond_13

    :cond_12
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->isCameraAlbum()Z

    move-result v7

    if-nez v7, :cond_15

    :cond_13
    instance-of v7, p1, Lcom/sec/android/gallery3d/data/UnionAlbum;

    if-eqz v7, :cond_14

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->isCameraAlbum()Z

    move-result v7

    if-nez v7, :cond_15

    :cond_14
    if-eqz p2, :cond_17

    instance-of v7, p2, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    if-eqz v7, :cond_17

    check-cast p2, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCameraItem()Z

    move-result v7

    if-eqz v7, :cond_17

    :cond_15
    invoke-static {v0}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isSDCardCameraPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    move v2, v3

    goto/16 :goto_1

    :cond_16
    const/4 v0, 0x0

    goto :goto_2

    :cond_17
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWeChatSightPath(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    move v2, v4

    goto/16 :goto_1

    :cond_18
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSDCardWeChatSightPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    move v2, v5

    goto/16 :goto_1

    :cond_19
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isSDCardPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    move v2, v6

    goto/16 :goto_1

    :cond_1a
    instance-of v4, p1, Lcom/sec/android/gallery3d/data/FilterTypeSet;

    if-eqz v4, :cond_1e

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isCameraPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v2, v3

    goto/16 :goto_1

    :cond_1b
    invoke-static {v0}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isSDCardCameraPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isSDCardPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v2, v6

    goto/16 :goto_1

    :cond_1c
    instance-of v2, p1, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;

    if-nez v2, :cond_1d

    instance-of v2, p1, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum;

    if-nez v2, :cond_1d

    instance-of v2, p2, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-nez v2, :cond_1d

    instance-of v2, p2, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    if-eqz v2, :cond_20

    :cond_1d
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseBaidu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_1f

    const v1, 0x7f020100

    :cond_1e
    :goto_3
    move v2, v1

    goto/16 :goto_1

    :cond_1f
    const v1, 0x7f020101

    goto :goto_3

    :cond_20
    instance-of v2, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;

    if-nez v2, :cond_21

    instance-of v2, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;

    if-nez v2, :cond_21

    instance-of v2, p2, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-eqz v2, :cond_1e

    :cond_21
    const v1, 0x7f020158

    goto :goto_3
.end method

.method private getLengthLimitForAlbumTitle(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;Ljava/lang/Object;Lcom/sec/android/gallery3d/glcore/GlImageView;)F
    .locals 7

    const v6, 0x7f0b0312

    const v5, 0x7f0b0311

    const v4, 0x7f0b0310

    iget v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextWidth:I

    iget v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleLeftMargin:I

    sub-int/2addr v2, v3

    int-to-float v1, v2

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsListAlbumLayout:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsCheckMode:Z

    if-eqz v2, :cond_2

    check-cast p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v0

    iget-boolean v2, p1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mIsNewAlbum:Z

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    goto :goto_0

    :cond_2
    iget-boolean v2, p1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mIsNewAlbum:Z

    if-eqz v2, :cond_0

    check-cast p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleLeftMargin:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    goto :goto_0
.end method

.method private getUserSelectedAlbum()[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "-1"

    aput-object v3, v1, v5

    const/4 v3, 0x1

    const-string/jumbo v4, "-1"

    aput-object v4, v1, v3

    const-string/jumbo v3, "-1"

    aput-object v3, v1, v6

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user_selected_album"

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadStringKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :cond_0
    array-length v3, v2

    if-ne v3, v6, :cond_1

    array-length v3, v2

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method private setCreateAlbumLabelValues(Z)V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsListAlbumLayout:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b031a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumNameMarginTop:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0317

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextSize:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0319

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumNameHeight:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0316

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumCountHeight:I

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0315

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mCountFontSize:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mEasyMode:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0334

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextSize:I

    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->sIsTallCategoryLanguage:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumNameHeight:I

    :goto_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumCountHeight:I

    :goto_3
    sget-boolean v1, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v1, :cond_6

    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0336

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_4
    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumNameMarginTop:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumNameHeight:I

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextSize:I

    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->sIsTallCategoryLanguage:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumNameHeight:I

    :goto_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumCountHeight:I

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumNameHeight:I

    goto :goto_5

    :cond_6
    iget v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumNameHeight:I

    iget v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumCountHeight:I

    add-int/2addr v1, v2

    sub-int v1, v0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_4
.end method

.method private updateAlbumLabelTextColor()V
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsListAlbumLayout:Z

    if-eqz v0, :cond_0

    const v0, 0x7f10013f

    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextColor:I

    return-void

    :cond_0
    const v0, 0x7f100053

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f100026

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;ZZ)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 8

    const/16 v7, 0xd

    const/4 v6, 0x2

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz p2, :cond_6

    if-nez v0, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsFolderModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v3, 0x7f020061

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_1
    :goto_0
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setScaleRatio(F)V

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v0, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    sget-boolean v2, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v3, 0x7f02005f

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b047e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100112

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    :cond_4
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v3, 0x7f020060

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto :goto_1
.end method

.method drawCheckBox(Lcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v2, p2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v2, 0x7f020113

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v2, 0x7f020112

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method drawSelectedCountView(Lcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget-object v6, p2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez p1, :cond_0

    new-instance v5, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v10, 0x7f020200

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v11, v11, v11, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    :goto_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9, v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSetSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewAlbumSelectCountFontColor()I

    move-result v3

    const/16 v4, 0x1c

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-nez v8, :cond_1

    int-to-float v9, v4

    invoke-static {v7, v9, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v8

    invoke-virtual {v8, v12, v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v5, v8, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_1
    return-object v5

    :cond_0
    move-object v5, p1

    check-cast v5, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected drawThumbStroke(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    monitor-enter p1

    const/16 v2, 0x12

    :try_start_0
    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsListAlbumLayout:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v2, :cond_3

    :cond_1
    const v2, 0x7f020240

    :goto_0
    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x12

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_2
    monitor-exit p1

    return-object p1

    :cond_3
    const v2, 0x7f020066

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method drawThumbnailImage(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 3

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->readyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->readyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public forceReload()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->forceReload()V

    return-void
.end method

.method public getAlbumIndexFromFilePath(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAlbumIndexFromFilePath(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAlbumIndexFromMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAlbumIndexFromMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    return v0
.end method

.method public getAllCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllItemCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getAllItemCount(I)I

    move-result v0

    return v0
.end method

.method public getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsAlbumCopyMoveMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCount(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsAlbumCopyMoveMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getCount(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentState(II)I
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lt p1, v7, :cond_1

    const-string/jumbo v5, "ComposeAlbumSetAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSelectState pos = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v7, p1

    if-eqz v0, :cond_0

    if-gez p2, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v8, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSetSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v1

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-lt v1, v7, :cond_2

    move v4, v5

    :goto_1
    if-eqz v4, :cond_3

    :goto_2
    move v6, v5

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    :cond_4
    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    array-length v7, v7

    if-lt p2, v7, :cond_5

    const-string/jumbo v5, "ComposeAlbumSetAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSelectState subPos = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v2, v7, p2

    if-nez v2, :cond_6

    const-string/jumbo v5, "ComposeAlbumSetAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSelectState mediaItem is null = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", sub = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v5

    :goto_3
    move v6, v3

    goto/16 :goto_0

    :cond_7
    move v3, v6

    goto :goto_3
.end method

.method public getDefaultAlbumSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getDefaultAlbumSetCount()I

    move-result v0

    return v0
.end method

.method public getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemImage(II)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getImage(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getScreenNailImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getSelectableAlbumCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getSelectableAlbumCount()I

    move-result v0

    return v0
.end method

.method getShowGroupId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getShowGroupId()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method public getView(IILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlLayer;Ljava/lang/Object;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 6

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsListAlbumLayout:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mTitleObjWidth:F

    iget v5, p4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextWidth:I

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lt p1, v4, :cond_3

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsAlbumCopyMoveMode:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-ne p1, v4, :cond_1

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsListAlbumLayout:Z

    if-nez v4, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->drawTitleBackground(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;

    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->drawCreateAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;)V

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    iget v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumObjWidth:F

    iget v5, p4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleTextWidth:I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v4, p1

    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-eqz v4, :cond_1

    if-gez p2, :cond_6

    const/16 v4, -0xa

    if-ne p2, v4, :cond_4

    invoke-virtual {p0, p3, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->drawCheckBox(Lcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v4, -0x4

    if-ne p2, v4, :cond_5

    invoke-virtual {p0, p3, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->drawSelectedCountView(Lcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->drawAlbumLabelBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    invoke-direct {p0, v2, v0, p5}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->drawAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    if-nez p3, :cond_7

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_2
    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v3, v4, p2

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    aget-object v1, v4, p2

    invoke-virtual {p0, v2, v1, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->drawThumbnailImage(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_1

    :cond_7
    move-object v2, p3

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_2
.end method

.method public getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;ZZ)Z
    .locals 22

    const/4 v10, 0x0

    const/4 v15, 0x0

    if-nez p4, :cond_0

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    move-object/from16 v0, p4

    iput-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    move-object/from16 v0, p4

    iput-boolean v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    const/4 v7, 0x0

    move-object/from16 v0, p4

    iput-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v7, 0x1

    move-object/from16 v0, p4

    iput-boolean v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mReorderEnable:Z

    const/4 v7, 0x1

    move-object/from16 v0, p4

    iput-boolean v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelectEnable:Z

    const/4 v7, -0x1

    move-object/from16 v0, p4

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    const/4 v7, -0x1

    move-object/from16 v0, p4

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBucketId:I

    move-object/from16 v0, p4

    iget-boolean v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsListAlbumLayout:Z

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsListAlbumLayout:Z

    move-object/from16 v0, p4

    iget-boolean v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsCheckMode:Z

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsCheckMode:Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->updateAlbumLabelTextColor()V

    if-eqz p3, :cond_2

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->getItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v18

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v7

    move-object/from16 v0, p4

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v7

    move-object/from16 v0, p4

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    :goto_1
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v8, v10, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v7

    move-object/from16 v0, p4

    iput-boolean v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelected:Z

    :cond_1
    if-nez v11, :cond_11

    move-object/from16 v0, p4

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    if-nez v7, :cond_11

    const/4 v7, 0x0

    move-object/from16 v0, p4

    iput-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    move-object/from16 v0, p4

    iput-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    move/from16 v0, p1

    if-lt v0, v7, :cond_5

    :cond_3
    const-string/jumbo v7, "ComposeAlbumSetAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "GetViewInfo pos = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mIsAlbumCopyMoveMode:Z

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    move/from16 v0, p1

    if-ne v0, v7, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->drawAlbumPlus(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Z)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v10, v7, p1

    if-eqz v10, :cond_6

    iget-object v7, v10, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v7, :cond_6

    iget v7, v10, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    move/from16 v0, p2

    if-lt v0, v7, :cond_9

    :cond_6
    if-nez v10, :cond_7

    const-string/jumbo v7, "ComposeAlbumSetAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "GetViewInfo album is null = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_7
    iget-object v7, v10, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v7, :cond_8

    const-string/jumbo v7, "ComposeAlbumSetAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "GetViewInfo album.mMediaItem is null = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    const-string/jumbo v7, "ComposeAlbumSetAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "GetViewInfo position is over index  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v10, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    iget-object v7, v10, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v18, v7, p2

    if-nez v18, :cond_a

    const-string/jumbo v7, "ComposeAlbumSetAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "GetViewInfo mediaItem is null = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", sub = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v7

    move-object/from16 v0, p4

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v7

    move-object/from16 v0, p4

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mId:I

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v19, v0

    iget-object v7, v10, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    aget-object v17, v7, p2

    if-nez v17, :cond_c

    const/4 v11, 0x0

    :goto_3
    if-eqz v19, :cond_b

    sget-boolean v7, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FEATURE_IS_DUALSCREEN:Z

    if-eqz v7, :cond_d

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v7

    move-object/from16 v0, p4

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBucketId:I

    :cond_b
    :goto_4
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x4

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v8

    if-ne v7, v8, :cond_e

    const/4 v7, 0x2

    move-object/from16 v0, p4

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_d
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v7

    move-object/from16 v0, p4

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBucketId:I

    goto :goto_4

    :cond_e
    const/4 v7, 0x1

    move-object/from16 v0, p4

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    goto/16 :goto_1

    :cond_f
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/MediaItem;->needCloudOnlyThumb()Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x3

    move-object/from16 v0, p4

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    goto/16 :goto_1

    :cond_10
    const/4 v7, 0x0

    move-object/from16 v0, p4

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v16

    if-eqz v16, :cond_12

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v7

    if-nez v7, :cond_1a

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumMode:Z

    if-nez v7, :cond_1a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSelectionSet:Z

    if-nez v7, :cond_1a

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, p4

    iput-boolean v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mCategoryMode:Z

    if-nez v7, :cond_13

    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumMode:Z

    if-eqz v7, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->drawDecorViewAlbum(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v7

    move-object/from16 v0, p4

    iput-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    :cond_13
    :goto_6
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v7, v1, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;ZZ)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v7

    move-object/from16 v0, p4

    iput-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->isEnabledResStroke()Z

    move-result v7

    if-eqz v7, :cond_14

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->drawThumbStroke(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v7

    move-object/from16 v0, p4

    iput-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    :cond_14
    if-eqz v19, :cond_16

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSelectableAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v7

    if-eqz v7, :cond_15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v7, v7, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_16

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->isBlockedAlbum(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v7

    if-eqz v7, :cond_16

    :cond_15
    sget-boolean v7, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FeatureUseGraceAlbumViewGUI:Z

    if-eqz v7, :cond_1c

    const/4 v7, 0x0

    move-object/from16 v0, p4

    iput-boolean v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mSelectEnable:Z

    :cond_16
    :goto_7
    move-object/from16 v0, p4

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    if-nez v7, :cond_1e

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-boolean v7, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->FEATURE_FACE_THUMBNAIL:Z

    if-eqz v7, :cond_18

    move-object/from16 v0, v18

    instance-of v7, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v7, :cond_17

    move-object/from16 v0, v18

    instance-of v7, v0, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v7, :cond_18

    :cond_17
    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v7

    if-nez v7, :cond_18

    move-object/from16 v0, v18

    instance-of v7, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v7, :cond_1d

    check-cast v18, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/LocalImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v6

    :goto_8
    if-eqz v6, :cond_18

    move-object/from16 v0, p4

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    move-object/from16 v0, p4

    iget v8, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    move-object/from16 v0, p4

    iget v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    invoke-static/range {v4 .. v9}, Lcom/sec/samsung/gallery/util/FaceUtil;->calcFaceCropRect(IILandroid/graphics/RectF;FFI)Landroid/graphics/Rect;

    move-result-object v15

    :cond_18
    if-nez v15, :cond_19

    int-to-float v7, v4

    int-to-float v8, v5

    move-object/from16 v0, p4

    iget v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    move/from16 v20, v0

    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v7, v8, v9, v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->calcCenterCropRect(FFFFI)Landroid/graphics/Rect;

    move-result-object v15

    :cond_19
    :goto_9
    move-object/from16 v0, p4

    iput-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    move-object/from16 v0, p4

    iput-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p4

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumObjWidth:F

    move-object/from16 v0, p4

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mTitleObjWidth:F

    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mTitleObjWidth:F

    move-object/from16 v0, p4

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mTitleLeftMargin:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mAlbumTitleLeftMargin:I

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-nez v7, :cond_13

    if-eqz v17, :cond_13

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v7, :cond_13

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p4

    iput-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    goto/16 :goto_6

    :cond_1c
    const/4 v7, 0x0

    move-object/from16 v0, p4

    iput-boolean v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mReorderEnable:Z

    goto/16 :goto_7

    :cond_1d
    check-cast v18, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/UnionImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v6

    goto :goto_8

    :cond_1e
    const/4 v7, 0x3

    move-object/from16 v0, p4

    iget v8, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    if-ne v7, v8, :cond_1f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResourceMgr:Lcom/sec/android/gallery3d/util/ResourceManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/util/ResourceManager;->getCloudOnlyThumbnailSize(Landroid/content/Context;I)I

    move-result v13

    int-to-float v7, v13

    int-to-float v8, v13

    move-object/from16 v0, p4

    iget v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    move/from16 v20, v0

    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v7, v8, v9, v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->calcCenterCropRect(FFFFI)Landroid/graphics/Rect;

    move-result-object v15

    const/4 v7, 0x0

    move-object/from16 v0, p4

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    goto/16 :goto_9

    :cond_1f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mResourceMgr:Lcom/sec/android/gallery3d/util/ResourceManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    iget v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsBroken:I

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumnailSize(Landroid/content/Context;I)I

    move-result v12

    int-to-float v7, v12

    int-to-float v8, v12

    move-object/from16 v0, p4

    iget v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    move/from16 v20, v0

    move-object/from16 v0, p4

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v7, v8, v9, v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->calcCenterCropRect(FFFFI)Landroid/graphics/Rect;

    move-result-object v15

    goto/16 :goto_9
.end method

.method public hasLocalMediaSet()Z
    .locals 10

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v4, v5, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "GAMC"

    int-to-long v8, v0

    invoke-static {v5, v6, v8, v9}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    instance-of v5, v2, Lcom/sec/android/gallery3d/data/LocalAlbum;

    if-nez v5, :cond_0

    instance-of v5, v2, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-nez v5, :cond_0

    instance-of v5, v2, Lcom/sec/android/gallery3d/data/UnionAlbum;

    if-nez v5, :cond_0

    instance-of v5, v2, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-nez v5, :cond_0

    instance-of v5, v2, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;

    if-eqz v5, :cond_2

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isBurstShot(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->isShowAllGroup()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getShowGroupId()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isBurstShot(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method isShowAllGroup()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->isShowAllGroup()Z

    move-result v0

    return v0
.end method

.method protected notifyLayoutChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->updateAlbumLabelTextColor()V

    return-void
.end method

.method public requestScreenNailUrgent(II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->requestScreenNail(IIZ)Z

    move-result v0

    return v0
.end method

.method public requestScreenNailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->requestScreenNail(Lcom/sec/android/gallery3d/data/MediaItem;IZ)Z

    move-result v0

    return v0
.end method

.method public setInitThumbType(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    int-to-byte v1, p1

    iput-byte v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLevel:B

    return-void
.end method

.method public setScreenNailImage(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;I)V
    .locals 8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->recycle()V

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    new-instance v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object v2, p1

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;IIILandroid/graphics/Bitmap;)V

    iput-object v0, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    return-void
.end method

.method public setSelectionSource(Lcom/sec/android/gallery3d/ui/SelectionManager;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->setSelectionSource(Lcom/sec/android/gallery3d/ui/SelectionManager;)V

    return-void
.end method

.method public setSource(Lcom/sec/android/gallery3d/data/MediaSet;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;Z)Z

    move-result v0

    return v0
.end method

.method public setThumbReslevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->setThumbReslevel(I)V

    return-void
.end method
