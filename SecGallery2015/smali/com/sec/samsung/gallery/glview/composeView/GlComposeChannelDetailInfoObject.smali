.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelDetailInfoObject.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$StoryInfoUpdatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;
    }
.end annotation


# static fields
.field private static final BORDER_OFFSET:I = 0x32

.field private static final RES_ID_CHANNEL_DETAIL_INFO_BG:I = 0x1

.field static final RES_ID_CHANNEL_DETAIL_INFO_DIVIDER_1:I = 0x7

.field static final RES_ID_CHANNEL_DETAIL_INFO_DIVIDER_2:I = 0x8

.field static final RES_ID_CHANNEL_DETAIL_NEXT_ICON:I = 0x9

.field static final RES_ID_CHANNEL_DETAIL_PHOTO_COUNT:I = 0x5

.field static final RES_ID_CHANNEL_DETAIL_PHOTO_ICON:I = 0x3

.field private static final RES_ID_CHANNEL_DETAIL_SHARED_FRIEND_BORDER:I = 0xc

.field static final RES_ID_CHANNEL_DETAIL_SHARED_FRIEND_COUNT:I = 0xa

.field static final RES_ID_CHANNEL_DETAIL_SHARED_FRIEND_ICON:I = 0xb

.field private static final RES_ID_CHANNEL_DETAIL_TITLE_LABEL:I = 0x2

.field static final RES_ID_CHANNEL_DETAIL_VIDEO_COUNT:I = 0x6

.field static final RES_ID_CHANNEL_DETAIL_VIDEO_ICON:I = 0x4


# instance fields
.field private final IsNosTablet:Z

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private mActionbarHeight:F

.field private final mContext:Landroid/content/Context;

.field private mCoverHeight:F

.field private mCoverWidth:F

.field private mDateHeight:F

.field private mDateObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;

.field private mDatePeriod:Ljava/lang/String;

.field private mDateTopMarginPixel:F

.field private final mExpanded:Z

.field private mExtraHeight:F

.field private final mGlComposeChannelPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

.field private mHeightViewRatio:F

.field private mImageCount:Ljava/lang/String;

.field private final mMoreGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private final mResources:Landroid/content/res/Resources;

.field private mSharedFriendObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

.field private mTitleHeight:F

.field private mTitleName:Ljava/lang/String;

.field private mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;

.field private mTitleStartLeftMarginPixel:F

.field private mTitleStartTopMarginPixel:F

.field private mTitleWidth:F

.field private mVideoCount:Ljava/lang/String;

.field private mWidthViewRatio:F


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->IsNosTablet:Z

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mExpanded:Z

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mGlComposeChannelPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mMoreGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setVisibility(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleWidth:F

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleStartLeftMarginPixel:F

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mCoverHeight:F

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleHeight:F

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleStartTopMarginPixel:F

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mWidthViewRatio:F

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mHeightViewRatio:F

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->IsNosTablet:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDateHeight:F

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDateTopMarginPixel:F

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mGlComposeChannelPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mImageCount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mVideoCount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDatePeriod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mSharedFriendObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private drawShareFriendBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;

    const v5, 0x7f02007c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b02b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v2, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    return-object p1
.end method

.method private getActionbarHeight(FZ)F
    .locals 2

    if-eqz p2, :cond_0

    const v0, 0x7f0b0039

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    return v1

    :cond_0
    const v0, 0x7f0b0038

    goto :goto_0
.end method

.method private getCoverViewScroll(F)F
    .locals 3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mCoverHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mExtraHeight:F

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mExpanded:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mCoverHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mExtraHeight:F

    add-float/2addr v1, v2

    sub-float v0, v1, p1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mActionbarHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mCoverHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mExtraHeight:F

    add-float/2addr v1, v2

    neg-float v0, v1

    goto :goto_0
.end method

.method private resetAttributes(Z)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b02b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mWidthViewRatio:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mHeightViewRatio:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mHeightViewRatio:F

    invoke-direct {p0, v2, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->getActionbarHeight(FZ)F

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mActionbarHeight:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mCoverWidth:F

    int-to-float v2, v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mCoverHeight:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mGlComposeChannelPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getPhotoCoverHeight()I

    move-result v0

    int-to-float v2, v0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mExtraHeight:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleWidth:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b02b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleStartLeftMarginPixel:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b02ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleStartTopMarginPixel:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b02b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleHeight:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDateHeight:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b02af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDateTopMarginPixel:F

    return-void
.end method


# virtual methods
.method createChannelDetailInfoBG()V
    .locals 11

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-boolean v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWideMode:Z

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->resetAttributes(Z)V

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mCoverWidth:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mWidthViewRatio:F

    div-float/2addr v5, v8

    float-to-int v2, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mCoverHeight:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mHeightViewRatio:F

    div-float/2addr v5, v8

    float-to-int v1, v5

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v5, v2, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawShareFriendBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mCoverHeight:F

    sub-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mExtraHeight:F

    sub-float v4, v5, v8

    invoke-virtual {p0, v9, v4, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setPos(FFF)V

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mCoverWidth:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mCoverHeight:F

    invoke-virtual {p0, v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setSize(FF)V

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setUseTouchEvent(Z)V

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setVisibility(Z)V

    new-instance v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v5, p0, v6, p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$1;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;)V

    new-instance v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v5, p0, v6, p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$1;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDateObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDateObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;)V

    return-void

    :cond_0
    move v5, v7

    goto :goto_0
.end method

.method drawAddButtonBorder(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mSharedFriendObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mSharedFriendObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->setFocusBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mSharedFriendObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;)V

    goto :goto_0
.end method

.method getSharedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mSharedFriendObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    return-object v0
.end method

.method public resetLayout(FZ)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isNoItemView()Z

    move-result v0

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->resetAttributes(Z)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mCoverWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mCoverHeight:F

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDateObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDateObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailDateObject;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mSharedFriendObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mSharedFriendObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;)V

    :cond_2
    if-eqz v0, :cond_3

    const/4 p1, 0x0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setVisibleRange(F)V

    return-void
.end method

.method public setCoverObjectTitleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleName:Ljava/lang/String;

    return-void
.end method

.method public setDatePeriod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mDatePeriod:Ljava/lang/String;

    return-void
.end method

.method public setImageVideoCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mImageCount:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mVideoCount:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mImageCount:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mVideoCount:Ljava/lang/String;

    goto :goto_1
.end method

.method public setVisibleRange(F)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->getCoverViewScroll(F)F

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v1, v2, v0

    invoke-virtual {p0, v4, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->setPos(FFF)V

    return-void
.end method

.method public updateSharedFriendsObject()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mGlComposeChannelPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mSharedFriendObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mSharedFriendObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mSharedFriendObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mSharedFriendObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mGlComposeChannelPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mListenerMoreFriendBtnClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mSharedFriendObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mMoreGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    :cond_1
    return-void
.end method

.method public updateTitle()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailTitleObject;)V

    :cond_0
    return-void
.end method
