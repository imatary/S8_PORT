.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.source "GlComposeChannelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$DesktopModeStoryAlbumClickListener;
    }
.end annotation


# static fields
.field private static final CMD_SELECT_ALBUM:I = 0x65

.field private static final GENERIC_MOTION_TYPE_SOCIAL_HLV_BUTTON:I = 0xa

.field private static final UPDATE_SHARE_ICON_START_REQ:I = 0x1


# instance fields
.field private isCreateButtonFocused:Z

.field final mChannelViewHVPlayIconClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private final mComposeEventViewItemAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

.field private mDesktopModeStoryAlbumClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$DesktopModeStoryAlbumClickListener;

.field private mFocusedHLVideoObj:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private mGenericMotionHLVideoIcon:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field final mListenerAcceptClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field final mListenerDeclineClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private final mMultiSelectorEventViewModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

.field private mNeedSetMode:Z

.field private mNeedStopUpdatingShareIcon:Z

.field private mPressed:Z

.field private mScrollViFactor:I

.field private final mUpdateShareIconHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

.field private mValidView:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPressed:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mNeedSetMode:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mScrollViFactor:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mNeedStopUpdatingShareIcon:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->isCreateButtonFocused:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mDesktopModeStoryAlbumClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$DesktopModeStoryAlbumClickListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mListenerAcceptClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$3;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mListenerDeclineClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$4;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mComposeEventViewItemAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$5;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$5;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mMultiSelectorEventViewModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$6;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$6;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mChannelViewHVPlayIconClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mUpdateShareIconHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->checkActiveObjForUpdatingShareIcon(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->clearHLVideoIconBorder()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->updateThumbObjectBorder()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->updateHLVideoIconBorder(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->getTTSDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mFocusedHLVideoObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$DesktopModeStoryAlbumClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mDesktopModeStoryAlbumClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$DesktopModeStoryAlbumClickListener;

    return-object v0
.end method

.method private checkActiveObjForUpdatingShareIcon(II)V
    .locals 5

    const/4 v4, 0x3

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mNeedStopUpdatingShareIcon:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    if-ltz v3, :cond_0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

    if-ne p2, v4, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->sendMessageForUpdatingShareIcon(IZI)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    move v1, v2

    :goto_1
    if-gt v1, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->checkServiceDBForUpdatingShareIcon(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private checkServiceDBForUpdatingShareIcon(I)V
    .locals 6

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mNeedStopUpdatingShareIcon:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v3, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    array-length v3, v3

    if-gt p1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v3, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v3, p1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getStateAndRunningStateWithId(I)Lcom/sec/android/gallery3d/eventshare/EventShareData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->requestState:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->runningType:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, v5, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->sendMessageForUpdatingShareIcon(IZI)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, v5, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->sendMessageForUpdatingShareIcon(IZI)V

    goto :goto_0

    :cond_2
    iget v3, v1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->requestState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    iget v3, v1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->request:I

    if-ne v3, v5, :cond_3

    const/4 v3, 0x3

    invoke-direct {p0, p1, v5, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->sendMessageForUpdatingShareIcon(IZI)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {p0, p1, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->sendMessageForUpdatingShareIcon(IZI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearHLVideoIconBorder()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mFocusedHLVideoObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mFocusedHLVideoObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    :cond_0
    return-void
.end method

.method private getTTSDescription(I)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a017b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0405

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method private handleSelectAlbum(II)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSoundUtils()Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->playSoundResource(I)V

    :cond_1
    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getScrollForIndex(I)F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getVisibleScrollDelta(F)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getValidScroll(F)F

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setInitMovement(F)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setScroll(FZ)V

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocused(IZ)V

    goto :goto_0
.end method

.method private moveTexCoords(F)V
    .locals 8

    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v3, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_1

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v4, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mRotation:I

    invoke-virtual {v2, v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setMovingTexCoords(FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    sub-float/2addr v7, p1

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mScrollViFactor:I

    div-int/2addr v6, v7

    int-to-float v0, v6

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendMessageForUpdatingShareIcon(IZI)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mNeedStopUpdatingShareIcon:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2, p1, v0, p3}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setValidView()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mValidView:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mValidView:Landroid/graphics/Rect;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mValidView:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private updateHLVideoIconBorder(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mFocusedHLVideoObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mFocusedHLVideoObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderWidth(F)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mFocusedHLVideoObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mContext:Landroid/content/Context;

    const v1, 0x7f100111

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderColor(I)V

    goto :goto_0
.end method

.method private updateThumbObjectBorder()V
    .locals 4

    const/4 v3, -0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getGenericMotionFocus()I

    move-result v2

    invoke-virtual {p0, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->updateBorder(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setGenericMotionFocus(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(Lcom/sec/android/gallery3d/glcore/GlObject;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected checkValidityForSecondaryClick()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->checkValidityForSecondaryClick()Z

    move-result v0

    goto :goto_0
.end method

.method public clearChildViewFocus(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mGenericMotionHLVideoIcon:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mFocusedHLVideoObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mGenericMotionHLVideoIcon:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mFocusedHLVideoObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;->onGenericMotionCancel(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mFocusedHLVideoObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    goto :goto_0
.end method

.method public createGlGenericMotionListener(I)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$7;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$7;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;I)V

    return-object v0
.end method

.method createMultiSelector(Z)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorEventView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mMultiSelectorEventViewModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorEventView;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;)V

    return-object v0
.end method

.method public getGernericMotionHLVideoIconListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mGenericMotionHLVideoIcon:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->createGlGenericMotionListener(I)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mGenericMotionHLVideoIcon:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mGenericMotionHLVideoIcon:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-object v0
.end method

.method public getHLVIconObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;
    .locals 2

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlComposeEventObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->getHLVideoIconObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemWidth()F
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    return v0
.end method

.method public getVisibleMarginTop(Landroid/content/Context;)F
    .locals 4

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginTop()F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    sub-float v1, v2, v3

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeight()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeight()F

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeight()F

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(II)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->setValidView()V

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onCreate(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mInitialCode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocused(IZ)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->isCheckMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mNeedSetMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mGlComposeViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mComposeEventViewItemAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->setAccessibilityNodeInfoListener(Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mScrollViFactor:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->getVisibleMarginTop(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->setHoverScrollFlexibleHeightMargin(I)V

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setHoveringIconToDefault(Landroid/content/Context;Landroid/view/View;)V

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onDestroy()V

    return-void
.end method

.method public onFlingEnd(F)V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onFlingEnd(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mNeedStopUpdatingShareIcon:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->updateEventShareIcon(IZI)V

    return-void
.end method

.method public onFlingProcess(FF)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->moveTexCoords(F)V

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onFlingProcess(FF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mNeedStopUpdatingShareIcon:Z

    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/16 v3, 0x14

    if-eq p1, v3, :cond_0

    const/16 v3, 0x16

    if-ne p1, v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_5

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCreateEventFloatingButton:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->isCreateButtonFocused:Z

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mOnKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

    invoke-interface {v3, p1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;->onKeyEvent(II)Z

    :goto_0
    return v2

    :cond_2
    const/16 v3, 0x13

    if-eq p1, v3, :cond_3

    const/16 v3, 0x15

    if-ne p1, v3, :cond_5

    :cond_3
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->isCreateButtonFocused:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mOnKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

    invoke-interface {v3, p1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;->onKeyEvent(II)Z

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->isCreateButtonFocused:Z

    goto :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/16 v6, 0xa8

    if-eq p1, v6, :cond_0

    const/16 v6, 0xa9

    if-eq p1, v6, :cond_0

    and-int/lit16 v6, v1, 0x100

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->isScreenLocked()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    const/16 v6, 0x42

    if-eq p1, v6, :cond_4

    const/16 v6, 0x17

    if-ne p1, v6, :cond_7

    :cond_4
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->isCreateButtonFocused:Z

    if-eqz v6, :cond_5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->isCreateButtonFocused:Z

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mOnKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

    invoke-interface {v6, p1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;->onKeyEvent(II)Z

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ltz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    if-nez v3, :cond_6

    move v4, v5

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    invoke-interface {v6, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;->onItemClick(II)Z

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v6, v7, v8, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto :goto_0

    :cond_7
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method protected onMessageExtra(III)V
    .locals 1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->handleSelectAlbum(II)V

    :cond_0
    return-void
.end method

.method protected onMoved(II)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPressed:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onMoved(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPressed(II)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-eq p2, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mValidView:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPressed:Z

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onPressed(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPressed:Z

    goto :goto_0
.end method

.method protected onReleased(IIII)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPressed:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onReleased(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected registerObjectSecondaryClickListener()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$8;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$8;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mGlSecondaryClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;

    return-void
.end method

.method protected resetLayout()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->setValidView()V

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginTop()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->setHoverScrollFlexibleHeightMargin(I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mWidthSpace:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mWidth:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/util/DimensionUtil;->setDimensionUtil(FI)V

    :cond_1
    return-void
.end method

.method protected resetScrollBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetScrollBar()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->setValidView()V

    goto :goto_0
.end method

.method public setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mNeedSetMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mNeedSetMode:Z

    :cond_0
    return-void
.end method

.method public setDesktopModeStoryAlbumClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$DesktopModeStoryAlbumClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mDesktopModeStoryAlbumClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$DesktopModeStoryAlbumClickListener;

    return-void
.end method

.method public updateChannelViewHLPlayIconBorder()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mUpdateShareIconHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mUpdateShareIconHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x25

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    return-void
.end method

.method public updateEventShareIcon(IZI)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceEventViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mNeedStopUpdatingShareIcon:Z

    if-nez p2, :cond_2

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->sendMessageForUpdatingShareIcon(IZI)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mUpdateShareIconHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mUpdateShareIconHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, v2, p3}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto :goto_0
.end method

.method public updateEventTitle(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto :goto_0
.end method

.method public updateHVPlayIcon(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto :goto_0
.end method

.method protected updateSize(I)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateSize(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->show()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {v0, v2, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->update(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->hide()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v3, v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->updateEventShareIcon(IZI)V

    return-void
.end method
