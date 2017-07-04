.class abstract Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelShareProgressBar.java"


# static fields
.field private static final USE_DREAM_UX:Z

.field private static final USE_GRACE_UX:Z


# instance fields
.field private final mChannelPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

.field private mGridTimelineToggleHeight:I

.field private mGridTimelineTopBotMargin:I

.field private final mResources:Landroid/content/res/Resources;

.field private mShareFriendBtnHeightLand:I

.field private mShareFriendBtnHeightPort:I

.field private mStoryDetailInfoHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelDetailViewLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->USE_DREAM_UX:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceEventStoryLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->USE_GRACE_UX:Z

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    check-cast p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mChannelPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mChannelPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->initDimensions()V

    return-void
.end method

.method private getGridTimelineToggleHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mChannelPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getGridTimelineObjectVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mGridTimelineToggleHeight:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mGridTimelineTopBotMargin:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSharedFriendBtnHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWideMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mShareFriendBtnHeightLand:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mShareFriendBtnHeightPort:I

    goto :goto_0
.end method

.method private getStoryDetailInfoHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mStoryDetailInfoHeight:I

    return v0
.end method

.method private initDimensions()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0820

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mGridTimelineToggleHeight:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0824

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mGridTimelineTopBotMargin:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b02b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mStoryDetailInfoHeight:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mShareFriendBtnHeightLand:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mShareFriendBtnHeightPort:I

    return-void
.end method


# virtual methods
.method getExtraComponentsHeight()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->USE_DREAM_UX:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->getGridTimelineToggleHeight()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->USE_GRACE_UX:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->getStoryDetailInfoHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;->getSharedFriendBtnHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method
