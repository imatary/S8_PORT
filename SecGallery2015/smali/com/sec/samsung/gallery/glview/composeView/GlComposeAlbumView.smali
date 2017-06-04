.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.source "GlComposeAlbumView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DesktopModeAlbumClickListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;
    }
.end annotation


# static fields
.field private static final ALBUM_VALUE:I = -0x1

.field private static final CMD_SELECT_ALBUM:I = 0x65

.field private static final DEFAULT_INDEX:I = 0x0

.field private static final FADE_ANIMATION_DURATION:I = 0x12c

.field private static final FEATURE_USE_GRACE_ALBUM_GUI:Z

.field private static final MORE_ALBUMS_VALUE:I = -0x4

.field private static final MOVE_TO_ANIMATION_DURATION:I = 0x96

.field private static final NOTIFICATION_VALUE:I = -0x2

.field private static final REORDER_ANIMATION_DURATION:I = 0x12c

.field private static final REORDER_ICON_VALUE:I = -0x3

.field public static final STATUS_REORDER_DONE:I = 0x4

.field private static final SWIPE_ANIMATION_DURATION:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "GlComposeAlbumView"


# instance fields
.field private final mAppearAlbumTitleAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private mChangeGroupAnim:Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;

.field private final mChangeGroupAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private final mComposeViewAlbumAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

.field private mDesktopModeAlbumClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DesktopModeAlbumClickListener;

.field private mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

.field private mDragIndex:I

.field private mDragInfo:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;

.field private mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

.field private mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

.field private mIsRunningChangeGroupAnim:Z

.field private mIsRunningMoveToAnim:Z

.field private mIsRunningReorderAnim:Z

.field private final mListAlbumViewSwipeAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

.field private final mMoreAlbumSwipeAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private mMoveToAnim:Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;

.field private final mMoveToAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private final mMultiSelectorAlbumModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

.field private mNeedSetMode:Z

.field private mPressed:Z

.field private mReorderAnim:Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;

.field private final mReorderAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

.field private mReorderStroke:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mRootObjHndDispMode:I

.field private mStartIndex:I

.field private mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

.field private mValidView:Landroid/graphics/Rect;

.field private mViewMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_GRACE_ALBUM_GUI:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPressed:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mNeedSetMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsRunningReorderAnim:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsRunningChangeGroupAnim:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsRunningMoveToAnim:Z

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderAnim:Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChangeGroupAnim:Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderStroke:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragInfo:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoveToAnim:Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDesktopModeAlbumClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DesktopModeAlbumClickListener;

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mStartIndex:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragIndex:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObjHndDispMode:I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChangeGroupAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$3;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoveToAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$4;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMultiSelectorAlbumModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mComposeViewAlbumAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$6;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$6;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumSwipeAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$7;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$7;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mListAlbumViewSwipeAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$8;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$8;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mAppearAlbumTitleAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->createListAlbumDivider(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->getParam()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mViewMode:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObjHndDispMode:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DesktopModeAlbumClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDesktopModeAlbumClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DesktopModeAlbumClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderAnim:Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsRunningReorderAnim:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsRunningReorderAnim:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->onDragEnd()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChangeGroupAnim:Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsRunningChangeGroupAnim:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsRunningChangeGroupAnim:Z

    return p1
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsRunningMoveToAnim:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->getMoreAlbumStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mStartIndex:I

    return v0
.end method

.method private controlByDrag(Z)Z
    .locals 19

    const/16 v17, 0x0

    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setMoveToward(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setFocused(Z)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/16 v17, 0x1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragInfo:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->mActive:Z

    move/from16 v1, v17

    :goto_0
    return v1

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getAbsY()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragInfo:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->getIntensity(F)F

    move-result v16

    const/4 v1, 0x0

    cmpl-float v1, v16, v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    cmpl-float v1, v16, v1

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    cmpg-float v1, v16, v1

    if-gez v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_15

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragInfo:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->mActive:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setMoveToward(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragInfo:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->mActive:Z

    :cond_4
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderAnim:Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isRunningAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChangeGroupAnim:Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isRunningAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isRunningAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->findFocusAlbum(Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v1, 0x0

    cmpl-float v1, v16, v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isListAlbumLayout()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveGroup()Landroid/util/SparseArray;

    move-result-object v15

    if-eqz v15, :cond_8

    const/4 v1, 0x0

    cmpl-float v1, v16, v1

    if-lez v1, :cond_b

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v15, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    :cond_8
    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v1, :cond_9

    if-eqz v14, :cond_9

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getVisibility()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v14, 0x0

    :cond_9
    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isAboveMoreAlbumDivider(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isBelowMoreAlbumDivider(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Z

    move-result v6

    :cond_a
    if-nez v14, :cond_c

    if-nez v5, :cond_c

    if-nez v6, :cond_c

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_c
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v14, :cond_d

    iget-object v1, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v1, :cond_d

    iget-object v1, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderEnable:Z

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_d
    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v1, :cond_14

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isHideAlbumMode()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_e
    if-nez v6, :cond_f

    if-nez v5, :cond_f

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v2

    if-eq v1, v2, :cond_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderAnim:Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mStartIndex:I

    invoke-virtual/range {v1 .. v7}, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->startReorder(IILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;ZZI)V

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4
    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragIndex:I

    goto/16 :goto_1

    :cond_10
    if-eqz v6, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_11
    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v2

    goto :goto_3

    :cond_12
    if-eqz v6, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v1

    goto :goto_4

    :cond_13
    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v1

    goto :goto_4

    :cond_14
    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v2

    if-eq v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderAnim:Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mStartIndex:I

    invoke-virtual/range {v7 .. v13}, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->startReorder(IILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;ZZI)V

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragIndex:I

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderAnim:Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isRunningAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)Z

    move-result v1

    if-nez v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChangeGroupAnim:Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isRunningAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setFocused(Z)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    move/from16 v0, v16

    neg-float v2, v0

    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setMoveToward(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragInfo:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->mActive:Z

    goto/16 :goto_1
.end method

.method private createDragObject()V
    .locals 14

    const v0, 0x3f666666    # 0.9f

    const/high16 v5, 0x41200000    # 10.0f

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsX()F

    move-result v6

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsY()F

    move-result v7

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsZ()F

    move-result v8

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v10

    mul-float v2, v10, v0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v10

    mul-float v1, v10, v0

    new-instance v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-direct {v10, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iput v11, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mIndex:I

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-boolean v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSelectState:Z

    iput-boolean v10, v11, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mSelectState:Z

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setPosIndex()I

    move-result v11

    iput v11, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHndDispmnt:I

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mResource:Landroid/content/res/Resources;

    const v13, 0x7f0b0002

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->convX(I)F

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setRoundedOption(IF)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v11

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setSize(FF)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsX()F

    move-result v11

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsY()F

    move-result v12

    iget-object v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsZ()F

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setPos(FFF)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setCurrentPosToSource()V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mWidth:F

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHeight:F

    invoke-virtual {v10, v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setSourceSize(FF)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v10, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setTargetSize(FF)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    add-float v11, v8, v5

    invoke-virtual {v10, v6, v7, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setTargetPos(FFF)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setUseTouchEvent(Z)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mTitleVisible:Z

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->update(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isListAlbumLayout()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    const v11, 0x3ecccccd    # 0.4f

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setAlpha(F)V

    :cond_0
    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMode:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-boolean v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mSelectState:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getCheckedCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :goto_0
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mResource:Landroid/content/res/Resources;

    const v11, 0x7f0b00b2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->convX(I)F

    move-result v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mResource:Landroid/content/res/Resources;

    const v11, 0x7f0b00b1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->convY(I)F

    move-result v3

    sget-boolean v10, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isListAlbumLayout()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mResource:Landroid/content/res/Resources;

    const v11, 0x7f0b030f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->convX(I)F

    move-result v4

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mWidth:F

    add-float/2addr v11, v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v4

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mResource:Landroid/content/res/Resources;

    const v13, 0x7f0b030c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->convY(I)F

    move-result v12

    neg-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    :goto_1
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v10, v9, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    :cond_1
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-boolean v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mTitleVisible:Z

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isListAlbumLayout()Z

    move-result v10

    if-eqz v10, :cond_9

    sget-boolean v10, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v11, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v12, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mWidth:F

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mWidth:F

    add-float/2addr v10, v12

    neg-float v10, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v10, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    :goto_2
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    invoke-virtual {v10, v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isListAlbumLayout()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->createCanvasReorderIcon()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    sget-boolean v10, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconW:F

    sub-float/2addr v11, v12

    neg-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    sub-float/2addr v11, v12

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargRight:F

    sub-float/2addr v11, v12

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconMargin:F

    add-float/2addr v11, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    :goto_3
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconW:F

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconH:F

    invoke-virtual {v10, v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    :cond_3
    return-void

    :cond_4
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getUnCheckedCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto/16 :goto_0

    :cond_5
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mWidth:F

    sub-float/2addr v11, v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHeight:F

    sub-float/2addr v12, v3

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isListAlbumLayout()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mResource:Landroid/content/res/Resources;

    const v11, 0x7f0b030f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->convX(I)F

    move-result v4

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mWidth:F

    neg-float v11, v11

    sub-float/2addr v11, v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v11, v4

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mResource:Landroid/content/res/Resources;

    const v13, 0x7f0b030c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->convY(I)F

    move-result v12

    neg-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto/16 :goto_1

    :cond_7
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mWidth:F

    neg-float v11, v11

    add-float/2addr v11, v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHeight:F

    sub-float/2addr v12, v3

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto/16 :goto_1

    :cond_8
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v11, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v12, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mWidth:F

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mWidth:F

    add-float/2addr v10, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v10, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto/16 :goto_2

    :cond_9
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v11, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v13, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHeight:F

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHeight:F

    add-float/2addr v10, v13

    neg-float v10, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v10, v13

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v10, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const v11, 0x3ecccccd    # 0.4f

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    goto/16 :goto_2

    :cond_a
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconW:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    add-float/2addr v11, v12

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargRight:F

    add-float/2addr v11, v12

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mReorderIconMargin:F

    sub-float/2addr v11, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto/16 :goto_3
.end method

.method private createListAlbumDivider(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->initListAlbumDivider(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    array-length v1, v1

    if-eq v1, p1, :cond_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->onDestroy()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->initListAlbumDivider(I)V

    goto :goto_0
.end method

.method private findFocusAlbum(Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 8

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveGroup()Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v3, :cond_3

    iget-object v6, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v6, :cond_3

    iget-object v6, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsX()F

    move-result v4

    iget-object v6, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mCoverObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsY()F

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->isInclude(FF)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragIndex:I

    if-eq v6, v7, :cond_3

    :cond_1
    move-object v0, v3

    :cond_2
    move-object v6, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getMoreAlbumStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;
    .locals 3

    sget-object v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;->STATUS_UPSIDE_ALBUM_NOT_REORDER:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getMoreAlbumLastStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;->STATUS_UPSIDE_ALBUM_INCREASED:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getMoreAlbumLastStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;->STATUS_UPSIDE_ALBUM_DECREASED:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;->STATUS_UPSIDE_ALBUM_NOT_REORDER:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;

    goto :goto_0
.end method

.method private getParam()I
    .locals 3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mStartIndex:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragIndex:I

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v2

    return v2
.end method

.method private handleSelectAlbum(II)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSoundUtils()Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->playSoundResource(I)V

    :cond_1
    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getScrollForIndex(I)F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getVisibleScrollDelta(F)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getValidScroll(F)F

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setInitMovement(F)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setScroll(FZ)V

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocused(IZ)V

    goto :goto_0
.end method

.method private initListAlbumDivider(I)V
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v3, p1, [Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginTopPixel:I

    invoke-virtual {v3, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v1

    sget-boolean v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mListAlbumDivider:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mListAlbumDivider:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_9

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isDividerVisible(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v8

    invoke-direct {v0, v6, v7, v2, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;ILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;)V

    aput-object v0, v3, v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isListAlbumLayout()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->isActiveForMoreAlbum()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->setVisibility(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mListAlbumDivider:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v7, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isCheckMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMode:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMode:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_4

    :cond_1
    move v3, v5

    :goto_2
    sget-boolean v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v6

    if-lt v2, v6, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumDividerY:F

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getAlbumDividerY()F

    move-result v8

    sub-float/2addr v6, v8

    :goto_3
    add-float/2addr v6, v1

    invoke-virtual {v0, v7, v3, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->setVisibleRange(FZF)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->setVisibility(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->setVisibility(Z)V

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->setVisibility(Z)V

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    aget-object v3, v3, v2

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    aget-object v6, v6, v2

    invoke-virtual {v3, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->onDestroy()V

    :cond_8
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    const/4 v6, 0x0

    aput-object v6, v3, v2

    goto :goto_4

    :cond_9
    return-void
.end method

.method private isAboveMoreAlbumDivider(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getY()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragIndex:I

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getY()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private isBelowMoreAlbumDivider(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getY()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragIndex:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragIndex:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragIndex:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isDividerVisible(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isRunningAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDrag(IIZ)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isScreenLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mWidthSpace:F

    int-to-float v5, p1

    mul-float/2addr v2, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mWidth:I

    int-to-float v5, v5

    div-float v0, v2, v5

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mHeightSpace:F

    int-to-float v5, p2

    mul-float/2addr v2, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mHeight:I

    int-to-float v5, v5

    div-float v1, v2, v5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHndDispmnt:I

    neg-float v6, v1

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v0, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setPos(IFFF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->moveToLast()V

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_GRACE_ALBUM_GUI:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderIconPressed:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_2
    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->controlByDrag(Z)Z

    move v2, v3

    goto :goto_0
.end method

.method private onDragEnd()V
    .locals 6

    const-string/jumbo v1, "GlComposeAlbumView"

    const-string/jumbo v2, "onDragEnd+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1219"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseListAlbumView:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "GSDD"

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->getLogExtra()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mLevel:I

    invoke-virtual {p0, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->getStatusExtra(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoveToAnim:Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragIndex:I

    const/16 v5, 0x96

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->startAnimation(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;II)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "GSDD"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMoreAlbumDividerVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCount:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->resetLayout()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->resetLayout()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setValidView()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mValidView:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mValidView:Landroid/graphics/Rect;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mValidView:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private startDragAnimation()V
    .locals 12

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v8, :cond_1

    iput-boolean v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsReorderFinished:Z

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mStartIndex:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragIndex:I

    const-string/jumbo v8, "GlComposeAlbumView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startReorder startDragAnimation : mLongClickedObj.mIndex : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", groupIndex : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->getGroupObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-nez v8, :cond_0

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v8, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setAlwaysActiveGroupObjectIndex(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->createDragObject()V

    :cond_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->cancelAnimation()V

    new-instance v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {v8, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderStroke:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v3, v8, v11

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderX:F

    iget v1, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderY:F

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v9, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderW:F

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvX(F)I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v9, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderH:F

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v4

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderStroke:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderStroke:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v8, v7, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->updateCanvas(II)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderStroke:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v9, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderW:F

    iget v10, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mBorderH:F

    invoke-virtual {v8, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    new-instance v6, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isListAlbumLayout()Z

    move-result v8

    if-eqz v8, :cond_2

    const v8, 0x7f02023f

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderStroke:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v8, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderStroke:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v8, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderStroke:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->setPosIndex()I

    move-result v9

    iput v9, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    :cond_1
    return-void

    :cond_2
    sget-boolean v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_GRACE_ALBUM_GUI:Z

    if-eqz v8, :cond_3

    const v8, 0x7f02005e

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    const v8, 0x7f02005d

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private startMoreAlbumSwipeAnim(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;FF)V
    .locals 7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getZ()F

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getZ()F

    move-result v1

    invoke-virtual {p1, p3, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumSwipeAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;-><init>()V

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    return-void
.end method


# virtual methods
.method public activeSwipeAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->activeSwipeAnimation()V

    return-void
.end method

.method protected checkValidityForSecondaryClick()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForNormal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForEdit;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->checkValidityForSecondaryClick()Z

    move-result v1

    goto :goto_0
.end method

.method protected createMoreAlbumObject()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->resetLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mListenerGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    return-void
.end method

.method createMultiSelector(Z)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMultiSelectorAlbumModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;)V

    return-object v0
.end method

.method public getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    return-object v0
.end method

.method protected handleLongClick(III)Z
    .locals 4

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    const-string/jumbo v1, "GlComposeAlbumView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startReorder handleLongClick : index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", album index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->handleLongClick(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isListAlbumLayout()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->startDragAnimation()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isListAlbumViewSwipeAnimRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(II)V
    .locals 6

    const-wide/16 v4, 0x12c

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->setValidView()V

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onCreate(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mInitialCode:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocused(IZ)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isCheckMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mNeedSetMode:Z

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderAnim:Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderAnim:Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;

    invoke-virtual {v1, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderAnim:Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderAnim:Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChangeGroupAnim:Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChangeGroupAnim:Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;

    invoke-virtual {v1, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChangeGroupAnim:Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChangeGroupAnim:Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChangeGroupAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPosIndex()I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObjHndDispMode:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObjHndDispMode:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->setPosAnimMode(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mListAlbumViewSwipeAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "peopleViewMode"

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewDefaultMode()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mViewMode:I

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragInfo:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragInfo:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->reset()V

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoveToAnim:Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoveToAnim:Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoveToAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mGlComposeViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mComposeViewAlbumAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->setAccessibilityNodeInfoListener(Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewDefaultMode()I

    move-result v0

    goto :goto_0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/16 v6, 0xa8

    if-eq p1, v6, :cond_0

    const/16 v6, 0xa9

    if-eq p1, v6, :cond_0

    and-int/lit16 v6, v1, 0x100

    if-eqz v6, :cond_2

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isScreenLocked()Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x42

    if-eq p1, v6, :cond_3

    const/16 v6, 0x17

    if-ne p1, v6, :cond_7

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ltz v6, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    invoke-interface {v6, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;->onItemClick(II)Z

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v6, v7, v8, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_4
    :goto_1
    move v4, v5

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mNotificationClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;

    invoke-interface {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;->onClick()V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->clearChannelNoti()V

    goto :goto_1

    :cond_7
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method protected onMessageExtra(III)V
    .locals 1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->handleSelectAlbum(II)V

    :cond_0
    return-void
.end method

.method protected onMoved(II)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPressed:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->isSwipeAnimationEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "GlComposeAlbumView"

    const-string/jumbo v2, "onMoved : isSwipeAnimationEnable(): false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderIconPressed:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMode:I

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsRunningMoveToAnim:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsReorderFinished:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->setMode(IILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->startDragAnimation()V

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onMoved(II)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, p2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->onDrag(IIZ)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mAlbumReorderable:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsCategoryView:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMode:I

    if-eq v1, v4, :cond_5

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMode:I

    if-eq v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsRunningMoveToAnim:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsReorderFinished:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mOnMovedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnMovedListener;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnMovedListener;->onMoved()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->startDragAnimation()V

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onMoved(II)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->onDrag(IIZ)Z

    move-result v0

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMode:I

    if-eq v0, v4, :cond_7

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMode:I

    if-ne v0, v2, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mOnScaling:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isListAlbumLayout()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, p1, p2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->onDrag(IIZ)Z

    move-result v0

    goto :goto_0

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onMoved(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPressed(II)Z
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->isSwipeAnimationEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GlComposeAlbumView"

    const-string/jumbo v2, "onPressed : isSwipeAnimationEnable() : false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    if-ne p1, v2, :cond_1

    if-eq p2, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mValidView:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPressed:Z

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onPressed(II)Z

    move-result v0

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPressed:Z

    goto :goto_0
.end method

.method protected onReleased(IIII)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPressed:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->isSwipeAnimationEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "GlComposeAlbumView"

    const-string/jumbo v2, "onReleased : isSwipeAnimationEnable(): false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseReOrderAlbums:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderAnim:Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderAnim:Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlReorderAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsRunningReorderAnim:Z

    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsReorderFinished:Z

    if-eqz v1, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onReleased(IIII)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChangeGroupAnim:Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChangeGroupAnim:Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlChangeMoreAlbumGroupAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mIsRunningChangeGroupAnim:Z

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->onDragEnd()V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto :goto_1
.end method

.method public onSurfaceChanged(II)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseReOrderAlbums:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->resetReorderData()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mOnExtendListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnExtendListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnExtendListener;->onExtendRequest(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderIconPressed:Z

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onSurfaceChanged(II)V

    return-void
.end method

.method protected registerObjectSecondaryClickListener()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$9;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$9;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mGlSecondaryClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;

    return-void
.end method

.method protected resetLayout()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObjHndDispMode:I

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(IFFF)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->setValidView()V

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMode:I

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->setMoreAlbumDividerVisibility(I)V

    :cond_1
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetLayout()V

    return-void
.end method

.method public resetMoreAlbumPosition()V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getTopObject()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getScrollForIndex(I)F

    move-result v2

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    sub-float v1, v2, v4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->resetLayout()V

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->applyPreviousScroll(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setRange(FF)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->resetScrollBar()V

    return-void

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public resetReorderData()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_GRACE_ALBUM_GUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderStroke:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderStroke:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v4, v4, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setColor(FFF)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderStroke:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderStroke:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->remove()V

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderStroke:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->releasePosIndex(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mHndDispmnt:I

    :cond_4
    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v1

    if-le v0, v1, :cond_b

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbums:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbums:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->resetLayout()V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMode:I

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->setMoreAlbumDividerVisibility(I)V

    :cond_6
    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mFocusedObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mStartIndex:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragInfo:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragInfo:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->reset()V

    :cond_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHndDispmnt:I

    if-eq v0, v2, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHndDispmnt:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->releasePosIndex(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHndDispmnt:I

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->remove()V

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDragObject:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    :cond_9
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setAlwaysActiveGroupObjectIndex(I)V

    :cond_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbums:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mMoreAlbums:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderGroupObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method resetScrollBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetScrollBar()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->setValidView()V

    goto :goto_0
.end method

.method public setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mNeedSetMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mNeedSetMode:Z

    :cond_0
    return-void
.end method

.method protected setAlbumTitleVisibility(Z)V
    .locals 12

    const-wide/16 v10, 0x12c

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v7, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v7, :cond_1

    if-eqz p1, :cond_0

    iget-object v7, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v2, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v7, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {v2, v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;-><init>(Lcom/sec/android/gallery3d/glcore/GlObject;FF)V

    iget-object v7, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v7, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    invoke-virtual {v2, v10, v11}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setDuration(J)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mAppearAlbumTitleAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->start()V

    :cond_0
    iget-object v7, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v7, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v5, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mInactiveObject:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v7, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v7, :cond_4

    if-eqz p1, :cond_3

    iget-object v7, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v2, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v7, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {v2, v7, v8, v9}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;-><init>(Lcom/sec/android/gallery3d/glcore/GlObject;FF)V

    iget-object v7, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v7, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    invoke-virtual {v2, v10, v11}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setDuration(J)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mAppearAlbumTitleAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->start()V

    :cond_3
    iget-object v7, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v7, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public setDesktopModeAlbumClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DesktopModeAlbumClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDesktopModeAlbumClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DesktopModeAlbumClickListener;

    return-void
.end method

.method protected setReorderIconVisibility(Z)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v6, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v6, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isListAlbumLayout()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isCheckMode()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v6, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v4, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mInactiveObject:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_5

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v6, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v6, :cond_3

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isListAlbumLayout()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isCheckMode()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v6, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v6, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public startListAlbumViewSwipeAnimation(Z)V
    .locals 7

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isListAlbumLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumTitleMargLeft:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    add-float v1, v2, v3

    :goto_1
    sget-boolean v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v2, :cond_2

    mul-float/2addr v0, v4

    mul-float/2addr v1, v4

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->setSourceXPos(F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->setTargetXPos(F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->startSwipeAnimation()V

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumTitleMargLeft:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->startMoreAlbumSwipeAnim(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;FF)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumTitleMargLeft:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    add-float v0, v2, v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mReorderIconPressed:Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mListAlbumTitleMargLeft:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mCheckW:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getX()F

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->startMoreAlbumSwipeAnim(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;FF)V

    goto :goto_0
.end method

.method updateListAlbumDivider()V
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mSwipeAnim:Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginTopPixel:I

    invoke-virtual {v3, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convY(I)F

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    aget-object v0, v3, v2

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isDividerVisible(I)Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v8

    invoke-direct {v0, v6, v7, v2, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;ILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;)V

    aput-object v0, v3, v2

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isListAlbumLayout()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mAlbumTitleVisible:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->resetNavigationBarPosition(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;)V

    sget-boolean v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v3

    if-lt v2, v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->isActiveForMoreAlbum()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->setVisibility(Z)V

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v7, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->isCheckMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMode:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMode:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_6

    :cond_3
    move v3, v5

    :goto_2
    sget-boolean v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v6

    if-lt v2, v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAlbumDividerY:F

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getAlbumDividerY()F

    move-result v8

    sub-float/2addr v6, v8

    :goto_3
    add-float/2addr v6, v1

    invoke-virtual {v0, v7, v3, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->setVisibleRange(FZF)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    sget-boolean v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_5

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->setVisibility(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->setVisibility(Z)V

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->setVisibility(Z)V

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;->onDestroy()V

    :cond_a
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDividerObjects:[Lcom/sec/samsung/gallery/glview/composeView/GlListAlbumDividerObject;

    const/4 v6, 0x0

    aput-object v6, v3, v2

    goto :goto_4
.end method

.method protected updateSize(I)V
    .locals 3

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getDefaultAlbumSize()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setUpsideAlbumCount(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateSize(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseListAlbumView:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->createListAlbumDivider(I)V

    :cond_1
    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMode:I

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->setMoreAlbumDividerVisibility(I)V

    :cond_2
    return-void
.end method
