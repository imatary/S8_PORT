.class public Lcom/sec/samsung/gallery/util/DimensionUtil;
.super Ljava/lang/Object;
.source "DimensionUtil.java"


# instance fields
.field private mAlbumViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

.field private mChannelViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

.field private final mContext:Landroid/content/Context;

.field private mDetailViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;

.field private mEventViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

.field private mGlWidth:F

.field private mGoToTopButton:Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;

.field private mHovering:Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

.field private mQuickScroll:Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;

.field private mScreenDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$ScreenDimension;

.field private mSocialStory:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

.field private mSocialStoryDetailDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

.field private mThumbnailViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

.field private mThumbnailViewDimensionOver30:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

.field private mTimeFolder:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;

.field private mWin2GlRatio:F

.field private mWinWidth:I

.field private mbLandscape:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mbLandscape:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method private calcParameters()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayRotation()I

    move-result v0

    if-eq v0, v3, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mbLandscape:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsPortraitTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mbLandscape:Z

    if-nez v1, :cond_3

    :goto_1
    iput-boolean v3, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mbLandscape:Z

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mGlWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWinWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1
.end method

.method private getAlbumTimeDimension()Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mTimeFolder:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;->get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mTimeFolder:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mTimeFolder:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;

    return-object v0
.end method

.method private getAlbumViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mAlbumViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mAlbumViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mAlbumViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    return-object v0
.end method

.method private getAlbumViewDimensionIndex(I)I
    .locals 2

    if-gtz p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mbLandscape:Z

    if-eqz v1, :cond_2

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v0, v1, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mAlbumViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    iget v1, v1, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->album_view_mode_count:I

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mAlbumViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    iget v1, v1, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->album_view_mode_count:I

    add-int/lit8 p1, v1, -0x1

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, p1, 0x2

    goto :goto_1
.end method

.method private getAlbumViewNameTextboxHeightPixel(I)I
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->mAlbumViewSpec:[Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension$Spec;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewDimensionIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension$Spec;->name_textbox_height:I

    return v0
.end method

.method private getAlbumViewThumbnailHeightPixel(I)I
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->mAlbumViewSpec:[Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension$Spec;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewDimensionIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension$Spec;->thumbnail_height:I

    return v0
.end method

.method private getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mChannelViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mChannelViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mChannelViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    return-object v0
.end method

.method private getDetailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mDetailViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;->get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mDetailViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mDetailViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;

    return-object v0
.end method

.method private getDetailViewDimensionIndex(I)I
    .locals 2

    if-gtz p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mbLandscape:Z

    if-eqz v1, :cond_2

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v0, v1, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mDetailViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;

    iget v1, v1, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;->detail_view_mode_count:I

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mDetailViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;

    iget v1, v1, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;->detail_view_mode_count:I

    add-int/lit8 p1, v1, -0x1

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, p1, 0x2

    goto :goto_1
.end method

.method private getEventViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mEventViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mEventViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mEventViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    return-object v0
.end method

.method private getGoToTopButton()Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mGoToTopButton:Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;->get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mGoToTopButton:Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mGoToTopButton:Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;

    return-object v0
.end method

.method private getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mHovering:Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mHovering:Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mHovering:Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    return-object v0
.end method

.method private getQuickScroll()Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mQuickScroll:Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;->get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mQuickScroll:Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mQuickScroll:Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;

    return-object v0
.end method

.method private getScreenDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ScreenDimension;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mScreenDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$ScreenDimension;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/DimensionConfig$ScreenDimension;->get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$ScreenDimension;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mScreenDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$ScreenDimension;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mScreenDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$ScreenDimension;

    return-object v0
.end method

.method private getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mThumbnailViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mThumbnailViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mThumbnailViewDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    return-object v0
.end method

.method private getThumbnailViewDimenOver30()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mThumbnailViewDimensionOver30:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mThumbnailViewDimensionOver30:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mThumbnailViewDimensionOver30:Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    return-object v0
.end method


# virtual methods
.method public clearAllDimensionConfigs()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/view/DimensionConfig$ScreenDimension;->clear()V

    invoke-static {}, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->clear()V

    invoke-static {}, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->clear()V

    invoke-static {}, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->clear()V

    invoke-static {}, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;->clear()V

    invoke-static {}, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->clear()V

    invoke-static {}, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->clear()V

    invoke-static {}, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->clear()V

    invoke-static {}, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;->clear()V

    invoke-static {}, Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;->clear()V

    invoke-static {}, Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;->clear()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mSocialStoryDetailDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mSocialStory:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    return-void
.end method

.method public getActionBarHeight()F
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeightPixel()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getActionBarHeightPixel()I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeightPixelWithoutStatusBar()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getActionBarHeightPixelWithoutStatusBar()I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    :goto_0
    return v3

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getScreenDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ScreenDimension;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayRotation()I

    move-result v1

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsPortraitTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mbLandscape:Z

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mbLandscape:Z

    :goto_2
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mbLandscape:Z

    if-eqz v3, :cond_5

    iget v3, v2, Lcom/sec/samsung/gallery/view/DimensionConfig$ScreenDimension;->actionbar_height_l:I

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    if-eq v1, v4, :cond_3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    :cond_3
    move v5, v4

    :cond_4
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mbLandscape:Z

    goto :goto_2

    :cond_5
    iget v3, v2, Lcom/sec/samsung/gallery/view/DimensionConfig$ScreenDimension;->actionbar_height_p:I

    goto :goto_0
.end method

.method public getAlbumTimeViewVHGap()[I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumTimeDimension()Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumTimeDimension;->album_time_view_gap:[I

    return-object v0
.end method

.method public getAlbumViewDefaultMode()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->album_view_default_mode:I

    return v0
.end method

.method public getAlbumViewNameTextboxHeight(I)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewNameTextboxHeightPixel(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getAlbumViewNewLabelPadding()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->album_new_label_padding:I

    return v0
.end method

.method public getAlbumViewNewLabelPaddingOver30()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->album_new_label_padding_over_30:I

    return v0
.end method

.method public getAlbumViewNewLabelTopPadding()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->album_new_label_top_padding:I

    return v0
.end method

.method public getAlbumViewScrollbarWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$AlbumViewDimension;->album_view_scrollbar_width:I

    return v0
.end method

.method public getAlbumViewThumbnailHeight(I)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewThumbnailHeightPixel(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getChannelSharedPersonThumbHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_shared_person_thumb_height:I

    return v0
.end method

.method public getChannelSharedPersonThumbWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_shared_person_thumb_width:I

    return v0
.end method

.method public getChannelViewCardDividerIconHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_card_divider_icon_height:I

    return v0
.end method

.method public getChannelViewCardDividerIconWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_card_divider_icon_width:I

    return v0
.end method

.method public getChannelViewCardDividerWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_card_divider_width:I

    return v0
.end method

.method public getChannelViewCardGroupIconWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_card_group_icon_width:I

    return v0
.end method

.method public getChannelViewDividerTopMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_divider_top_margin:I

    return v0
.end method

.method public getChannelViewNameMaxWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_name_max_width:I

    return v0
.end method

.method public getChannelViewNewLabelHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_new_label_height:I

    return v0
.end method

.method public getChannelViewNewLabelPadding()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_new_label_padding:I

    return v0
.end method

.method public getChannelViewNewMarkFontSize()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_new_mark_font_size:I

    return v0
.end method

.method public getChannelViewReceivedEventTitleGap()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_received_event_title_gap:I

    return v0
.end method

.method public getChannelViewSelectionModeTitleLeftMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_selection_mode_title_left_margin:I

    return v0
.end method

.method public getChannelViewSenderThumbBottomMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_sender_thumb_bottom_margin:I

    return v0
.end method

.method public getChannelViewSenderThumbTopMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_sender_thumb_top_margin:I

    return v0
.end method

.method public getChannelViewSenderThumbWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_sender_thumb_width:I

    return v0
.end method

.method public getChannelViewSubTitleFontColor()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_sub_title_font_color:I

    return v0
.end method

.method public getChannelViewSubTitleFontSize()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_sub_title_font_size:I

    return v0
.end method

.method public getChannelViewSubTitleFontSizeOnThumb()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_sub_title_font_size_on_thumb:I

    return v0
.end method

.method public getChannelViewSubTitleHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_sub_title_height:I

    return v0
.end method

.method public getChannelViewSubTitleTopMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_sub_title_top_margin:I

    return v0
.end method

.method public getChannelViewTextBottomMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_text_bottom_margin:I

    return v0
.end method

.method public getChannelViewTextEndMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_text_end_margin:I

    return v0
.end method

.method public getChannelViewTextLineGap()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_text_line_gap:I

    return v0
.end method

.method public getChannelViewTextStartMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_text_start_margin:I

    return v0
.end method

.method public getChannelViewThumbTopMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_thumb_top_margin:I

    return v0
.end method

.method public getChannelViewThumbTotalWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_thumb_total_width:I

    return v0
.end method

.method public getChannelViewTitleFontColor()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_title_font_color:I

    return v0
.end method

.method public getChannelViewTitleFontSize()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_title_font_size:I

    return v0
.end method

.method public getChannelViewTitleFontSizeOnThumb()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_title_font_size_on_thumb:I

    return v0
.end method

.method public getChannelViewTitleHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_title_height:I

    return v0
.end method

.method public getChannelViewTitleIconBottomMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_icon_bottom_margin:I

    return v0
.end method

.method public getChannelViewTitleIconEndMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_icon_end_margin:I

    return v0
.end method

.method public getChannelViewTitleLeftMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_title_left_margin:I

    return v0
.end method

.method public getChannelViewTitleTopMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_title_top_margin:I

    return v0
.end method

.method public getChannelViewUpIcLeftMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_up_ic_left_margin:I

    return v0
.end method

.method public getChannelViewUpIcTopMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_up_ic_top_margin:I

    return v0
.end method

.method public getChannelViewUpIcWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getChannelViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ChannelViewDimension;->channel_view_up_ic_width:I

    return v0
.end method

.method public getDetailViewIconLeftPaddingPixel(I)I
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getDetailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;->mDetailViewSpec:[Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension$Spec;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getDetailViewDimensionIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension$Spec;->detail_view_icon_hpadding_left:I

    return v0
.end method

.method public getDetailViewIconTopPaddingPixel(I)I
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getDetailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;->mDetailViewSpec:[Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension$Spec;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getDetailViewDimensionIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension$Spec;->detail_view_icon_vpadding_top:I

    return v0
.end method

.method public getEventViewSelctionModeTitleLeftMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_selection_mode_title_left_margin:I

    return v0
.end method

.method public getEventViewSubTitleFontColor()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_sub_title_font_color:I

    return v0
.end method

.method public getEventViewSubTitleFontSize()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_sub_title_font_size:I

    return v0
.end method

.method public getEventViewSubTitleTopMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_sub_title_top_margin:I

    return v0
.end method

.method public getEventViewSuggestionFontColor()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_suggestion_font_color:I

    return v0
.end method

.method public getEventViewSuggestionFontSize()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_suggestion_font_size:I

    return v0
.end method

.method public getEventViewSuggestionHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_suggestion_height:I

    return v0
.end method

.method public getEventViewSuggestionRightMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_suggestion_right_margin:I

    return v0
.end method

.method public getEventViewSuggestionStartPadding()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_suggestion_start_padding:I

    return v0
.end method

.method public getEventViewSuggestionTopMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_suggestion_top_margin:I

    return v0
.end method

.method public getEventViewTitleFontColor()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_title_font_color:I

    return v0
.end method

.method public getEventViewTitleFontSize()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_title_font_size:I

    return v0
.end method

.method public getEventViewTitleHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_title_height:I

    return v0
.end method

.method public getEventViewTitleLeftMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_title_left_margin:I

    return v0
.end method

.method public getEventViewTitlePaddingforSSFont()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_title_padding_for_ssfont:I

    return v0
.end method

.method public getEventViewTitleTopMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getEventViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$EventViewDimension;->event_view_title_top_margin:I

    return v0
.end method

.method public getGoToTopButtonMarginBottom()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getGoToTopButton()Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;->go_to_top_button_margin_bottom:I

    return v0
.end method

.method public getGoToTopButtonSize()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getGoToTopButton()Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;->go_to_top_button_size:I

    return v0
.end method

.method public getHoveringActionBarButtonHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_button_height:I

    return v0
.end method

.method public getHoveringActionBarButtonLabelHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_button_label_height:I

    return v0
.end method

.method public getHoveringActionBarButtonLabelMarginTop()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_button_label_margin_top:I

    return v0
.end method

.method public getHoveringActionBarButtonLabelWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_button_label_width:I

    return v0
.end method

.method public getHoveringActionBarButtonMarginLeft()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_button_margin_left:I

    return v0
.end method

.method public getHoveringActionBarButtonMarginRight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_button_margin_right:I

    return v0
.end method

.method public getHoveringActionBarButtonWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_button_width:I

    return v0
.end method

.method public getHoveringActionBarHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_height:I

    return v0
.end method

.method public getHoveringActionBarMinHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_min_height:I

    return v0
.end method

.method public getHoveringActionBarMinWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_min_width:I

    return v0
.end method

.method public getHoveringActionBarShadowSize()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_actionbar_shadow_size:I

    return v0
.end method

.method public getHoveringBgPaddingBottom()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_background_res_padding_bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHoveringBgPaddingInside()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_background_res_padding_inside:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHoveringBgPaddingLeft()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_background_res_padding_left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHoveringBgPaddingRight()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_background_res_padding_right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHoveringBgPaddingTop()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_background_res_padding_top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHoveringBgPanoramaPaddingLeft()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_background_res_panorama_padding_left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHoveringBgPanoramaPaddingRight()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_background_res_panorama_padding_right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHoveringIconSize()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_icon_size:F

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHoveringImageGap()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_gap:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHoveringImageHeight()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_height:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHoveringImageOffsetXCoordinatesFromOriginalThumbnail()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_offset_xcoordinates_from_original_thumbnail:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHoveringImageOffsetYCoordinatesFromOriginalThumbnail()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_offset_ycoordinates_from_original_thumbnail:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHoveringImageSetHeight()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_set_height:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHoveringImageSetOffsetXCoordinatesFromOriginalThumbnail()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_set_offset_xcoordinates_from_original_thumbnail:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHoveringImageSetOffsetYCoordinatesFromOriginalThumbnail()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_set_offset_ycoordinates_from_original_thumbnail:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHoveringImageSetWidth()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_set_width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHoveringImageWidth()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_image_width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHoveringScrollDetectArea()F
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHovering()Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$Hovering;->hovering_scroll_detect_area:F

    return v0
.end method

.method public getQuickScrollBarHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getQuickScroll()Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;->quick_scroll_height:I

    return v0
.end method

.method public getQuickScrollBarWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getQuickScroll()Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;->quick_scroll_width:I

    return v0
.end method

.method public getQuickScrollCenterPopupHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getQuickScroll()Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;->quick_scroll_cetner_popup_height:I

    return v0
.end method

.method public getQuickScrollPopupPadding()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getQuickScroll()Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;->quick_scroll_popup_padding:I

    return v0
.end method

.method public getQuickScrollPopupTextBottomPadding()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getQuickScroll()Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$QuickScroll;->quick_scroll_popup_text_bottom_padding:I

    return v0
.end method

.method public getSelectionBufferLayoutHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getScreenDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ScreenDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ScreenDimension;->selectionBufferLayoutHeight:I

    return v0
.end method

.method public getSocialStoryDetailDimension()Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mSocialStoryDetailDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mSocialStoryDetailDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mSocialStoryDetailDimension:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    return-object v0
.end method

.method public getSocialStoryViewDimension()Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mSocialStory:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mSocialStory:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mSocialStory:Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryViewDimension;

    return-object v0
.end method

.method public getTabViewHeightPixel()I
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getScreenDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ScreenDimension;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mbLandscape:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ScreenDimension;->tabview_height_l:I

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ScreenDimension;->tabview_height_p:I

    goto :goto_0
.end method

.method public getTabletChannelViewNewMarkTopMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->channel_view_tablet_new_mark_top_margin:I

    return v0
.end method

.method public getThumbnailAlbumCameraIconSizeNOS()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimenOver30()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_album_camera_icon_size_n_os:I

    return v0
.end method

.method public getThumbnailAlbumCameraMemoryIconWidthOver30()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimenOver30()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_album_camera_memory_icon_width_over_30:I

    return v0
.end method

.method public getThumbnailAlbumPlayIconHeightOver30()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimenOver30()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_album_play_icon_height_over_30:I

    return v0
.end method

.method public getThumbnailAlbumPlayIconPaddingOver30()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimenOver30()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_album_play_icon_padding_over_30:I

    return v0
.end method

.method public getThumbnailAlbumPlayIconWidthOver30()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimenOver30()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_album_play_icon_width_over_30:I

    return v0
.end method

.method public getThumbnailSplitAlbumPlayIconPaddingOver30()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimenOver30()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_split_album_play_icon_padding_over_30:I

    return v0
.end method

.method public getThumbnailViewCameraIconMarginBottom()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_camera_icon_margin_bottom:I

    return v0
.end method

.method public getThumbnailViewCameraIconMarginLeft()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_camera_icon_margin_left:I

    return v0
.end method

.method public getThumbnailViewCloudIconMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimenOver30()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_cloud_icon_margin:I

    return v0
.end method

.method public getThumbnailViewCloudIconSize()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimenOver30()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_cloud_icon_size:I

    return v0
.end method

.method public getThumbnailViewDurationTextPaddingOver30()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimenOver30()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_duration_text_padding_over_30:I

    return v0
.end method

.method public getThumbnailViewFastSlowIconWidthOver30()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimenOver30()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_fast_slow_icon_width_over_30:I

    return v0
.end method

.method public getThumbnailViewGifMarkHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_gif_mark_height:I

    return v0
.end method

.method public getThumbnailViewGifMarkMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_gif_mark_margin:I

    return v0
.end method

.method public getThumbnailViewGifMarkSidePadding()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_gif_mark_side_padding:I

    return v0
.end method

.method public getThumbnailViewIconLeftPadding()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_icon_left_padding:I

    return v0
.end method

.method public getThumbnailViewNewAlbumBackgroundColor()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_background_color:I

    return v0
.end method

.method public getThumbnailViewNewAlbumHeaderPaddingBottom()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_header_padding_bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getThumbnailViewNewAlbumHeaderPaddingLeft()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_header_padding_left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getThumbnailViewNewAlbumHeaderPaddingTop()F
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_header_padding_top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getThumbnailViewNewAlbumSelectCountBoxHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_select_box_height:I

    return v0
.end method

.method public getThumbnailViewNewAlbumSelectCountFontColor()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_select_count_font_color:I

    return v0
.end method

.method public getThumbnailViewNewAlbumSelectCountFontSize()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_select_count_font_size:I

    return v0
.end method

.method public getThumbnailViewNewAlbumSelectCountRightPaddingPixel()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_select_count_hpadding_right:I

    return v0
.end method

.method public getThumbnailViewNewAlbumSelectCountTextMarginLeftPixel()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_select_count_text_margin_left:I

    return v0
.end method

.method public getThumbnailViewNewAlbumSelectCountTextMarginRightPixel()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_select_count_text_margin_right:I

    return v0
.end method

.method public getThumbnailViewNewAlbumSelectCountTopPaddingPixel()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_album_select_count_vpadding_top:I

    return v0
.end method

.method public getThumbnailViewNewMarkFontSize()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_split_album_new_font_size:I

    return v0
.end method

.method public getThumbnailViewNewMarkRightMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_mark_right_margin:I

    return v0
.end method

.method public getThumbnailViewNewMarkTopMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_new_mark_top_margin:I

    return v0
.end method

.method public getThumbnailViewPlayIconHeightOver30()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimenOver30()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_play_icon_height_over_30:I

    return v0
.end method

.method public getThumbnailViewPlayIconPaddingBottomOver30()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimenOver30()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_play_icon_padding_bottom_over_30:I

    return v0
.end method

.method public getThumbnailViewPlayIconPaddingStartOver30()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimenOver30()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_play_icon_padding_start_over_30:I

    return v0
.end method

.method public getThumbnailViewPlayIconSize()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_play_icon_size:I

    return v0
.end method

.method public getThumbnailViewPlayIconWidthOver30()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimenOver30()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_play_icon_width_over_30:I

    return v0
.end method

.method public getThumbnailViewSplitAlbumSeparatorRatioDividerHeight()F
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_split_album_seprator_ratio_divider_height:F

    return v0
.end method

.method public getThumbnailViewSplitAlbumTitlePaddingLeft()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_split_album_title_padding_left:I

    return v0
.end method

.method public getThumbnailViewTotalTimeTitleHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_total_time_title_height:I

    return v0
.end method

.method public getThumbnailViewVideoDurationFontColor()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_video_duration_font_color:I

    return v0
.end method

.method public getThumbnailViewVideoDurationFontSize()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_video_duration_font_size:I

    return v0
.end method

.method public getThumbnailViewVideoDurationFontSizeOver30()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimenOver30()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimensionOver30;->thumbnail_view_video_duration_font_size_over_30:I

    return v0
.end method

.method public getThumbnailViewVideoDurationTextPadding()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_video_duration_text_padding:I

    return v0
.end method

.method public getThumbnailViewVideoDurationTextPaddingBottom()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewDimen()Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;

    move-result-object v0

    iget v0, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$ThumbnailViewDimension;->thumbnail_view_video_duration_text_padding_bottom:I

    return v0
.end method

.method public getWin2WorldRatio()F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    return v0
.end method

.method public getWindowCoordinateValue(F)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWin2GlRatio:F

    div-float v0, p1, v0

    return v0
.end method

.method public setDimensionUtil(FI)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mGlWidth:F

    iput p2, p0, Lcom/sec/samsung/gallery/util/DimensionUtil;->mWinWidth:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->calcParameters()V

    return-void
.end method
