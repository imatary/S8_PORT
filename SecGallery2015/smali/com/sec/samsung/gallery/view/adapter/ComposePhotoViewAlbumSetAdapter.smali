.class public Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;
.super Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
.source "ComposePhotoViewAlbumSetAdapter.java"


# static fields
.field private static final IsTablet:Z


# instance fields
.field private mIsSelectedAlbum:Z

.field private final mNewAlbumDimDrawable:Landroid/graphics/drawable/Drawable;

.field private mNewAlbumName:Ljava/lang/String;

.field private mSplitViewTitleTextSize:I

.field private mSplitViewTitleWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->IsTablet:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0260

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mSplitViewTitleWidth:I

    sget-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0385

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mSplitViewTitleTextSize:I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f10017e

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mNewAlbumDimDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b025e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private drawAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;I)V
    .locals 7

    iget-object v2, p2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWeChatSightPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSDCardWeChatSightPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0a04e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v5, p2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    if-lez v5, :cond_3

    iget v1, p2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    :goto_1
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1

    instance-of v5, v2, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v0, v4, v5

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getPhotoNumberLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v3, p3}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->drawAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->hasCachedMediaItemCount()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const-string/jumbo v0, ""

    iget v1, p2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    goto :goto_1
.end method

.method private drawAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/glcore/GlTextView;

    const/16 v10, 0xe

    invoke-virtual {p1, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlTextView;

    sget-boolean v10, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0b0380

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :goto_0
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f100026

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    sget-boolean v10, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0b0384

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f100022

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0b025d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    if-eqz p4, :cond_8

    :goto_2
    iget v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mSplitViewTitleTextSize:I

    int-to-float v10, v10

    invoke-static {v10}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v5

    sget-boolean v10, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->USE_N_OS_DECOR:Z

    if-nez v10, :cond_0

    sget-boolean v10, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->IsTablet:Z

    if-eqz v10, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    sget-boolean v10, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v10, :cond_9

    const/4 v10, 0x0

    move/from16 v0, p4

    int-to-float v11, v0

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    if-nez v8, :cond_a

    iget v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mSplitViewTitleTextSize:I

    int-to-float v10, v10

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-static {v4, v10, v6, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x2

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    const/4 v10, 0x1

    invoke-virtual {p1, v8, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_4
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v7, v10, v7, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    sget-boolean v10, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->USE_N_OS_DECOR:Z

    if-nez v10, :cond_2

    sget-boolean v10, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->IsTablet:Z

    if-eqz v10, :cond_3

    :cond_2
    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_3
    if-nez v3, :cond_c

    int-to-float v10, v2

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-static {v0, v10, v1, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->setTextViewPaint(Landroid/text/TextPaint;)V

    sget-boolean v10, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->USE_N_OS_DECOR:Z

    if-nez v10, :cond_4

    sget-boolean v10, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->IsTablet:Z

    if-eqz v10, :cond_5

    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_5
    const/4 v10, 0x1

    const/4 v11, 0x3

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    const/16 v10, 0xe

    invoke-virtual {p1, v3, v10}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_5
    sget-boolean v10, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v10, :cond_d

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v10

    div-int/lit8 v11, v9, 0x2

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    :goto_6
    sget-boolean v10, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v10, :cond_e

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v10, v11, v12, v13}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v13}, Landroid/text/TextPaint;->descent()F

    move-result v13

    sub-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v8, v10, v11, v7, v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    :goto_7
    return-void

    :cond_6
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0b0251

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto/16 :goto_0

    :cond_7
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0b025a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mSplitViewTitleWidth:I

    move/from16 p4, v0

    goto/16 :goto_2

    :cond_9
    const/4 v10, 0x0

    mul-int/lit8 v11, v7, 0x2

    sub-int v11, p4, v11

    int-to-float v11, v11

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_a
    iget v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mSplitViewTitleTextSize:I

    int-to-float v10, v10

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v11}, Landroid/text/TextPaint;->getTextSize()F

    move-result v11

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_b

    iget v10, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mSplitViewTitleTextSize:I

    int-to-float v10, v10

    invoke-virtual {v8, v10}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setTextSize(F)V

    :cond_b
    invoke-virtual {v8, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v10

    int-to-float v11, v2

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    div-int/lit8 v10, v9, 0x2

    move/from16 v0, p4

    invoke-virtual {v3, v0, v10}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setSize(II)V

    goto :goto_6

    :cond_e
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v7, v10, v11, v12}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    const/4 v10, 0x0

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/text/TextPaint;->descent()F

    move-result v12

    sub-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v8, v7, v10, v7, v11}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    goto :goto_7
.end method

.method private drawAlbumLabelBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    sget-boolean v1, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v2, 0x7f0202e2

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
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v2, 0x7f0202e1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private drawFrame(Lcom/sec/android/gallery3d/glcore/GlImageView;)V
    .locals 5

    const/16 v4, 0x65

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewAlbumBackgroundColor()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mNewAlbumDimDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setVisibility(I)V

    return-void
.end method

.method private drawNewAlbumBorder(Lcom/sec/android/gallery3d/glcore/GlView;Z)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 6

    const/4 v5, 0x2

    const/16 v4, 0xd

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0202e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v0, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    :goto_1
    return-object p1

    :cond_1
    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto :goto_1
.end method

.method private drawNewAlbumImage(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mHeaderItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mHeaderImage:Landroid/graphics/Bitmap;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v5

    const/4 v15, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenPictureThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v15, 0x1

    :cond_1
    sget-boolean v1, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->IsTablet:Z

    if-nez v1, :cond_3

    const/16 v1, 0x65

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v13, :cond_2

    new-instance v13, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v13, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mNewAlbumDimDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x65

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setVisibility(I)V

    :cond_3
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/LocalImage;->getTargetSize(I)I

    move-result v3

    if-nez p2, :cond_5

    const/high16 v14, 0x3f800000    # 1.0f

    :goto_0
    sget-boolean v1, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->IsTablet:Z

    if-eqz v1, :cond_6

    int-to-float v1, v3

    mul-float/2addr v1, v14

    float-to-int v4, v1

    :goto_1
    if-nez v15, :cond_8

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, v16

    instance-of v1, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v1, :cond_4

    move-object/from16 v0, v16

    instance-of v1, v0, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v1, :cond_8

    :cond_4
    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, v16

    instance-of v1, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v1, :cond_7

    check-cast v16, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/data/LocalImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v6

    :goto_2
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setCroppedBitmap(Landroid/graphics/Bitmap;IIILandroid/graphics/RectF;)V

    :goto_3
    return-void

    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getHeight(Z)F

    move-result v1

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/sec/android/gallery3d/glcore/GlObject;->getWidth(Z)F

    move-result v7

    div-float v14, v1, v7

    goto :goto_0

    :cond_6
    move v4, v3

    goto :goto_1

    :cond_7
    check-cast v16, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/data/UnionImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v6

    goto :goto_2

    :cond_8
    const/4 v12, 0x0

    move-object/from16 v7, p1

    move-object v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setCroppedBitmap(Landroid/graphics/Bitmap;IIILandroid/graphics/RectF;)V

    goto :goto_3
.end method

.method private drawNewAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;I)V
    .locals 6

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getAlbumNumber(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "%d"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mNewAlbumName:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->drawAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private drawNewAlbumLabelBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    sget-boolean v1, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v2, 0x7f0202e2

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
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    const v2, 0x7f0202e1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private drawNewAlbumPlayIcon(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mHeaderItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getPlayTypeIconRsrc(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v3

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v2, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-nez p2, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    sget-boolean v5, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->IsTablet:Z

    if-eqz v5, :cond_1

    int-to-float v5, v4

    mul-float/2addr v5, v1

    float-to-int v4, v5

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p2, v6}, Lcom/sec/android/gallery3d/glcore/GlObject;->getHeight(Z)F

    move-result v5

    invoke-virtual {p2, v6}, Lcom/sec/android/gallery3d/glcore/GlObject;->getWidth(Z)F

    move-result v6

    div-float v1, v5, v6

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;ZZ)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 6

    const/16 v5, 0xd

    const/4 v4, 0x2

    if-eqz p2, :cond_6

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mIsSelectedAlbum:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsFolderModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f020063

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

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
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f020062

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsFolderModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f020061

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_4
    sget-boolean v2, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f020064

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f020060

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_1

    invoke-virtual {p1, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto :goto_1
.end method

.method protected drawThumbStroke(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    monitor-enter p1

    const/16 v2, 0x12

    :try_start_0
    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    sget-boolean v2, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0202e0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x12

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    monitor-exit p1

    return-object p1

    :cond_2
    const v2, 0x7f0202df

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getView(IILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlLayer;Ljava/lang/Object;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 7

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lt p1, v5, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v5, p1

    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-eqz v5, :cond_0

    if-gez p2, :cond_5

    const/16 v5, -0xa

    if-ne p2, v5, :cond_2

    invoke-virtual {p0, p3, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->drawCheckBox(Lcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    :goto_1
    instance-of v5, p5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_0

    check-cast p5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v2, v5, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;ZZ)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    goto :goto_0

    :cond_2
    const/4 v5, -0x4

    if-ne p2, v5, :cond_3

    invoke-virtual {p0, p3, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->drawSelectedCountView(Lcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->drawAlbumLabelBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v2

    const/4 v3, 0x0

    instance-of v5, p5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_4

    move-object v5, p5

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v5

    if-eqz v5, :cond_4

    check-cast p5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v3

    :cond_4
    invoke-direct {p0, v2, v0, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->drawAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;I)V

    goto :goto_0

    :cond_5
    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-ge p2, v5, :cond_0

    instance-of v5, p3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v5, :cond_6

    move-object v2, p3

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    :goto_2
    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v4, v5, p2

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    aget-object v1, v5, p2

    invoke-virtual {p0, v2, v1, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->drawThumbnailImage(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    :cond_6
    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public getViewExt(ILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 3

    instance-of v2, p2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v2, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    :goto_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mHeaderItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->drawFrame(Lcom/sec/android/gallery3d/glcore/GlImageView;)V

    :goto_1
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->drawNewAlbumBorder(Lcom/sec/android/gallery3d/glcore/GlView;Z)Lcom/sec/android/gallery3d/glcore/GlView;

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, p3}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->drawNewAlbumImage(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/android/gallery3d/glcore/GlObject;)V

    invoke-direct {p0, v0, p3}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->drawNewAlbumPlayIcon(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/android/gallery3d/glcore/GlObject;)V

    goto :goto_1

    :cond_3
    const/4 v2, -0x2

    if-ne p1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->drawNewAlbumLabelBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_4

    invoke-virtual {p3}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p3}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v1

    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->drawNewAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;I)V

    goto :goto_2
.end method

.method public getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;ZZ)Z
    .locals 1

    iget-boolean v0, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsSelectedAlbum:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mIsSelectedAlbum:Z

    invoke-super/range {p0 .. p6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;ZZ)Z

    iget-object v0, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->drawThumbStroke(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    iput-object v0, p4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v0, 0x1

    return v0
.end method

.method public notifyLayoutChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0260

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mSplitViewTitleWidth:I

    sget-boolean v0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->FEATURE_USE_GRACE_DECOR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0385

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mSplitViewTitleTextSize:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b025e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public setNewAlbumName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->mNewAlbumName:Ljava/lang/String;

    return-void
.end method
