.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposePhotoCoverObject.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$StoryInfoUpdatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;
    }
.end annotation


# static fields
.field private static final BACKGROUND_ALPHA_VALUE:I = 0x66

.field private static final DIM_BG_ALPHA_VALUE:I = 0x4d

.field private static final DURATION_CANVAS_MIX_ANIM:I = 0x12c

.field private static final IS_NOS:Z

.field private static final RES_ID_DATE_LABEL:I = 0x2

.field private static final RES_ID_PATTERN_BG_BOTTOM:I = 0x4

.field private static final RES_ID_PATTERN_BG_TOP:I = 0x3

.field private static final RES_ID_PATTERN_DIM_BG:I = 0x5

.field private static final RES_ID_TITLE_LABEL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GlComposePhotoCoverObject"

.field private static final USE_CMH:Z

.field private static final USE_DREAM_UX:Z

.field private static final USE_EVENT_SHARE:Z

.field private static final USE_FACE_CROP:Z

.field private static final USE_GRACE_UX:Z

.field private static final USE_NAVIGATION_BAR:Z

.field private static final USE_RENAME:Z

.field private static final USE_SMART_CROP:Z

.field private static final mDimBgColor:I


# instance fields
.field private mActionbarHeight:F

.field private final mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

.field private final mContext:Landroid/content/Context;

.field private mCoverBitmapHeight:I

.field private mCoverBitmapWidth:I

.field private mCoverHeight:F

.field private mCoverScrollAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;

.field private mCoverViewScroll:F

.field private mCoverWidth:F

.field private final mCurrentItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mDecorObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;

.field private final mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

.field private final mFriendsGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private final mHLVGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private mHLVPlayIconSize:I

.field private mHVPlayObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;

.field private mHeightViewRatio:F

.field private mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

.field private mIsChangedTitle:Z

.field private final mIsChannelPhotoView:Z

.field private final mIsExpanded:Z

.field private mIsPortraitMode:Z

.field private mIsScrollUp:Z

.field private final mListenerCanvasMix:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private final mListenerCoverScroll:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private mNavigationPixelSize:I

.field private mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

.field private mNoItemChannel:Z

.field private mOnCoverScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;

.field private final mPhotoCoverTitleLongClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

.field private final mResources:Landroid/content/res/Resources;

.field private mSocialCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

.field private mTitleName:Ljava/lang/String;

.field private mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

.field private mWidthViewRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->IS_NOS:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportSmartCrop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_SMART_CROP:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_FACE_CROP:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceEventStoryLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_GRACE_UX:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseRenameInEventPhotoView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_RENAME:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_CMH:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_EVENT_SHARE:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelDetailViewLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_DREAM_UX:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_NAVIGATION_BAR:Z

    const/16 v0, 0x4d

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mDimBgColor:I

    return-void
.end method

.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsPortraitMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsChangedTitle:Z

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mListenerCoverScroll:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mListenerCanvasMix:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$3;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mPhotoCoverTitleLongClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCurrentItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsExpanded:Z

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsChannelPhotoView:Z

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mFriendsGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHLVGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWideMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsPortraitMode:Z

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setVisibility(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->initDimensions()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$Builder;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsExpanded:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverViewScroll:F

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mActionbarHeight:F

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->updateChildTransition(F)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getCanvasSub()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHeightViewRatio:F

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mWidthViewRatio:F

    return v0
.end method

.method static synthetic access$2700()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_CMH:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/samsung/gallery/util/DimensionUtil;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsChannelPhotoView:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsPortraitMode:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsChangedTitle:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsChangedTitle:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->playHaptic(I)V

    return-void
.end method

.method static synthetic access$3800()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->IS_NOS:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mNoItemChannel:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverWidth:F

    return v0
.end method

.method static synthetic access$4100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_DREAM_UX:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->drawDimBg(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->drawPatternBGTop(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->drawPatternBGBottom(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHLVPlayIconSize:I

    return v0
.end method

.method private createCroppedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v7, v0

    :cond_1
    :goto_0
    return-object v7

    :cond_2
    const/4 v7, 0x0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int v3, v1, v2

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int v4, v1, v2

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_3

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_4

    :cond_3
    move-object v7, v0

    goto :goto_0

    :cond_4
    if-lez v3, :cond_1

    if-lez v4, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_1

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->getRotation()I

    move-result v0

    int-to-float v0, v0

    :goto_1
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawDimBg(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 6

    const/4 v5, 0x5

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    invoke-direct {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v2, :cond_1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mDimBgColor:I

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {p1, v2, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    return-object p1
.end method

.method private drawPatternBGBottom(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 9

    const/4 v8, 0x4

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    invoke-direct {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    const v5, 0x7f02010e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v4, 0x66

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b01e2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    int-to-double v4, v1

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    double-to-int v1, v4

    :cond_2
    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v2, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_3
    return-object p1
.end method

.method private drawPatternBGTop(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 7

    const/4 v6, 0x3

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    invoke-direct {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    const v5, 0x7f02010f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v4, 0x66

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b01e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_2
    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v2, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_3
    return-object p1
.end method

.method private getCoverBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCoverBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, p1

    goto :goto_0
.end method

.method private getCoverViewScroll(F)F
    .locals 3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mActionbarHeight:F

    sub-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsExpanded:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F

    sub-float v0, v1, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCroppedRect()Landroid/graphics/Rect;
    .locals 10

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverWidth:F

    div-float v4, v6, v7

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapWidth:I

    int-to-float v7, v7

    div-float v2, v6, v7

    cmpl-float v6, v4, v2

    if-ltz v6, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapHeight:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    float-to-int v1, v6

    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapWidth:I

    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapHeight:I

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapWidth:I

    sub-int/2addr v8, v1

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapHeight:I

    sub-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-nez v6, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCurrentItem:Lcom/sec/android/gallery3d/data/MediaItem;

    :goto_1
    invoke-direct {p0, v5, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getFaceCropRect(Landroid/graphics/Rect;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/Rect;

    move-result-object v5

    return-object v5

    :cond_0
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v0, v6

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapWidth:I

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v3, v6, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_1
.end method

.method private getFaceCropRect(Landroid/graphics/Rect;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/Rect;
    .locals 11

    if-nez p2, :cond_0

    move-object v9, p1

    :goto_0
    return-object v9

    :cond_0
    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_FACE_CROP:Z

    if-eqz v1, :cond_3

    instance-of v1, p2, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/sec/android/gallery3d/data/UnionImage;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v1, :cond_3

    :cond_1
    invoke-static {p2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_SMART_CROP:Z

    if-eqz v1, :cond_8

    const/4 v10, 0x0

    instance-of v1, p2, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/LocalImage;->getSmartCropRectFs()Ljava/util/ArrayList;

    move-result-object v10

    :goto_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverWidth:F

    div-float v7, v1, v2

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v1, v7, v1

    if-ltz v1, :cond_7

    sget-object v1, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$SMART_CROP_INDEX;->RATIO_4vs3:Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$SMART_CROP_INDEX;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$SMART_CROP_INDEX;->ordinal()I

    move-result v8

    :goto_2
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_b

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_SMART_CROP:Z

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mWidth:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHeight:F

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/util/SmartCropUtils;->calcSmartCropRectForStory(Landroid/graphics/RectF;IIFFI)Landroid/graphics/Rect;

    move-result-object p1

    :cond_3
    :goto_4
    move-object v9, p1

    goto :goto_0

    :cond_4
    instance-of v1, p2, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v1, :cond_5

    move-object v1, p2

    check-cast v1, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/UnionImage;->getSmartCropRectFs()Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_1

    :cond_5
    instance-of v1, p2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v1, :cond_6

    move-object v1, p2

    check-cast v1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getSmartCropRectFs()Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_7
    sget-object v1, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$SMART_CROP_INDEX;->RATIO_16vs9:Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$SMART_CROP_INDEX;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$SMART_CROP_INDEX;->ordinal()I

    move-result v8

    goto :goto_2

    :cond_8
    instance-of v1, p2, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v1, :cond_9

    move-object v1, p2

    check-cast v1, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/LocalImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_3

    :cond_9
    instance-of v1, p2, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/UnionImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mWidth:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHeight:F

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v6

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/sec/samsung/gallery/util/FaceUtil;->calcFaceCropRect(IILandroid/graphics/RectF;FFI)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_4

    :cond_b
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapHeight:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v4, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v5, v3

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/sec/samsung/gallery/util/FaceUtil;->calcFaceCropRect(IILandroid/graphics/RectF;FFI)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_4
.end method

.method private getNavigationPixelWidth()I
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_NAVIGATION_BAR:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mNavigationPixelSize:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNavigationPosition()F
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_NAVIGATION_BAR:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mNavigationPixelSize:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mWidthViewRatio:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mNavigationPixelSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mWidthViewRatio:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    goto :goto_0
.end method

.method private init(Landroid/graphics/Bitmap;I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->resetAttributes()V

    sget-boolean v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_DREAM_UX:Z

    if-nez v5, :cond_1

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverWidth:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mWidthViewRatio:F

    div-float/2addr v5, v6

    float-to-int v2, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHeightViewRatio:F

    div-float/2addr v5, v6

    float-to-int v1, v5

    if-nez p1, :cond_0

    new-array v5, v8, [I

    aput p2, v5, v7

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v8, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v5, v2, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setCanvasSub(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getNavigationPosition()F

    move-result v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHeightViewRatio:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v4, v5, v6

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setPos(FFF)V

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverWidth:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F

    invoke-virtual {p0, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setSize(FF)V

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setUseTouchEvent(Z)V

    new-instance v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v5, p0, v6, p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mDecorObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;

    sget-boolean v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->IS_NOS:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mDecorObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;)V

    :cond_2
    sget-boolean v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_GRACE_UX:Z

    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->initTitleObject()V

    :cond_3
    sget-boolean v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_DREAM_UX:Z

    if-eqz v5, :cond_5

    new-instance v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;

    invoke-direct {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->setLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->setParent(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;

    move-result-object v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverHVPlayIconClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v6, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->setHLVPlayIconClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;

    move-result-object v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mListenerMoreFriendBtnClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v6, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->setSharedFriendsClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mFriendsGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->setFriendsGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHLVGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->setHLVGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject$Builder;->build()Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mSocialCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->initCoverScrollAnim()V

    return-void

    :cond_5
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsChannelPhotoView:Z

    if-eqz v5, :cond_4

    new-instance v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v5, p0, v6, p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHVPlayObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHVPlayObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHVPlayObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;

    invoke-virtual {v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->setVisibility(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHVPlayObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCoverHVPlayIconClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v6, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setCoverTitleObjectVisibility(Z)V

    goto :goto_0
.end method

.method private initCoverScrollAnim()V
    .locals 3

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;->setType(I)V

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;

    invoke-direct {v1, p0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverScrollAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverScrollAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverScrollAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mListenerCoverScroll:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    return-void
.end method

.method private initDimensions()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b03e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHLVPlayIconSize:I

    return-void
.end method

.method private initTitleObject()V
    .locals 4

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;)V

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_RENAME:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->setUseTouchRippleEvent(Z)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mPhotoCoverTitleLongClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->setLongClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->setUseTouchRippleEvent(Z)V

    goto :goto_0
.end method

.method private playHaptic(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$4;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$4;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetAttributes()V
    .locals 4

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mNavigationPixelSize:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mWidthViewRatio:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHeightViewRatio:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeight()F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mActionbarHeight:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getNavigationPixelWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mWidthViewRatio:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverWidth:F

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHeightViewRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsScrollUp:Z

    return-void
.end method

.method private setTexCoords(Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setTexCoords(FFFF)V

    return-void
.end method

.method private startCanvasMixAnim()V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->resetTransformAnimation()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setEnableCanvasMixAnim(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setSourceMixRatio(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setTargetMixRatio(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mListenerCanvasMix:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    return-void
.end method

.method private updateChildTransition(F)V
    .locals 6

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mActionbarHeight:F

    sub-float/2addr v2, v3

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mOnCoverScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    float-to-double v2, v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsScrollUp:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsScrollUp:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mOnCoverScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;->onCoverUp()V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsScrollUp:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsScrollUp:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mOnCoverScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;->onCoverDown()V

    goto :goto_0
.end method

.method private updateTexCoords()V
    .locals 2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapWidth:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getCroppedRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->getRotation()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setVertexRotation(I)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setTexCoords(Landroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method createCover(Landroid/graphics/Bitmap;I)V
    .locals 6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCurrentItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getCoverBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->init(Landroid/graphics/Bitmap;I)V

    if-nez p1, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCurrentItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapHeight:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getCroppedRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setTexCoordSub(FFFF)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setVisibility(Z)V

    goto :goto_1
.end method

.method public getCroppedCoverBitmap()Landroid/graphics/Bitmap;
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getCoverBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getCroppedRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->createCroppedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method isScrollUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsScrollUp:Z

    return v0
.end method

.method public resetLayout(FZ)V
    .locals 3

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsPortraitMode:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    instance-of v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isNoItemView()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mNoItemChannel:Z

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->resetAttributes()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getNavigationPosition()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setPos(FFF)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mDecorObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mDecorObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mDecorObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHVPlayObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHVPlayObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mSocialCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mSocialCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->resetLayout()V

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->updateTexCoords()V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mNoItemChannel:Z

    if-eqz v1, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setVisibleRange(F)V

    return-void
.end method

.method public setCoverObjectTitleName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleName:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mSocialCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mSocialCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->setCoverObjectTitleName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method setCoverTitleObjectVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setDatePeriod(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mSocialCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mSocialCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->setDatePeriod(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setImageItem(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_GRACE_UX:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;)V

    :cond_0
    return-void
.end method

.method public setImageVideoCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mSocialCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mSocialCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->setImageVideoCount(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method setInitScreenOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsPortraitMode:Z

    return-void
.end method

.method setOnCoverScrollListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mOnCoverScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;

    return-void
.end method

.method setTitleRippleEffect(Z)V
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_RENAME:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->setUseTouchRippleEvent(Z)V

    :cond_0
    return-void
.end method

.method public setVisibleRange(F)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverScrollAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverScrollAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverScrollAnim;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getCoverViewScroll(F)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverViewScroll:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHeightViewRatio:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverViewScroll:F

    sub-float v0, v1, v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getX()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setPos(FFF)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverViewScroll:F

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->updateChildTransition(F)V

    goto :goto_0
.end method

.method updateCoverImage(Z)V
    .locals 14

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getCoverBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    instance-of v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isNoItemView()Z

    move-result v9

    if-eqz v9, :cond_5

    sget-boolean v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_DREAM_UX:Z

    if-eqz v9, :cond_4

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    const v12, 0x7f100253

    invoke-static {v9, v12}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v6, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverWidth:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mWidthViewRatio:F

    div-float/2addr v9, v12

    float-to-int v9, v9

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverHeight:F

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHeightViewRatio:F

    div-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v9, v12, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapWidth:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapHeight:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->updateTexCoords()V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapWidth:I

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapHeight:I

    invoke-virtual {v9, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getCanvasSub()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v9

    if-nez v9, :cond_1

    new-instance v4, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapWidth:I

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mCoverBitmapHeight:I

    invoke-direct {v4, v9, v12, v13}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-nez v9, :cond_9

    const v0, -0xcdd2d3

    new-array v9, v10, [I

    aput v0, v9, v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v10, v12}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setCanvasSub(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    const v12, 0x7f100014

    invoke-static {v9, v12}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mDecorObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;

    new-array v10, v10, [I

    aput v5, v10, v11

    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverDecorObject;[I)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;)V

    :cond_2
    if-eqz p1, :cond_a

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setCanvasMixRatio(F)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const v8, 0x7f02011b

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_5
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v9

    if-nez v9, :cond_8

    move v7, v10

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    if-eqz v7, :cond_0

    :cond_7
    sget-boolean v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->USE_EVENT_SHARE:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mContext:Landroid/content/Context;

    const v12, 0x7f02011a

    invoke-virtual {v9, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    move v7, v11

    goto :goto_3

    :cond_9
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mImageItem:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mAverageColor:[I

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v10, v12}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->startCanvasMixAnim()V

    goto :goto_2
.end method

.method updateHVPlayIcon(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsChannelPhotoView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHVPlayObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mHVPlayObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;->access$3700(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverHVPlayObject;Z)V

    :cond_0
    return-void
.end method

.method public updateHighLightVideoObjectVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mSocialCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mSocialCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->updatePlayIconObject(Z)V

    :cond_0
    return-void
.end method

.method public updateSharedFriendsObject()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mSocialCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mSocialCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->updateSharedFriendsObject()V

    :cond_0
    return-void
.end method

.method public updateTitle()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mIsChangedTitle:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$CoverTitleObject;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mSocialCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mSocialCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialCoverObject;->updateTitleObject()V

    goto :goto_0
.end method
