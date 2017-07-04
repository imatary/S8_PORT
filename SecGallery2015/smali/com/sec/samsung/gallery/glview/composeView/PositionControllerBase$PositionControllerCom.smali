.class public Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;
.super Ljava/lang/Object;
.source "PositionControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PositionControllerCom"
.end annotation


# instance fields
.field isGroupCheckBoxFocused:Z

.field isLocationFocused:Z

.field private mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

.field private mBrokenMovieCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

.field private mBrokenPictureCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

.field private final mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

.field private mCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

.field mCheckBoxVisible:Z

.field private mCloudOnlyAngle:I

.field private mCloudOnlyCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

.field private final mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field final mContext:Landroid/content/Context;

.field private mExpCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

.field mFocused:I

.field private mGroupCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

.field mGroupCheckBoxVisible:Z

.field private mGroupCom:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;

.field private mGroupCount:I

.field private final mGrpCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

.field mIsFocusChannelNoti:Z

.field mIsFocusTimeLineSplit:Z

.field mIsFocusTipCard:Z

.field mIsFocusVisible:Z

.field private final mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

.field private mLikeCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

.field private mListAlbumCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

.field private mNeedShowShareProgress:Z

.field private mNeedShowShareRetryProgress:Z

.field mPortraitMode:Z

.field private mPosCtrl1:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

.field private mPosCtrl2:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

.field private mReorderIconCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

.field mScrollTopMargine:F

.field mShouldDisplayHighlightVideo:Z

.field private mUnLikeCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

.field final mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCloudOnlyCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCloudOnlyAngle:I

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mBrokenPictureCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mBrokenMovieCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mScrollTopMargine:F

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTimeLineSplit:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusTipCard:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mShouldDisplayHighlightVideo:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mNeedShowShareProgress:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mNeedShowShareRetryProgress:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCheckBoxVisible:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxVisible:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isLocationFocused:Z

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    iget-object v0, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    iget-object v1, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    invoke-direct {v0, p1, p2, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGrpCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    invoke-direct {v0, p1, p2, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGrpCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;II)Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getBrokenItemCanvas(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getGroupCheckedCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getGroupUnCheckedCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)[Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getGroupCheckBoxCanvasList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->createCanvasExp()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)[Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getListAlbumCheckBoxList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)[Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getCheckBoxCanvasList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCom:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCount:I

    return v0
.end method

.method private createCanvasExp()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mExpCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    const v2, 0x7f0201c1

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v1, v2, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mExpCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mExpCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mExpCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    return-object v1
.end method

.method private getBrokenItemCanvas(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 5

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mBrokenPictureCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenPictureThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v1, v2, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mBrokenPictureCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mBrokenPictureCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mBrokenPictureCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCloudOnlyCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCloudOnlyAngle:I

    if-eq v1, p2, :cond_3

    :cond_2
    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    neg-int v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/util/ResourceManager;->getCloudOnlyThumb(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v1, v2, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCloudOnlyCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCloudOnlyCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCloudOnlyAngle:I

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCloudOnlyCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mBrokenMovieCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-nez v1, :cond_5

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenMovieThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v1, v2, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mBrokenMovieCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mBrokenMovieCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mBrokenMovieCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    goto :goto_0
.end method

.method private getCheckBoxCanvasList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->initCheckBoxCanvasList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    return-object v0
.end method

.method private getGroupCheckBoxCanvasList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->initGroupCanvasForAnim()[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    return-object v0
.end method

.method private getGroupCheckedCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getGroupCheckBoxCanvasList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getGroupUnCheckedCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getGroupCheckBoxCanvasList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getListAlbumCheckBoxList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mListAlbumCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->initAlbumListCheckBoxCanvasList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mListAlbumCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mListAlbumCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    return-object v0
.end method

.method private initAlbumListCheckBoxCanvasList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 10

    sget v8, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    new-array v1, v8, [Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$3800()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0023

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    :goto_0
    const/4 v5, 0x0

    :goto_1
    :try_start_0
    sget v8, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    if-ge v5, v8, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    sget v8, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    div-int/lit8 v8, v8, 0x2

    if-le v5, v8, :cond_2

    const v8, 0x7f100263

    :goto_2
    invoke-static {v9, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v8, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v8, v9, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    aput-object v8, v1, v5

    aget-object v8, v1, v5

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$2400()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0022

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    goto :goto_0

    :cond_2
    const v8, 0x7f100261

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    :goto_3
    return-object v1

    :catch_0
    move-exception v4

    :try_start_1
    const-string/jumbo v8, "PositionControllerBase"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :catchall_0
    move-exception v8

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    throw v8
.end method

.method private initCheckBoxCanvasList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    :cond_0
    const/4 v11, 0x1

    :goto_0
    sget v18, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    move/from16 v0, v18

    new-array v5, v0, [Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0202f6

    invoke-static/range {v18 .. v19}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$3800()Z

    move-result v18

    if-eqz v18, :cond_2

    const v18, 0x7f020111

    :goto_1
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$3800()Z

    move-result v18

    if-eqz v18, :cond_3

    const v18, 0x7f020117

    :goto_2
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v17

    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13}, Landroid/graphics/Canvas;-><init>()V

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$3800()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0f0023

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v16

    :goto_3
    const/4 v10, 0x0

    :goto_4
    :try_start_0
    sget v18, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    move/from16 v0, v18

    if-ge v10, v0, :cond_b

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$3900()Z

    move-result v18

    if-nez v18, :cond_7

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v18, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    if-le v10, v0, :cond_6

    const v18, 0x7f100263

    :goto_5
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$3900()Z

    move-result v18

    if-nez v18, :cond_9

    if-eqz v11, :cond_9

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v13, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v13, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v18, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    aput-object v18, v5, v10

    aget-object v18, v5, v10

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_2
    const v18, 0x7f020110

    goto/16 :goto_1

    :cond_3
    const v18, 0x7f020116

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$2400()Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0f0024

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v16

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0f0022

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v16

    goto/16 :goto_3

    :cond_6
    const v18, 0x7f100261

    goto/16 :goto_5

    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v18, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    if-le v10, v0, :cond_8

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$4000(Z)I

    move-result v18

    :goto_8
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    goto/16 :goto_6

    :cond_8
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$4000(Z)I

    move-result v18

    goto :goto_8

    :cond_9
    if-nez v10, :cond_a

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_9
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v13, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v18, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    aput-object v18, v5, v10

    aget-object v18, v5, v10

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_7

    :catch_0
    move-exception v9

    :try_start_2
    const-string/jumbo v18, "PositionControllerBase"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    :goto_a
    return-object v5

    :cond_a
    :try_start_3
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v13, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v18

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    throw v18

    :cond_b
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_a
.end method

.method private initGroupCanvasForAnim()[Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 9

    sget v7, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    new-array v1, v7, [Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$3800()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0023

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    :goto_0
    const/4 v4, 0x0

    :goto_1
    sget v7, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    if-ge v4, v7, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    sget v7, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    div-int/lit8 v7, v7, 0x2

    if-le v4, v7, :cond_2

    const v7, 0x7f100263

    :goto_2
    invoke-static {v8, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v7, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v7, v8, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    aput-object v7, v1, v4

    aget-object v7, v1, v4

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->access$2400()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0024

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    goto :goto_0

    :cond_2
    const v7, 0x7f100261

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method


# virtual methods
.method public clean()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->recycle()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mListAlbumCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    sget v2, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mListAlbumCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mBrokenPictureCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mBrokenPictureCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCloudOnlyCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCloudOnlyCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCloudOnlyAngle:I

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mBrokenMovieCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mBrokenMovieCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mExpCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mExpCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mReorderIconCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mReorderIconCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mLikeCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mLikeCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_8
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mUnLikeCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mUnLikeCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_9
    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPosCtrl1:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPosCtrl2:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    return-void
.end method

.method createCanvasReorderIcon()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mReorderIconCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    const v3, 0x7f020330

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v2, v3, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mReorderIconCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mReorderIconCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mReorderIconCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    return-object v2
.end method

.method createLikeCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mLikeCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    const v3, 0x7f0201af

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    const v3, 0x7f100112

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v2, v3, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mLikeCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mLikeCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mLikeCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    return-object v2
.end method

.method createUnLikeCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mUnLikeCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    const v3, 0x7f0201ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    const v3, 0x7f100082

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v2, v3, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mUnLikeCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mUnLikeCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mUnLikeCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    return-object v2
.end method

.method getCheckedCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getListAlbumCheckBoxList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getCheckBoxCanvasList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/glview/composeView/GlCheckVIAnimation;->CHECK_VI_FRAME_CNT:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method getDimCheckedCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 9

    const/4 v8, 0x0

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemH:F

    float-to-int v7, v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    const v7, 0x7f1000c3

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v2, v6, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method getNeedShowShareProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mNeedShowShareProgress:Z

    return v0
.end method

.method getNeedShowShareRetryProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mNeedShowShareRetryProgress:Z

    return v0
.end method

.method public getPosCtrl1()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPosCtrl1:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    return-object v0
.end method

.method public getPosCtrl2()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPosCtrl2:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    return-object v0
.end method

.method getRemoveDimCheckedCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 7

    const/4 v6, 0x0

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemH:F

    float-to-int v5, v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v2, v4, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method getUnCheckedCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getListAlbumCheckBoxList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getCheckBoxCanvasList()[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method resetCount()V
    .locals 5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCount:I

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCom:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCount:I

    if-eq v4, v2, :cond_3

    :cond_2
    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCount:I

    new-array v4, v2, [Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCom:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCom:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;

    aget-object v1, v4, v3

    if-nez v1, :cond_4

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$1;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCom:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;

    aput-object v1, v4, v3

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupComInfo;->setItemCount(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPosCtrl1:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPosCtrl1:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput-object p1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPosCtrl2:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPosCtrl2:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput-object p1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    :cond_1
    return-void
.end method

.method setNeedShowShareProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mNeedShowShareProgress:Z

    return-void
.end method

.method setNeedShowShareRetryProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mNeedShowShareRetryProgress:Z

    return-void
.end method

.method setReferCtrl(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPosCtrl1:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPosCtrl2:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz p1, :cond_0

    iput-object p2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput-object p0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iput-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p1, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput-object p0, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iput-object v0, p2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    :cond_1
    return-void
.end method

.method setScrollTopMargine(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mScrollTopMargine:F

    return-void
.end method

.method public setShouldDisplayHighlightVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mShouldDisplayHighlightVideo:Z

    return-void
.end method
