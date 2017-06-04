.class public Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;
.super Ljava/lang/Object;
.source "HighlightVideoWindow.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/VirtualView;


# static fields
.field private static final TAG:Ljava/lang/String; = "HighlightVideoWindow"

.field private static mHighlightViewVisibility:I


# instance fields
.field private mBucketId:I

.field private final mContext:Landroid/content/Context;

.field private mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mHasVideoHightlight:Z

.field private mHighlightPreview:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

.field private mIsAutoPlay:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private final mListenerClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

.field private mNeedRemoveHighlightVideo:Z

.field private mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

.field private mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

.field private mPreviewLayout:Landroid/widget/RelativeLayout;

.field private mReadyCoverBitmap:Z

.field private mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightViewVisibility:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHasVideoHightlight:Z

    new-instance v0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$7;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$7;-><init>(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mListenerClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAFWMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mIsAutoPlay:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mNeedRemoveHighlightVideo:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->setLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->getHighlightViewHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->setPreviewSize(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->pauseHighlightVideoWindow()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mY:F

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mReadyCoverBitmap:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mReadyCoverBitmap:Z

    return p1
.end method

.method static synthetic access$1700()I
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightViewVisibility:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mListenerClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightPreview:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightPreview:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mPreviewLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mPreviewLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mBucketId:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->setZOrderMediaOverlay()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->setVisibilityHighlightView(I)V

    return-void
.end method

.method private getHighlightViewHeight()I
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelDetailViewLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b073f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private pauseHighlightVideoWindow()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightPreview:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->setShouldDisplayHighlightVideo(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightPreview:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-virtual {v0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->pauseHighlightEvent()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setUseTouchEvent(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    goto :goto_0
.end method

.method private setLayout()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f12015e

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mRelativeLayout:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f04008d

    const/4 v2, 0x0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f1200d5

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->bringToFront()V

    goto :goto_0
.end method

.method private setPreviewSize(I)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightPreview:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightPreview:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->setPreviewSize(II)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->moveSearchFilter(F)V

    :cond_2
    return-void
.end method

.method private setVisibilityHighlightView(I)V
    .locals 2

    sput p1, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightViewVisibility:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$6;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$6;-><init>(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setZOrderMediaOverlay()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightPreview:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-virtual {v1}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->getPreviewSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createHighlightVideoWindow()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$1;-><init>(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enlargeAnim()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mIsAutoPlay:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->isValidHighlightVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mNeedRemoveHighlightVideo:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->setNeedRemoveHighlightVideo(Z)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->removeHighlightVideoWindow()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHighlightPreview()Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightPreview:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    return-object v0
.end method

.method public handleDCStoryVideoPlay()V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->isValidHighlightVideo()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->getClickListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    invoke-interface {v1, v5}, Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;->onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    const/4 v0, 0x1

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    :goto_0
    new-instance v4, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgPlayStoryVideoState;

    invoke-direct {v4, v0}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgPlayStoryVideoState;-><init>(Z)V

    const-string/jumbo v5, "StoryDetailView"

    invoke-interface {v4, v5}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "CrossStoryVideoEditorPlayStoryVideo"

    invoke-static {v5, v6, v3, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :cond_0
    const-string/jumbo v5, "HighlightVideoWindow"

    const-string/jumbo v6, "listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "HighlightVideoWindow"

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->isValidHighlightVideo()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "mCoverObject is null"

    :goto_1
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "is not a valid highlightvideo"

    goto :goto_1
.end method

.method public isValidHighlightVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHasVideoHightlight:Z

    return v0
.end method

.method public moveSearchFilter(F)V
    .locals 2

    iput p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mY:F

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$4;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$4;-><init>(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeHighlightVideoWindow()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->setNeedRemoveHighlightVideo(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$2;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$2;-><init>(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetHighlightVideoLayout(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mIsAutoPlay:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->isValidHighlightVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->resetHighlightVideoWindowLayout(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V

    :cond_0
    return-void
.end method

.method public resetHighlightVideoWindowLayout(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$3;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$3;-><init>(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendCoverBitmapToHighlightVideo()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightPreview:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mReadyCoverBitmap:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$5;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$5;-><init>(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setBucketId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mBucketId:I

    return-void
.end method

.method public setGalleryCurrentStatus(Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-void
.end method

.method public setHasHighlightVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHasVideoHightlight:Z

    return-void
.end method

.method public setListenerThumbMove(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    return-void
.end method

.method public setNeedRemoveHighlightVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mNeedRemoveHighlightVideo:Z

    return-void
.end method

.method public setPhotoCoverObject(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 0

    check-cast p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mCoverObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    return-void
.end method

.method public setPosCtrl(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    return-void
.end method

.method public setPosCtrlCom(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    return-void
.end method

.method public setReadyCoverBitmap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mReadyCoverBitmap:Z

    return-void
.end method

.method public updateCoverTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightPreview:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->mHighlightPreview:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-virtual {v0, p1}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->renameEventTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
