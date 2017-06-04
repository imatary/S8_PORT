.class public Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
.super Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
.source "ComposeSearchItemAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ComposeSearchItemAdapter"


# instance fields
.field private mContentDividerGap:I

.field private mContentDividerHeight:I

.field private mContentDividerWidth:I

.field private final mSearchAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

.field private mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

.field private mTextColor:I

.field private mTextSize:I

.field private mTitleHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    check-cast p2, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mSearchAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->initDimensions()V

    return-void
.end method

.method private drawDividerView(Lcom/sec/android/gallery3d/glcore/GlImageView;I)I
    .locals 6

    const/16 v5, 0x1f5

    const/4 v4, 0x0

    invoke-virtual {p1, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f020297

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mTextColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mContentDividerWidth:I

    iget v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mContentDividerHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    iget v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mContentDividerGap:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v2, v4, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v0, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mContentDividerGap:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    return p2
.end method

.method private drawImageCountView(Lcom/sec/android/gallery3d/glcore/GlImageView;Ljava/lang/String;)I
    .locals 7

    const/16 v6, 0x1f4

    const/4 v5, 0x0

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlTextView;

    iget v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mTextSize:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setTextViewPaint(Landroid/text/TextPaint;)V

    if-nez v1, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mTextSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mTextColor:I

    invoke-static {p2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v1, v5, v5, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {p1, v1, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mTitleHeight:I

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v1, v5, v5, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {v1, p2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private drawVideoCountView(Lcom/sec/android/gallery3d/glcore/GlImageView;Ljava/lang/String;I)I
    .locals 6

    const/16 v5, 0x1f6

    const/4 v4, 0x0

    move v0, p3

    invoke-virtual {p1, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-nez v1, :cond_0

    iget v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mTextSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mTextColor:I

    invoke-static {p2, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v1, v0, v4, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {p1, v1, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mTitleHeight:I

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextWidth()I

    move-result v2

    add-int/2addr v0, v2

    return v0

    :cond_0
    invoke-virtual {v1, v0, v4, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {v1, p2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private drawVisualSearchAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    new-array v1, v8, [I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getImageAndVideoCount([I)V

    const/4 v6, 0x0

    aget v2, v1, v6

    aget v4, v1, v7

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getImageText(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getVideoText(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    if-lez v2, :cond_2

    invoke-direct {p0, p1, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->drawImageCountView(Lcom/sec/android/gallery3d/glcore/GlImageView;Ljava/lang/String;)I

    move-result v0

    if-lez v4, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->drawDividerView(Lcom/sec/android/gallery3d/glcore/GlImageView;I)I

    move-result v0

    invoke-direct {p0, p1, v5, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->drawVideoCountView(Lcom/sec/android/gallery3d/glcore/GlImageView;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    iget v6, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mTitleHeight:I

    invoke-virtual {p1, v0, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->removeDividerView(Lcom/sec/android/gallery3d/glcore/GlImageView;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->removeVideoCountView(Lcom/sec/android/gallery3d/glcore/GlImageView;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->removeImageCountView(Lcom/sec/android/gallery3d/glcore/GlImageView;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->removeDividerView(Lcom/sec/android/gallery3d/glcore/GlImageView;)V

    if-lez v4, :cond_3

    invoke-direct {p0, p1, v5, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->drawVideoCountView(Lcom/sec/android/gallery3d/glcore/GlImageView;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->removeVideoCountView(Lcom/sec/android/gallery3d/glcore/GlImageView;)V

    goto :goto_0
.end method

.method private getImageText(I)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-ne p1, v3, :cond_0

    const v2, 0x7f0a0391

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v2, 0x7f0a0392

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getVideoText(I)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-ne p1, v3, :cond_0

    const v2, 0x7f0a0396

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v2, 0x7f0a0397

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initDimensions()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0397

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mTextSize:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f100224

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mTextColor:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b07b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mContentDividerWidth:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b07b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mContentDividerHeight:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b07b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mContentDividerGap:I

    return-void
.end method

.method private removeDividerView(Lcom/sec/android/gallery3d/glcore/GlImageView;)V
    .locals 2

    const/16 v1, 0x1f5

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    :cond_0
    return-void
.end method

.method private removeImageCountView(Lcom/sec/android/gallery3d/glcore/GlImageView;)V
    .locals 2

    const/16 v1, 0x1f4

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    :cond_0
    return-void
.end method

.method private removeVideoCountView(Lcom/sec/android/gallery3d/glcore/GlImageView;)V
    .locals 2

    const/16 v1, 0x1f6

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mSearchAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mSearchAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->updateKeyword(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mSearchAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->reloadData()V

    return-void
.end method

.method public drawAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->drawVisualSearchAlbumLabel(Lcom/sec/android/gallery3d/glcore/GlImageView;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_3

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x7f0b014c

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v3, v7

    :goto_2
    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCount(I)I

    move-result v7

    if-le v7, v11, :cond_7

    const v7, 0x7f0a0394

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCount(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    const v2, -0x777778

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f10011d

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    :cond_1
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f10011e

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    :cond_2
    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/glcore/GlTextView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0396

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    if-nez v6, :cond_8

    invoke-static {v1, v3, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoMediumFont()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v7, 0x2

    invoke-virtual {v6, v11, v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    div-int/lit8 v7, v5, 0x2

    invoke-virtual {v6, v7, v10, v10, v10}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    invoke-virtual {v0, v6, v11}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    goto/16 :goto_0

    :cond_3
    move-object v0, p1

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "bn"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "hi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ko"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    const v7, 0x7f0b014b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v3, v7

    goto/16 :goto_2

    :cond_6
    const v7, 0x7f0b014a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v3, v7

    goto/16 :goto_2

    :cond_7
    const v7, 0x7f0a0393

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v6, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getImageAndVideoCount([I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mSearchAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mSearchAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getImageCount()I

    move-result v0

    aput v0, p1, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mSearchAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getVideoCount()I

    move-result v0

    aput v0, p1, v2

    :goto_0
    return-void

    :cond_0
    aput v1, p1, v1

    aput v1, p1, v2

    goto :goto_0
.end method

.method public reloadData(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mSearchAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mSearchAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->notifyDirty()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->reloadData()V

    return-void
.end method

.method public setSearchTagController(Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    return-void
.end method

.method public updateKeyword(Ljava/lang/String;Z)V
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mSearchAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getTextTagData()Ljava/lang/String;

    move-result-object p1

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->mSearchAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->updateKeyword(Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->reloadData()V

    goto :goto_0
.end method
