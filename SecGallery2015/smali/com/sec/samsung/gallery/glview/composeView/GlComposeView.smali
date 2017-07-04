.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;
.source "GlComposeView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$DexThumbnailClickListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$EmptySpaceClickListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;
    }
.end annotation


# static fields
.field private static final CMD_CANCEL_DELETE_ANIM:I = 0x1e

.field static final CMD_COVER_UPDATED:I = 0x14

.field private static final CMD_CREATE_CHANNEL_NOTI:I = 0x1b

.field static final CMD_GO_TO_BOTTOM:I = 0x26

.field static final CMD_GO_TO_TOP_BUTTON:I = 0x22

.field private static final CMD_INIT_PENSELECT:I = 0xf

.field private static final CMD_INIT_UPDATE_MAX:I = 0x10

.field static final CMD_MULTI_SELECT:I = 0x16

.field static final CMD_QUICK_SCROLL:I = 0x8

.field static final CMD_QUICK_SCROLL_PROC:I = 0x9

.field private static final CMD_REFRESH_GROUP_OBJECTS:I = 0x23

.field private static final CMD_RESET_LAYOUT:I = 0xc

.field private static final CMD_RESET_TIMER_WITH_DELAY:I = 0x18

.field private static final CMD_RUN_IDLE_LISTENER:I = 0x19

.field private static final CMD_SHOW_TITLE:I = 0x20

.field static final CMD_START_DELETE_ANIM:I = 0x17

.field static final CMD_START_ENLARGE_ANIM:I = 0x1f

.field private static final CMD_UPDATE_ALBUM_BORDER:I = 0xa

.field private static final CMD_UPDATE_BORDER:I = 0x7

.field static final CMD_UPDATE_CHANNEL_VIEW_HLPLAY_ICON:I = 0x24

.field static final CMD_UPDATE_CHANNEL_VIEW_HLPLAY_ICON_BORDER:I = 0x25

.field static final CMD_UPDATE_CHECK:I = 0x4

.field private static final CMD_UPDATE_CHECK_MODE:I = 0x5

.field private static final CMD_UPDATE_DUALSCREEN_FOCUS:I = 0x1a

.field static final CMD_UPDATE_EVENT_TITLE:I = 0x1d

.field private static final CMD_UPDATE_GRAVITY:I = 0x6

.field static final CMD_UPDATE_ITEM:I = 0x3

.field private static final CMD_UPDATE_LOCATION_BORDER:I = 0x11

.field private static final CMD_UPDATE_NO_ITEM:I = 0x21

.field private static final CMD_UPDATE_QUEUE:I = 0xb

.field private static final CMD_UPDATE_RANGE:I = 0x2

.field static final CMD_UPDATE_SHARE_ICON:I = 0x1c

.field private static final CMD_UPDATE_SIZE:I = 0x1

.field private static final CMD_UPDATE_TITLE_BORDER:I = 0xd

.field private static final CMD_UPDATE_TITLE_BUTTON1_BORDER:I = 0x12

.field private static final CMD_UPDATE_TITLE_BUTTON2_BORDER:I = 0x13

.field private static final CRIT_DISTANCE_CLICK:I = 0x2d

.field private static final DELAY_TIME:I = 0x1f4

.field private static final EXPAND_BUTTON_VALUE:I = -0x2

.field private static final FADE_OUT_NOTI_CHANNEL:I = 0x1

.field static final FADE_OUT_NOTI_TIP_CARD:I = 0x2

.field static final FEATURE_USE_MORE_ALBUM:Z

.field private static final IS_TABLET:Z

.field private static final MAX_UPDATE_QUEUE_SIZE:I = 0x1f4

.field private static final MAX_UPDATE_UNIT:I

.field private static final MULTI_SCROLL_MOVE_AREA:I = 0x64

.field private static final NOTIFICATION_VALUE:I = -0x4

.field private static final PROPAGATE_ANIM_IDLE:I = 0x0

.field private static final PROPAGATE_ANIM_READY:I = 0x1

.field public static final SCALE_LOWER:F = 0.19999999f

.field private static final SCALE_LOWER_CRIT:F = 0.92f

.field private static final SCALE_LOWER_DELTA:F = 0.8f

.field public static final SCALE_UPPER:F = 2.6f

.field private static final SCALE_UPPER_CRIT:F = 1.16f

.field private static final SCALE_UPPER_DELTA:F = 1.6f

.field private static final SEARCH_FACE_VALUE:I = -0x6

.field static final SUB_CMD_QSCROLL_END:I = 0x3

.field static final SUB_CMD_QSCROLL_PROCESS:I = 0x2

.field static final SUB_CMD_QSCROLL_START:I = 0x1

.field private static final TAB_FLICK_DISTANCE:I = 0x96

.field private static final TAB_FLICK_TIME:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "GlComposeView"

.field private static final THUMBNAIL_VALUE:I = -0x1

.field private static final TIMELINE_VALUE:I = -0x3

.field private static final TIP_CARD_VALUE:I = -0x5

.field private static final USE_FAST_SCROLL:Z

.field private static final USE_FLUID_SCROLL:Z

.field private static final USE_MIN_UPDATE_QUEUE_COUNT:Z

.field private static final USE_TAB_UI:Z

.field private static mDualScreenFocus:I


# instance fields
.field private isAnimationVisible:Z

.field private loggingExtra:Ljava/lang/String;

.field public mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

.field mAlbumReorderable:Z

.field mAlbumTitleVisible:Z

.field private mChangeLevel:I

.field mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

.field mClickEnabled:Z

.field private mClickable:Z

.field private mClicked:Z

.field mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

.field private mDeleteMode:Z

.field mDeltaX:I

.field private mDexThumbnailClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$DexThumbnailClickListener;

.field mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

.field private mEdgeEffect:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;

.field mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

.field mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mElastic:F

.field private mEmptySpaceClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$EmptySpaceClickListener;

.field public mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

.field private final mFadeOutAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

.field private mFocusExpandObj:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private mFocusReorderObj:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private final mFromDetailAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field final mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field mGlComposeViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;

.field private final mGlComposeViewGroupAndItemAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

.field private mGlNoItemObject:Lcom/sec/samsung/gallery/glview/GlNoItemObject;

.field protected mGlSecondaryClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;

.field private mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

.field private mGravityData:F

.field mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

.field public mHeightViewRatio:F

.field private mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

.field private final mHoverCtrlListener:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;

.field mInitialCode:I

.field private mInitialItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mIsAngleCalculated:Z

.field private mIsDisableCreateAccessibilityNodeInfo:Z

.field private mIsDisplayedPenSelectionBox:Z

.field mIsEasyMode:Z

.field private mIsFromTabSlide:Z

.field private mIsMultiSelectScroll:Z

.field public mIsReorderFinished:Z

.field private mIsSlideAngle:Z

.field private mLayoutConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;

.field final mListenerDrag:Lcom/sec/android/gallery3d/glcore/GlObject$GlDragListener;

.field private final mListenerExpGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private final mListenerExpansionClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field final mListenerGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field final mListenerGrpCheckBoxClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private final mListenerGrpCheckBoxLongClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

.field final mListenerHover:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

.field final mListenerLocationClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field final mListenerNotiCancelClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private final mListenerNotiClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field final mListenerPenSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

.field private final mListenerReorderGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private final mListenerReorderIconMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

.field private final mListenerSearchViewMove:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

.field final mListenerThumbClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field final mListenerThumbLongClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

.field final mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

.field private final mListenerThumbMultiSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

.field mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field mMaxElastic:F

.field private mMaxLevel:I

.field private mMinLevel:I

.field private mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

.field private final mMultiSelectorModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

.field private mNeedToShowNoItem:Z

.field private mNoItemVI:Lcom/sec/samsung/gallery/NoItemVI;

.field private mOldFocusedItem:I

.field private mOldFocusedLocation:I

.field private mOldFocusedTitle:I

.field mOnQuickScroll:Z

.field mOnScaling:Z

.field mOnscroll:Z

.field private mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

.field private mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

.field mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

.field private mPosCtrlArray:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

.field mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

.field private mPosCtrlCount:I

.field mPosCtrlCurrent:I

.field private mPosCtrlNext:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

.field private mPreScrollDeltaDelta:I

.field private mPressedTime:J

.field private mPropagateAnimState:I

.field mPropagatedAnim:Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;

.field mRawX:I

.field mReorderIconPressed:Z

.field public final mResource:Landroid/content/res/Resources;

.field mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mRootScaleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;

.field mScaleAnim:Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;

.field mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

.field private mScreenLocked:Z

.field mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

.field mScrollEnabled:Z

.field private mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

.field private mSearchViewAnimating:Z

.field final mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private final mShowContextMenuInterface:Lcom/sec/samsung/gallery/lib/libinterface/ShowContextMenuInterface;

.field public mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

.field private mSkipHovering:Z

.field private mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

.field private final mSlideAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private mSplitViewExpanded:Z

.field mSupportExpand:Z

.field mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

.field private mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

.field private final mToDetailAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private mUpdateDefaultMax:I

.field private final mUpdateQueue:[I

.field private mUpdateQueueRD:I

.field private final mUpdateQueueType:[I

.field private mUpdateQueueWR:I

.field private mUseEnLargeAnimation:Z

.field private mUseHovering:I

.field mUseScaleCtrl:Z

.field private mVibrator:Landroid/os/Vibrator;

.field public mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

.field private final mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;

.field public mWidthViewRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->IS_TABLET:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFluidQuickScroll:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_FLUID_SCROLL:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFastScroll:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_FAST_SCROLL:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_TAB_UI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMinUpdateQueueCount:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_MIN_UPDATE_QUEUE_COUNT:Z

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_MIN_UPDATE_QUEUE_COUNT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->MAX_UPDATE_UNIT:I

    const/4 v0, -0x1

    sput v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDualScreenFocus:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->FEATURE_USE_MORE_ALBUM:Z

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v1, p5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mTabPos:I

    invoke-direct {p0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlNext:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlArray:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    const/16 v1, 0x1f4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateQueue:[I

    const/16 v1, 0x1f4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateQueueType:[I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateQueueWR:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateQueueRD:I

    sget v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->MAX_UPDATE_UNIT:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateDefaultMax:I

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mLayoutConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClicked:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClickable:Z

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClickEnabled:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAlbumReorderable:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsEasyMode:Z

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnscroll:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnQuickScroll:Z

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleAnim:Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootScaleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGravityData:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUseHovering:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSkipHovering:Z

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUseScaleCtrl:Z

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUseEnLargeAnimation:Z

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSplitViewExpanded:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchViewAnimating:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScreenLocked:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsDisplayedPenSelectionBox:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSupportExpand:Z

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mElastic:F

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMaxElastic:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPropagateAnimState:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteMode:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsMultiSelectScroll:Z

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPreScrollDeltaDelta:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsDisableCreateAccessibilityNodeInfo:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isAnimationVisible:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChangeLevel:I

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->loggingExtra:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAlbumTitleVisible:Z

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mReorderIconPressed:Z

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsReorderFinished:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsAngleCalculated:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mNeedToShowNoItem:Z

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOldFocusedItem:I

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOldFocusedTitle:I

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOldFocusedLocation:I

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEmptySpaceClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$EmptySpaceClickListener;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDexThumbnailClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$DexThumbnailClickListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$3;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$4;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$5;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$5;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerSearchViewMove:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$6;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$7;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerExpansionClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$8;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$8;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerGrpCheckBoxClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$9;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$9;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerGrpCheckBoxLongClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$10;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$10;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerDrag:Lcom/sec/android/gallery3d/glcore/GlObject$GlDragListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerHover:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$12;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$14;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$14;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mToDetailAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$15;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$15;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFromDetailAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$16;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$16;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbLongClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mVibrator:Landroid/os/Vibrator;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$19;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$19;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelectorModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbMultiSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$21;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$21;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrlListener:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerPenSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$23;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$23;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerLocationClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$24;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$24;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerReorderGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$25;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerExpGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlComposeViewGroupAndItemAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$30;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$30;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerNotiClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$31;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$31;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerNotiCancelClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$33;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$33;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFadeOutAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerReorderIconMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;

    invoke-direct {v1, p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mLayoutConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mResource:Landroid/content/res/Resources;

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/ShowContextMenuFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/ShowContextMenuFactory;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/ShowContextMenuInterface;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShowContextMenuInterface:Lcom/sec/samsung/gallery/lib/libinterface/ShowContextMenuInterface;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->initialize(ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->registerObjectSecondaryClickListener()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_TAB_UI:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    return-object p1
.end method

.method static synthetic access$1100()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDualScreenFocus:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0

    sput p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDualScreenFocus:I

    return p0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startDeleteAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onQueueIdle()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->createChannelNotificationObj()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteMode:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteMode:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateNoItem()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->animateTabIndicator()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPosCtrl(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isRootLayer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClickable:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getHoverCtrl()Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSkipHovering:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUseHovering:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFocusExpandObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFocusExpandObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFocusReorderObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFocusReorderObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateContentRange()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/GlSlideAnim;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;F)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isRightDirection(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;F)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isLeftDirection(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setThumbStrokeVisible(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isSlideAnimRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/android/gallery3d/glcore/GlObject;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convertToViewPointX(Lcom/sec/android/gallery3d/glcore/GlObject;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/android/gallery3d/glcore/GlObject;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convertToViewPointY(Lcom/sec/android/gallery3d/glcore/GlObject;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Landroid/os/Vibrator;)Landroid/os/Vibrator;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mVibrator:Landroid/os/Vibrator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGravityData:F

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cpuBoostInit()V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsMultiSelectScroll:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsMultiSelectScroll:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updatePensSelectionBox()V

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetFlingEffect()V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cpuBoostRelease()V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbMultiSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPenSelectCtrl()Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPenSelectionBox()Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->handleQuickScroll(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsDisplayedPenSelectionBox:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsDisplayedPenSelectionBox:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cpuBoost()V

    return-void
.end method

.method static synthetic access$5200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getFirstFitGroupIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->addChildInGroup()V

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMaxLevel:I

    return v0
.end method

.method static synthetic access$5500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMinLevel:I

    return v0
.end method

.method static synthetic access$5600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getNextLevel(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$5702(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChangeLevel:I

    return p1
.end method

.method static synthetic access$5800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mLayoutConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlNext:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlNext:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateFromQueue()V

    return-void
.end method

.method static synthetic access$6000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCount:I

    return v0
.end method

.method static synthetic access$6100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->insertSALogWhenPinchZoom(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getLogExtraForStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->changeThumbSizeType(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setEnableHoverScroll(Z)V

    return-void
.end method

.method static synthetic access$6500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSplitViewExpanded:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTimeLineIndexFromId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setHoverScrollFlexibleHeightMargin(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isAnimationVisible:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isAnimationVisible:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/GlNoItemObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlNoItemObject:Lcom/sec/samsung/gallery/glview/GlNoItemObject;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->initPenSelect()V

    return-void
.end method

.method static synthetic access$7000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$DexThumbnailClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDexThumbnailClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$DexThumbnailClickListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateDefaultMax:I

    return p1
.end method

.method static synthetic access$900()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->MAX_UPDATE_UNIT:I

    return v0
.end method

.method private addChildInGroup()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlNext:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCheckAnimAvailable(Z)V

    :cond_2
    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getParent()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    instance-of v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v4, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    iget v5, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_3

    invoke-virtual {v3, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setReuseObj(Z)V

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->moveToFirst()V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setScroll(FZ)V

    goto :goto_0
.end method

.method private animateRootScale(FF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootScaleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->startScale(FF)V

    return-void
.end method

.method private animateTabIndicator()V
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "tab_move_ratio"

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getX()F

    move-result v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    div-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private calcSlideScroll(II)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsAngleCalculated:Z

    if-eqz v5, :cond_1

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsSlideAngle:Z

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide v6, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double/2addr v6, v2

    double-to-float v0, v6

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsAngleCalculated:Z

    const/high16 v5, 0x41c80000    # 25.0f

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsSlideAngle:Z

    move v4, v1

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1
.end method

.method private changeLevel(IIF)V
    .locals 4

    const/4 v3, 0x0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChangeLevel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mLayoutConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->setLevel(IZF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getScrollForIndex(I)F

    move-result v1

    sub-float v0, v1, p3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getValidScroll(F)F

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setScroll(FZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetVisibleObjectAttribute()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->interpolateVisibleObjectPosition(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->addChildInGroup()V

    goto :goto_0
.end method

.method private changeThumbSizeType(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->rConvX(F)I

    move-result v1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isIsValidStateForPlayIcon()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setItemWidthForPlayIcon(IZ)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isDynamicLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setThumbSizeType(B)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setThumbSizeType(B)V

    goto :goto_0
.end method

.method private checkInitSearchFaceObj()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSearchView:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamSearchViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->resetLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    :cond_0
    return-void
.end method

.method private checkInitTipCardObj()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTipCard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowGoToUrlTipCard()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->resetLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowCloudTipCard()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCloudTipCard;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCloudTipCard;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->resetLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowSecureFolderTipCard()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->resetLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowPictureFrameTipCard()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->resetLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowVideoAppTipCard()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeVideoAppTipCard;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeVideoAppTipCard;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->resetLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    goto/16 :goto_0
.end method

.method private checkStartPropagateAnimation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsFromTabSlide:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPropagateAnimState:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetScroll()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;->onFling(F)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPropagatedAnim:Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->startAnimation(Landroid/util/SparseArray;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPropagateAnimState:I

    goto :goto_0
.end method

.method private convertToViewPointX(Lcom/sec/android/gallery3d/glcore/GlObject;I)I
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsX()F

    move-result v0

    invoke-virtual {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convX(I)F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getWidth(Z)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private convertToViewPointY(Lcom/sec/android/gallery3d/glcore/GlObject;I)I
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsY()F

    move-result v0

    invoke-virtual {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convY(I)F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getHeight(Z)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private cpuBoost()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->MULTI_SELECT_BOOST_CPU:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "CPU_BOOST"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private cpuBoostInit()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->MULTI_SELECT_INITIALIZE:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "CPU_BOOST"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private cpuBoostRelease()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->BOOST_RELEASE:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "CPU_BOOST"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private createChannelNotificationObj()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsEventView:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isAlbumPickerMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNewChannelCount(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$Builder;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$Builder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$Builder;->setLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$Builder;->setContext(Landroid/content/Context;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$Builder;->build()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->createNotificationBG()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerNotiClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setView(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$32;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$32;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setHoverListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginTop()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setHoverScrollFlexibleHeightMargin(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isShrinkAnimActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->moveToLast()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private destroyNoItem()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlNoItemObject:Lcom/sec/samsung/gallery/glview/GlNoItemObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlNoItemObject:Lcom/sec/samsung/gallery/glview/GlNoItemObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlNoItemObject:Lcom/sec/samsung/gallery/glview/GlNoItemObject;

    :cond_0
    return-void
.end method

.method private flingProcessForMultiSelect(F)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    neg-float v2, p1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPreScrollDeltaDelta:I

    sub-int/2addr v1, v2

    int-to-float v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    const/high16 v1, -0x3d380000    # -100.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isScrollingUp()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->getReachedBoundary()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->scroll(F)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updatePensSelectionBox()V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isScrollingDown()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->getReachedBoundary()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstFitGroupIndex()I
    .locals 8

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargTop:F

    sget-boolean v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->IS_TABLET:Z

    if-eqz v5, :cond_0

    const/high16 v5, 0x40a00000    # 5.0f

    add-float/2addr v4, v5

    :cond_0
    if-lez v0, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v3, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v2

    if-lez v3, :cond_1

    if-le v3, v2, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v6, v7

    sub-float v1, v5, v6

    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_1

    cmpg-float v5, v1, v4

    if-gez v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    if-le v3, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    return v2
.end method

.method private getHoverCtrl()Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;
    .locals 5

    const/4 v0, 0x1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAirViewEnabled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUseHovering:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrlListener:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUseHovering:I

    if-ne v4, v0, :cond_1

    :goto_0
    invoke-direct {v1, v2, p0, v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;Z)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLogExtraForStatus()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCategoryView()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CAZS"

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->loggingExtra:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->loggingExtra:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "EVZS"

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->loggingExtra:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "TIZM"

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->loggingExtra:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "ALZM"

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->loggingExtra:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "PSZM"

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->loggingExtra:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "getLogExtra() : no match viewBytFilterType!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getNextLevel(II)I
    .locals 2

    if-lez p2, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMaxLevel:I

    if-ge p1, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMaxLevel:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMinLevel:I

    if-le p1, v1, :cond_2

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMinLevel:I

    goto :goto_0
.end method

.method private getPenSelectCtrl()Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    return-object v0
.end method

.method private getPenSelectionBox()Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    return-object v0
.end method

.method private getPosCtrl(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlArray:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlArray:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    aget-object v0, v3, p1

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPosCtrl:[Ljava/lang/Object;

    aget-object v2, v3, p1

    check-cast v2, Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->init(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlArray:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    aput-object v0, v3, p1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private getSALogDetailWhenPinchZoom(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "8x"

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSplitViewExpanded:Z

    if-nez v1, :cond_1

    const-string/jumbo v0, "5x"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "6x"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "4x"

    goto :goto_0

    :pswitch_3
    instance-of v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v1, :cond_2

    const-string/jumbo v0, "3x"

    goto :goto_0

    :cond_2
    instance-of v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v1, :cond_3

    const-string/jumbo v0, "1x"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "2x"

    goto :goto_0

    :pswitch_4
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSplitViewExpanded:Z

    if-nez v1, :cond_0

    const-string/jumbo v0, "2x"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getSALogDetailWhenPinchZoomAlbum(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseListAlbumView:Z

    if-eqz v1, :cond_1

    const-string/jumbo v0, "List"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "3x"

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseListAlbumView:Z

    if-eqz v1, :cond_2

    const-string/jumbo v0, "3x"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "2x"

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseListAlbumView:Z

    if-eqz v1, :cond_0

    const-string/jumbo v0, "2x"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTimeLineIndexFromId(I)I
    .locals 1

    const/high16 v0, 0x10000

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private handlePageUpDownEvent(F)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_3

    cmpg-float v0, p1, v2

    if-gez v0, :cond_2

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->initScrollBar()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setInitMovement(F)V

    invoke-virtual {p0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setScroll(FZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {v0, p1, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->update(FFF)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget p1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private handleQuickScroll(I)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3f6b851f    # 0.92f

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->getQuickScrollRatio()F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    mul-float v0, v2, v1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getHoverCtrl()Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    if-ne p1, v3, :cond_8

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnQuickScroll:Z

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_FAST_SCROLL:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateQuickPopupText()V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->enableQuickScroll()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->exitFromHoverView(Z)V

    :cond_3
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_FLUID_SCROLL:Z

    if-eqz v2, :cond_7

    invoke-direct {p0, v6, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->animateRootScale(FF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->startTouchAnimation(Z)V

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->handleFlingProcess(F)V

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->cpuScrollBoostStart(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    goto :goto_0

    :cond_7
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_FAST_SCROLL:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->startTouchAnimation(Z)V

    goto :goto_1

    :cond_8
    const/4 v2, 0x3

    if-ne p1, v2, :cond_d

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnQuickScroll:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateQuickPopupText()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->hide(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->hide(Z)V

    :cond_9
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->exitFromHoverView(Z)V

    :cond_a
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_FLUID_SCROLL:Z

    if-eqz v2, :cond_c

    invoke-direct {p0, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->animateRootScale(FF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->startTouchAnimation(Z)V

    :cond_b
    :goto_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->cpuScrollBoostRelease(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    goto/16 :goto_0

    :cond_c
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_FAST_SCROLL:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->startTouchAnimation(Z)V

    goto :goto_2

    :cond_d
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {v2, v0, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->update(FFF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->handleFlingProcess(F)V

    :cond_e
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateQuickPopupText()V

    goto/16 :goto_0
.end method

.method private hideObjects()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->isQuickScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->hideNow()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->hideNow()V

    :cond_1
    return-void
.end method

.method private initPenSelect()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPenSelectionBox()Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsDisplayedPenSelectionBox:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->exitFromPenSelectionView()V

    :cond_0
    return-void
.end method

.method private initScrollBar()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseQuickScroll:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_FLUID_SCROLL:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mThis:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFluidQuickScrollBar;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    :goto_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetScrollBar()V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_FAST_SCROLL:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mThis:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mThis:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mThis:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    goto :goto_1
.end method

.method private insertSALogWhenPinchZoom(I)V
    .locals 4

    instance-of v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getSALogDetailWhenPinchZoomAlbum(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1010"

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getSALogDetailWhenPinchZoom(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1208"

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getSALogDetailWhenPinchZoom(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1010"

    goto :goto_0
.end method

.method private isCategoryView()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FILTER:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_DOCUMENTS:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FLOWERS:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FOOD:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_VEHICLES:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_PETS:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCENERY:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIsValidStateForPlayIcon()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    if-gt v0, v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    if-gt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLeftDirection(F)Z
    .locals 2

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_1

    :cond_0
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRealRatioLayout()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isRealRatioLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRightDirection(F)Z
    .locals 2

    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_1

    :cond_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRootLayer()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSlideAnimRunning()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onQueueIdle()V
    .locals 2

    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "onQueueIdle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startDeleteAnimation()V

    :cond_0
    return-void
.end method

.method private onSlide(I)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSkipHovering:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabPosition()I

    move-result v4

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_2

    mul-int/lit8 p1, p1, -0x1

    :cond_2
    if-gez p1, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTabCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_6

    add-int/lit8 v5, v4, 0x1

    :cond_3
    :goto_1
    const-string/jumbo v0, "GlComposeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSlide, current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " tgt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq v5, v0, :cond_c

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    if-nez v0, :cond_5

    new-instance v0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/GlSlideAnim;-><init>(F)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSwitchStateListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getIsSlideAnim()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSwitchStateListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mThis:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;

    move v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;->onPreSwitchState(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;IIII)Z

    move-result v7

    if-nez v7, :cond_7

    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "TABSWIPE_ onPreSwitchState is not valid!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    if-lez p1, :cond_3

    if-lez v4, :cond_3

    add-int/lit8 v5, v4, -0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIsSlideAnim(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPressedTime:J

    sub-int v6, v4, v5

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_8

    mul-int/lit8 v6, v6, -0x1

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->setDirection(I)V

    :cond_9
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convX(I)F

    move-result v8

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_a

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr v8, v0

    :cond_a
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getZ()F

    move-result v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->setSourceDistance(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getIsSlideAnim()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->hideNow()V

    :cond_b
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->hideNow()V

    :cond_c
    move v3, v9

    goto/16 :goto_0
.end method

.method private playHaptic(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$18;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$18;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private prePareChangeLevel(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F
    .locals 4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveToLast()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getScrollForIndex(I)F

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    sub-float v1, v0, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->hideObjects()V

    return v1
.end method

.method private rConvX(F)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthViewRatio:F

    div-float v0, p1, v0

    float-to-int v0, v0

    return v0
.end method

.method private refreshAccessibilityFocusNode()V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(Lcom/sec/android/gallery3d/glcore/GlObject;I)V

    :cond_0
    return-void
.end method

.method private requestFocusFirstActionBarObject()Z
    .locals 13

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "action_bar"

    const-string/jumbo v11, "id"

    const-string/jumbo v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    instance-of v8, v2, Landroid/widget/TextView;

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_5

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x11

    invoke-virtual {v1, v8}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    move-object v8, v1

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_4

    move-object v8, v1

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x11

    invoke-virtual {v5, v8}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private resetFlingEffect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeEffect:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->start()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;->onReleased(Z)V

    :cond_1
    return-void
.end method

.method private resetUpdateQueue()V
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateQueueWR:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateQueueRD:I

    return-void
.end method

.method private saveLastScrollRange()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsAlbumView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->isTimeViewStateConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPrevScroll:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPrevCenterObject:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setViewLastScrollRange(Lcom/sec/samsung/gallery/core/TabTagType;FI)V

    :cond_1
    return-void
.end method

.method private scaleAnimationForSelectionMode(Z)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mAutoAnimation:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->requestComplete()V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "scaleAnimationForSelectionMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUseScaleCtrl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mLevel:I

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private setCheckBoxVisibility()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mCheckBoxVisible:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseGroupSelect:Z

    if-eqz v3, :cond_2

    :goto_2
    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxVisible:Z

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private setThumbStrokeVisible(Z)V
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->isEnabledResStroke()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setBorderVisible(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private startDeleteAnimation()V
    .locals 2

    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "startDeleteAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->startAnimation()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "startDeleteAnimation canceled because mDeleteAnim is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "startDeleteAnimation canceled because mDeleteMode is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCheckMode()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setCheckBoxVisibility()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    return-void
.end method

.method private updateContentRange()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setRange(FF)V

    return-void
.end method

.method private updateFromQueue()V
    .locals 11

    const/16 v10, 0xb

    const/4 v4, 0x2

    const/4 v6, 0x0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateQueueWR:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateQueueRD:I

    const/4 v3, 0x0

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->IS_TABLET:Z

    if-eqz v7, :cond_5

    sget v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->MAX_UPDATE_UNIT:I

    :cond_0
    :goto_0
    if-eq v0, v5, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateQueue:[I

    aget v8, v8, v0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateQueueType:[I

    aget v9, v9, v0

    invoke-virtual {v7, v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->update(II)Z

    move-result v1

    const/16 v7, 0x1f3

    if-lt v0, v7, :cond_b

    move v0, v6

    :goto_1
    if-eqz v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    if-lt v3, v4, :cond_0

    :cond_2
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateQueueRD:I

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteMode:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v8, 0x18

    invoke-virtual {v7, v8, v6, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_3
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateQueueWR:I

    if-eq v0, v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v7, v10}, Lcom/sec/android/gallery3d/glcore/GlHandler;->hasMessage(I)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v7, v10, v6, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_4
    return-void

    :cond_5
    sget v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->MAX_UPDATE_UNIT:I

    div-int/lit8 v4, v7, 0x2

    goto :goto_0

    :cond_6
    sget-boolean v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_MIN_UPDATE_QUEUE_COUNT:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_7

    :goto_2
    goto :goto_0

    :cond_7
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateDefaultMax:I

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_9

    move v2, v4

    :goto_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPhotoLineCount:I

    const/4 v8, 0x6

    if-lt v7, v8, :cond_a

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v7, :cond_a

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateDefaultMax:I

    mul-int v4, v7, v2

    :goto_4
    goto :goto_0

    :cond_9
    const/4 v2, 0x4

    goto :goto_3

    :cond_a
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateDefaultMax:I

    goto :goto_4

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateNoItem()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "updateNoItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mNeedToShowNoItem:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlNoItemObject:Lcom/sec/samsung/gallery/glview/GlNoItemObject;

    if-nez v0, :cond_1

    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "mGlNoItemObject is null. Recreate the object"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/samsung/gallery/glview/GlNoItemObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/GlNoItemObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlNoItemObject:Lcom/sec/samsung/gallery/glview/GlNoItemObject;

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlNoItemObject:Lcom/sec/samsung/gallery/glview/GlNoItemObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlNoItemObject:Lcom/sec/samsung/gallery/glview/GlNoItemObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$35;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$35;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    invoke-virtual {p0, v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlNoItemObject:Lcom/sec/samsung/gallery/glview/GlNoItemObject;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$36;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$36;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    goto :goto_0
.end method

.method private updatePensSelectionBox()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isFromPenSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPenSelectionBox()Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->getSelectRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsDisplayedPenSelectionBox:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cpuBoost()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setExpansionMode(Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsDisplayedPenSelectionBox:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->requestStart(Landroid/graphics/Rect;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->changeBackgroundSize(Landroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method activeExtraObjectRange(ZZ)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTipCard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getTargetYPosition()F

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setTargetPos(FFF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTipCard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getCurrentYPosition()F

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setSourcePos(FFF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTipCard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getCurrentYPosition()F

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setPos(FFF)V

    goto :goto_0
.end method

.method addToUpdateQueue(II)V
    .locals 5

    const/16 v4, 0xb

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateQueue:[I

    monitor-enter v3

    :try_start_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateQueueWR:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateQueue:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateQueueType:[I

    aput p2, v1, v0

    const/16 v1, 0x1f3

    if-lt v0, v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUpdateQueueWR:I

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/glcore/GlHandler;->hasMessage(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v1, v4, v2, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method animateScale(FF)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->animateScale(FFZ)V

    return-void
.end method

.method public animateScale(FFZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setThumbStrokeVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleAnim:Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleAnim:Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->startScale(FFZ)V

    return-void
.end method

.method applyPreviousScroll(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;F)V
    .locals 4

    if-nez p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    sub-float v0, v1, p2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getValidScroll(F)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setScroll(FZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewRotateScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchRotateScrollListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewRotateScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchRotateScrollListener;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    neg-float v3, v0

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchRotateScrollListener;->onChangedY(F)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setInitMovement(F)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getScrollForIndex(I)F

    move-result v1

    goto :goto_0
.end method

.method public cancelDeleteAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    return-void
.end method

.method protected checkValidityForSecondaryClick()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method clearChannelNoti()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "channel_new_exist_count"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setVisibility(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshAccessibilityFocusNode()V

    instance-of v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mNotificationClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;->onClick()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetLayout()V

    return-void
.end method

.method public clearChildViewFocus(I)V
    .locals 0

    return-void
.end method

.method public clearExpandObjFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFocusExpandObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFocusExpandObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFocusExpandObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    :cond_0
    return-void
.end method

.method public clearFaceObjImage()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->clearFaceImage()V

    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    if-eqz v2, :cond_5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v2, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setRippleFocusVisible(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getDeleteObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getDeleteObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRippleFocusVisible(Z)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v4, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    :cond_3
    instance-of v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v2, :cond_4

    move-object v2, p0

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->clearAddButtonFocus()V

    move-object v2, p0

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->clearSuggestionCardFocus()V

    move-object v2, p0

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->clearCancelButtonFocus()V

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v3, -0x1

    iput v3, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v4, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    :cond_5
    return-void
.end method

.method clearFocusFromTimeView()V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOldFocusedItem:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateBorder(II)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOldFocusedTitle:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateTitleBorder(II)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOldFocusedLocation:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateLocationBorder(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setGenericMotionFocus(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setGenericMotionTitleFocus(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setGenericMotionLocationFocus(I)V

    :cond_0
    return-void
.end method

.method public clearTimeLineFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->getFocusedTimeLinObj()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->getFocusedTimeLinObj()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setFocusedTimeLinObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_0
    return-void
.end method

.method convX(F)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthViewRatio:F

    mul-float/2addr v0, p1

    return v0
.end method

.method convX(I)F
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthViewRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method convY(F)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightViewRatio:F

    mul-float/2addr v0, p1

    return v0
.end method

.method convY(I)F
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightViewRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public copyCurrentActive()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->copyCurrentActive(Z)V

    return-void
.end method

.method public copyCurrentActive(Z)V
    .locals 2

    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "copyCurrentActive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isDynamicLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isRealRatioLayout()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "GlDelete Copy current is canceled because current view is dynamic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->copyCurrentActive(Z)V

    goto :goto_0
.end method

.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlComposeViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsDisableCreateAccessibilityNodeInfo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlComposeViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createMoreAlbumObject()V
    .locals 0

    return-void
.end method

.method createMultiSelector(Z)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenMultiSelector;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelectorModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlPenMultiSelector;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelector;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelectorModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelector;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;)V

    goto :goto_0
.end method

.method public detach()V
    .locals 3

    const-string/jumbo v0, "GlComposeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TABSWIPE_ detach start : layer position, mPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getRootObject()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    :cond_0
    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "TABSWIPE_ detach end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public doScroll(F)V
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchViewAnimating:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setInitMovement(F)V

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setScroll(FZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    neg-float v3, p1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;->onFling(F)V

    goto :goto_0
.end method

.method fadeOutNoti(I)V
    .locals 7

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;

    const v4, 0x3f733333    # 0.95f

    const/4 v6, 0x0

    move-object v1, p0

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/android/gallery3d/glcore/GlObject;FFFF)V

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFadeOutAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$FadeOutAnimation;->start()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    goto :goto_0
.end method

.method flingProcessForEdge(ZF)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    cmpl-float v0, p2, v3

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mElastic:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->start()V

    :cond_0
    neg-float v0, p2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mElastic:F

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mElastic:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    neg-float v0, p2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mElastic:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeEffect:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;

    neg-float v1, p2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRawX:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeltaX:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->onPull(FF)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    neg-float v1, p2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRawX:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeltaX:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;->onPull(FF)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->isReady()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->stop()V

    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    invoke-interface {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;->onReleased(Z)V

    :cond_6
    neg-float v0, p2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMaxElastic:F

    neg-float v0, p2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mElastic:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeEffect:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;

    neg-float v1, p2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRawX:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeltaX:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->onPull(FF)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    neg-float v1, p2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRawX:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeltaX:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;->onPull(FF)V

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mElastic:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeEffect:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRawX:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeltaX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->onPull(FF)V

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRawX:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeltaX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;->onPull(FF)V

    :cond_8
    neg-float v0, p2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mElastic:F

    neg-float v0, p2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMaxElastic:F

    :cond_9
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->isReady()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->stop()V

    :cond_b
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    invoke-interface {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;->onReleased(Z)V

    goto/16 :goto_0
.end method

.method public getActionBarHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeightPixel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getChannelNotiObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    return-object v0
.end method

.method getDeleteMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteMode:Z

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDrawableCache:Lcom/sec/samsung/gallery/view/adapter/DrawableCache;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/adapter/DrawableCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method getEdgeEffect()Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeEffect:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;

    return-object v0
.end method

.method public getFaceItem()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->getFaceItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFaceTagObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFocusExpandObj()Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFocusExpandObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object v0
.end method

.method public getGoToTopBtn()Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    return-object v0
.end method

.method getGoToTopButton()Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    return-object v0
.end method

.method getGroupObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v1, :cond_0

    const-string/jumbo v1, "GlComposeView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getGroupObjectIndex : mPosCtrl == null, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupObject(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    move-result-object v0

    goto :goto_0
.end method

.method protected getIndexFromThumbObject(Lcom/sec/android/gallery3d/glcore/GlObject;)I
    .locals 1

    instance-of v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    goto :goto_0
.end method

.method getItem(I)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getLogExtra()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCategoryView()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CAZO"

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->loggingExtra:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->loggingExtra:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "EVZO"

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->loggingExtra:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "TIZS"

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->loggingExtra:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "ALZS"

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->loggingExtra:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "PSZS"

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->loggingExtra:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "getLogExtra() : no match viewBytFilterType!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getNewAlbumScrollTopMargin()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNoItemVI()Lcom/sec/samsung/gallery/NoItemVI;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mNoItemVI:Lcom/sec/samsung/gallery/NoItemVI;

    if-nez v0, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/NoItemVI;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v0}, Lcom/sec/samsung/gallery/NoItemVI;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mNoItemVI:Lcom/sec/samsung/gallery/NoItemVI;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mNoItemVI:Lcom/sec/samsung/gallery/NoItemVI;

    return-object v0
.end method

.method public getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getObject(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhotoCoverHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPhotoCoverObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosCtrlCom()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    return-object v0
.end method

.method public getPosCtrlCurrent()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    return v0
.end method

.method public getReachedBoundary()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->getReachedBoundary()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecycleBinTextObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootObject()Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScrollBar()Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    return-object v0
.end method

.method public getSearchMoveListener()Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerSearchViewMove:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    return-object v0
.end method

.method getSearchObj(II)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v0, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_0

    move-object v2, v4

    :goto_0
    return-object v2

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v2, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->checkPosIn(II)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_3
    move-object v2, v4

    goto :goto_0
.end method

.method getStatusExtra(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string/jumbo v1, "ALZS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ALZM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseListAlbumView:Z

    if-eqz v1, :cond_2

    const-string/jumbo v0, "List"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "Gridx3"

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseListAlbumView:Z

    if-eqz v1, :cond_3

    const-string/jumbo v0, "Gridx3"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "Gridx2"

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseListAlbumView:Z

    if-eqz v1, :cond_1

    const-string/jumbo v0, "Gridx2"

    goto :goto_0

    :cond_4
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "X8"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "X6"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "X4"

    goto :goto_0

    :pswitch_6
    if-eqz p1, :cond_5

    const-string/jumbo v1, "PSZS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, "X3"

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "X2"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getTabViewHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIncludeTabView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getTabViewHeightPixel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTimeLineWidth()F
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->getWidth(Z)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTipCardObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    return-object v0
.end method

.method public getTotalHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getTotalHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getViewConfig()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    return-object v0
.end method

.method public getVisibleMarginTop(Landroid/content/Context;)F
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginTop()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method handleLongClick(I)Z
    .locals 5

    const/4 v2, 0x0

    const-string/jumbo v3, "GlComposeView"

    const-string/jumbo v4, "handleLongClick"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "GlComposeView"

    const-string/jumbo v4, "mOnItemLongClickListener"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p1, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->playHaptic(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

    invoke-interface {v2, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;->onItemLongClick(II)Z

    move-result v2

    :cond_1
    return v2
.end method

.method handleLongClick(III)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->handleLongClick(I)Z

    move-result v0

    return v0
.end method

.method public hideNoItem()V
    .locals 2

    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "hideNoItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->hideNoItemVI()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlNoItemObject:Lcom/sec/samsung/gallery/glview/GlNoItemObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlNoItemObject:Lcom/sec/samsung/gallery/glview/GlNoItemObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_1
    return-void
.end method

.method public hideNoItemVI()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getNoItemVI()Lcom/sec/samsung/gallery/NoItemVI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/NoItemVI;->hideNoItemVI()V

    return-void
.end method

.method public initialize(ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mInitialCode:I

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mInitialItem:Lcom/sec/android/gallery3d/data/MediaItem;

    and-int/lit8 v1, p3, 0xf

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseLayoutChange:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUseScaleCtrl:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseEnlargeAnim:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUseEnLargeAnimation:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPosCtrl:[Ljava/lang/Object;

    array-length v1, v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCount:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMinLevel:I

    if-ne v1, v4, :cond_3

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMinLevel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMaxLevel:I

    if-ne v1, v4, :cond_4

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCount:I

    add-int/lit8 v1, v1, -0x1

    :goto_1
    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMaxLevel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mInitialLevel:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMinLevel:I

    if-ge v1, v4, :cond_5

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMinLevel:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    :cond_0
    :goto_2
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChangeLevel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlArray:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCount:I

    new-array v1, v1, [Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlArray:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    :cond_1
    and-int/lit8 v1, p3, 0x30

    if-lez v1, :cond_6

    move v0, v3

    :goto_3
    if-eqz v0, :cond_8

    new-instance v4, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    and-int/lit8 v1, p3, 0x20

    if-lez v1, :cond_7

    move v1, v3

    :goto_4
    invoke-direct {v4, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFromDetailAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    :cond_2
    :goto_5
    and-int/lit16 v1, p3, 0x100

    if-lez v1, :cond_9

    move v1, v3

    :goto_6
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsEasyMode:Z

    and-int/lit8 v1, p3, 0x40

    if-lez v1, :cond_a

    :goto_7
    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUseHovering:I

    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMinLevel:I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMaxLevel:I

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMaxLevel:I

    if-le v1, v4, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMaxLevel:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->enabledViewSwitchVI()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->readyPropagateAnim()V

    goto :goto_5

    :cond_9
    move v1, v2

    goto :goto_6

    :cond_a
    and-int/lit16 v1, p3, 0x80

    if-lez v1, :cond_b

    const/4 v3, 0x2

    goto :goto_7

    :cond_b
    move v3, v2

    goto :goto_7
.end method

.method interpolateVisibleExtraObjectPosition(F)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setEnableAnim(ZZZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->applyTransform(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setEnableAnim(ZZZZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->applyTransform(F)V

    :cond_1
    return-void
.end method

.method public isAlreadyScrolledBottom()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlreadyScrolledTop()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCoverScrollUp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isDragAnimRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDynamicLayout()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isDynamicLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isListAlbumLayout()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isListAlbumViewSwipeAnimRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMultiSelectMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isActivated()Z

    move-result v0

    :cond_0
    return v0
.end method

.method isOnScaling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    return v0
.end method

.method public isScaleAnimRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleAnim:Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleAnim:Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShrinkAnimActive()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToScrollAtGroup(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->focusedTimeItem(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method protected onCreate(II)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->resetLayout()V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthViewRatio:F

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightSpace:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightViewRatio:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getWidth()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->setDimensionUtil(FI)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRootObject;

    new-instance v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    invoke-direct {v0, p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRootObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeRootObject$SetPosListener;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setPos(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->checkInitTipCardObj()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->checkInitSearchFaceObj()V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPosCtrl(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mThis:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->initControlCommon(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->createMoreAlbumObject()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->initEnv(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->initComponents()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->setReferCtrl(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetNavigationBarPosition(Z)V

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-nez v0, :cond_b

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetAttributes(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->rConvX(F)I

    move-result v3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isIsValidStateForPlayIcon()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setItemWidthForPlayIcon(IZ)V

    :cond_2
    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPropagatedAnim:Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setCheckBoxVisibility()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->hideNow()V

    :cond_3
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUseScaleCtrl:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    new-instance v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;-><init>()V

    iput-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    :cond_4
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUseEnLargeAnimation:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mTypeViewSwitchAnim:I

    if-ne v1, v0, :cond_c

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mToDetailAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScreenLocked:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->lockRefresh()V

    :cond_6
    new-instance v0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setBoundaryAnimationListener(Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleAnim:Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_FLUID_SCROLL:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseQuickScroll:Z

    if-eqz v0, :cond_7

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootScaleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;

    :cond_7
    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeEffect:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseGoToTopButton:Z

    if-eqz v0, :cond_8

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    :cond_8
    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    new-instance v0, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlComposeViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlComposeViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlComposeViewGroupAndItemAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->setAccessibilityNodeInfoListener(Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIsFlingAnim(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTimeLineSplit:Z

    if-eqz v0, :cond_9

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    :cond_9
    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_TAB_UI:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mNeedToShowNoItem:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->showNoItem()V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mNeedToShowNoItem:Z

    :cond_a
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginTop()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setHoverScrollFlexibleHeightMargin(I)V

    return-void

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :cond_c
    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getLogExtraForStatus()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getLogExtraForStatus()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChangeLevel:I

    invoke-virtual {p0, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getStatusExtra(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->clean()V

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_FLUID_SCROLL:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_FAST_SCROLL:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseQuickScroll:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->clean()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->destroy()V

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    if-eqz v0, :cond_3

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->destroy()V

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    :cond_4
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cancelDeleteAnimation()V

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v0, :cond_5

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeAllMessage()V

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_TAB_UI:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->destroyNoItem()V

    :cond_6
    return-void
.end method

.method public onFlingEnd(F)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIsFlingAnim(Z)V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnscroll:Z

    invoke-virtual {p0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setScroll(FZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->isQuickScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->hide()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->hide(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsCardTypeView:Z

    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setThumbStrokeVisible(Z)V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsDisableCreateAccessibilityNodeInfo:Z

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchViewAnimating:Z

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->startDecodeThread()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetFlingEffect()V

    goto :goto_0
.end method

.method public onFlingProcess(FF)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchViewAnimating:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isSlideAnimRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getIsSlideAnim()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    sget-boolean v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_TAB_UI:Z

    invoke-virtual {v3, p1, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->handleFlingProcess(FFZ)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseQuickScroll:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_FAST_SCROLL:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateQuickPopupText()V

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->handleFlingProcess(F)V

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v3, v4, :cond_7

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    neg-float v5, p1

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;->onFling(F)V

    :cond_4
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnscroll:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->expandExtraRange()V

    invoke-virtual {p0, p1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setScroll(FZ)V

    invoke-virtual {p0, v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->flingProcessForEdge(ZF)V

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsMultiSelectScroll:Z

    if-eqz v3, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->flingProcessForMultiSelect(F)V

    :cond_5
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsCardTypeView:Z

    if-nez v3, :cond_6

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mElastic:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setThumbStrokeVisible(Z)V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsDisableCreateAccessibilityNodeInfo:Z

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    neg-float v2, p1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPreScrollDeltaDelta:I

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mAlbumList:Z

    if-eqz v10, :cond_2

    :cond_0
    const/4 v9, 0x0

    :cond_1
    :goto_0
    return v9

    :cond_2
    const/16 v10, 0xa8

    if-eq p1, v10, :cond_3

    const/16 v10, 0xa9

    if-ne p1, v10, :cond_5

    :cond_3
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isScreenLocked()Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_4
    const/4 v9, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const/16 v10, 0x42

    if-eq p1, v10, :cond_7

    const/16 v10, 0x17

    if-ne p1, v10, :cond_9

    :cond_7
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    if-nez v10, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    :cond_8
    const/4 v9, 0x1

    goto :goto_0

    :cond_9
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto :goto_0

    :sswitch_0
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_a
    sget-boolean v10, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->moveTo(I)Z

    move-result v9

    :goto_2
    if-eqz v9, :cond_1

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;I)V

    goto :goto_0

    :cond_b
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->moveTo(I)Z

    move-result v9

    goto :goto_2

    :sswitch_1
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_c
    sget-boolean v10, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->moveTo(I)Z

    move-result v7

    :goto_3
    if-eqz v7, :cond_d

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;I)V

    :cond_d
    move v9, v7

    goto :goto_0

    :cond_e
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->moveTo(I)Z

    move-result v7

    goto :goto_3

    :sswitch_2
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_f
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v10, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/glcore/GlRootView;->isFocusable()Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;I)V

    :cond_10
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->moveTo(I)Z

    move-result v9

    goto/16 :goto_0

    :sswitch_3
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_11
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->moveTo(I)Z

    move-result v8

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isFocusChanged()Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;I)V

    :cond_12
    move v9, v8

    goto/16 :goto_0

    :sswitch_4
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_13
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->moveTo(I)Z

    move-result v10

    if-nez v10, :cond_14

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->requestFocusFirstActionBarObject()Z

    move-result v10

    if-eqz v10, :cond_15

    :cond_14
    const/4 v10, 0x1

    :goto_4
    move v9, v10

    goto/16 :goto_0

    :cond_15
    const/4 v10, 0x0

    goto :goto_4

    :sswitch_5
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v10, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v10

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v10, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_0

    :sswitch_6
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

    if-eqz v10, :cond_1c

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v10

    if-nez v10, :cond_1c

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v10}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v10}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v6

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    if-eqz v10, :cond_17

    if-nez v6, :cond_18

    :cond_17
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_18
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v10, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v10, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    if-eqz v5, :cond_19

    if-nez v4, :cond_1a

    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_1a
    instance-of v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    if-eqz v10, :cond_1b

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    :goto_5
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

    const/4 v11, 0x0

    invoke-interface {v10, p1, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;->onKeyEvent(II)Z

    move-result v9

    goto/16 :goto_0

    :cond_1b
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10, v5, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_5

    :cond_1c
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

    if-eqz v10, :cond_1d

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

    const/4 v11, 0x0

    invoke-interface {v10, p1, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;->onKeyEvent(II)Z

    move-result v9

    goto/16 :goto_0

    :cond_1d
    const/4 v9, 0x0

    goto/16 :goto_0

    :sswitch_7
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v10, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v10

    if-eqz v10, :cond_1e

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v10, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCtrlPressed(Z)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_1e
    const/4 v9, 0x0

    goto/16 :goto_0

    :sswitch_8
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightSpace:F

    sub-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargTop:F

    add-float/2addr v10, v11

    invoke-direct {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->handlePageUpDownEvent(F)Z

    move-result v9

    goto/16 :goto_0

    :sswitch_9
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightSpace:F

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargTop:F

    sub-float/2addr v10, v11

    invoke-direct {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->handlePageUpDownEvent(F)Z

    move-result v9

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_4
        0x43 -> :sswitch_5
        0x5c -> :sswitch_8
        0x5d -> :sswitch_9
        0x70 -> :sswitch_6
        0x71 -> :sswitch_7
    .end sparse-switch
.end method

.method protected onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xa8

    if-eq p1, v5, :cond_0

    const/16 v5, 0xa9

    if-eq p1, v5, :cond_0

    if-ne p1, v7, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isScreenLocked()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    if-eqz v5, :cond_4

    if-nez v2, :cond_5

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

    const/16 v6, 0x80

    invoke-interface {v5, p1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;->onKeyEvent(II)Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    const/4 v6, -0x1

    invoke-interface {v5, v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;->onItemClick(II)Z

    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v5, v7, v6, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsCategoryView:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    invoke-interface {v5, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;->onItemClick(II)Z

    goto :goto_1

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 12

    const/4 v9, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x4

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    const/16 v7, 0xa8

    if-eq p1, v7, :cond_0

    const/16 v7, 0xa9

    if-eq p1, v7, :cond_0

    and-int/lit16 v7, v2, 0x100

    if-eqz v7, :cond_2

    :cond_0
    move v6, v8

    :cond_1
    :goto_0
    return v6

    :cond_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isScreenLocked()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    move v6, v8

    goto :goto_0

    :cond_4
    const/16 v7, 0x42

    if-eq p1, v7, :cond_5

    const/16 v7, 0x17

    if-ne p1, v7, :cond_13

    :cond_5
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ltz v7, :cond_b

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isLocationFocused:Z

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnLocationItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLocationItemClickListener;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnLocationItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLocationItemClickListener;

    invoke-interface {v7, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLocationItemClickListener;->onLocationItemClick(I)Z

    :cond_6
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    if-nez v5, :cond_7

    move v6, v8

    goto :goto_0

    :cond_7
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxVisible:Z

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    if-eqz v7, :cond_8

    move v6, v8

    goto :goto_0

    :cond_8
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-interface {v7, v9, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->prepareAnimation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v7}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isStartAnimationNow()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startEnlargeAnimation()V

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    invoke-interface {v7, v3, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;->onItemClick(II)Z

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v7, v10, v9, v8, v8}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    invoke-interface {v7, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;->onItemClick(II)Z

    goto :goto_1

    :cond_b
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    if-ne v7, v6, :cond_c

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mNotificationClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;

    invoke-interface {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;->onClick()V

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    if-ne v7, v9, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->clearChannelNoti()V

    goto/16 :goto_0

    :cond_d
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTipCard:Z

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getVisibility()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mFocusedBtnType:I

    if-ne v7, v9, :cond_e

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->processCancelClick()Z

    goto/16 :goto_0

    :cond_e
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mFocusedBtnType:I

    if-ne v7, v10, :cond_f

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->processLaterBtnClick()Z

    goto/16 :goto_0

    :cond_f
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mFocusedBtnType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->processDoneClick()Z

    goto/16 :goto_0

    :cond_10
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSearchFaceObj:Z

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->getVisibility()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->getFocusBorderVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->processClick()Z

    goto/16 :goto_0

    :cond_11
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTimeLineSplit:Z

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    if-ltz v7, :cond_12

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isScaleAnimRunning()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->moveToScrollAtGroup(I)V

    goto/16 :goto_0

    :cond_12
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ne v7, v11, :cond_1

    if-eqz v0, :cond_1

    instance-of v7, v0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v7, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->moveTo(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_13
    const/16 v7, 0x71

    if-ne p1, v7, :cond_14

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCtrlPressed(Z)V

    goto/16 :goto_0

    :cond_14
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto/16 :goto_0
.end method

.method protected onMouseWheelScaled(ZII)Z
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isSlideAnimRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleAnim:Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUseScaleCtrl:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->checkIfIncorrectMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseLayoutChange:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    invoke-virtual {v2, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->prepareScale(II)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_2

    const v0, 0x40266666    # 2.6f

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    invoke-static {v2, v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->animateScale(FF)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const v0, 0x3e4ccccc    # 0.19999999f

    goto :goto_1
.end method

.method protected onMoved(II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_TAB_UI:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabPosition()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isRootLayer()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchViewAnimating:Z

    if-nez v2, :cond_0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeltaX:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isScreenLocked()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isReady()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->getLastRatio()F

    move-result v2

    const v3, 0x3f266666    # 0.65f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setExpansionMode(Z)V

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x2d

    if-le v2, v3, :cond_8

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClickable:Z

    :cond_8
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_TAB_UI:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIncludeTabView:Z

    if-eqz v2, :cond_b

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->calcSlideScroll(II)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getHiddenAlbumStatus()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onSlide(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_b
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getIsSlideAnim()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    neg-int v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setMovement(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;->onMoved()V

    goto/16 :goto_0
.end method

.method protected onPressed(II)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->cpuScrollBoostStart(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->clearFocus()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchViewAnimating:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRawX:I

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getHoverCtrl()Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->exitFromHoverView(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isScreenLocked()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    if-eqz v0, :cond_5

    :cond_4
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isReady()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->getLastRatio()F

    move-result v0

    const v3, 0x3f266666    # 0.65f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_9

    move v0, v2

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->stop()V

    :cond_a
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    move v0, v1

    goto :goto_0

    :cond_b
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClicked:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClickable:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseReOrderAlbums:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSocialCloudViewMode()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isAlbumPickerMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAlbumReorderable:Z

    :cond_c
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->initScrollBar()V

    move v0, v1

    goto/16 :goto_0
.end method

.method protected onReleased(IIII)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->cpuScrollBoostRelease(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchViewAnimating:Z

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchViewAnimating:Z

    move v1, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isScreenLocked()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClicked:Z

    if-eqz v1, :cond_3

    :cond_2
    move v1, v5

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isReady()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move v1, v4

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->getLastRatio()F

    move-result v1

    const v6, 0x3f266666    # 0.65f

    cmpg-float v1, v1, v6

    if-gez v1, :cond_6

    move v1, v4

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_TAB_UI:Z

    if-eqz v1, :cond_8

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsAngleCalculated:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getIsSlideAnim()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isRootLayer()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPressedTime:J

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    cmp-long v1, v6, v8

    if-gez v1, :cond_7

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v4, 0x96

    if-le v1, v4, :cond_7

    const/4 v0, 0x1

    :cond_7
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->isRunning()Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "GlComposeView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TABSWIPE_ Slide Animation is started : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabPosition()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->start(Z)V

    :cond_8
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v1, :cond_9

    if-nez v0, :cond_9

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIsFlingAnim(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    neg-int v4, p4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->startFling(F)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetFlingEffect()V

    :cond_9
    move v1, v5

    goto/16 :goto_0
.end method

.method protected onScale(Landroid/view/ScaleGestureDetector;)V
    .locals 14

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isSlideAnimRunning()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUseScaleCtrl:Z

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->checkIfIncorrectMode()Z

    move-result v10

    if-nez v10, :cond_0

    iget-boolean v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseLayoutChange:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isActivated()Z

    move-result v10

    if-nez v10, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v8

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-boolean v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActive:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isRunning()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v10, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->setScale(F)V

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->isQuickScrollEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    :cond_4
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPropagatedAnim:Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPropagatedAnim:Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->isRunning()Z

    move-result v10

    if-nez v10, :cond_0

    :cond_5
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v11, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FAVORITES:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v10, v11, :cond_6

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->isTimeViewStateConfig()Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_a

    :cond_7
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v10}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isIdle()Z

    move-result v10

    if-eqz v10, :cond_9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v8, v10

    if-lez v10, :cond_a

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    float-to-int v11, v1

    float-to-int v12, v2

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getFocusedObject(IIZ)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getObjectRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v3, v10, v11

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v4, v10, v11

    new-instance v6, Landroid/graphics/Rect;

    sub-float v10, v1, v3

    float-to-int v10, v10

    sub-float v11, v2, v4

    float-to-int v11, v11

    add-float v12, v1, v3

    float-to-int v12, v12

    add-float v13, v2, v4

    float-to-int v13, v13

    invoke-direct {v6, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/4 v12, 0x0

    invoke-interface {v10, v11, v5, v12}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->prepareAnimation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)Z

    :cond_8
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;->checkNotDisplayDecoViewOnScale()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setDecoviewsVisibility(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v10, v8}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->setScale(F)I

    move-result v7

    if-eqz v7, :cond_0

    :cond_a
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setThumbStrokeVisible(Z)V

    :try_start_0
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mScale:F

    mul-float/2addr v11, v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->doScale(FFZ)Z

    move-result v10

    if-nez v10, :cond_b

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v10, "GlComposeView"

    const-string/jumbo v11, "ArrayIndexOutOfBoundsException while doScale()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "GlComposeView"

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const/4 v10, 0x0

    goto :goto_1
.end method

.method protected onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isSlideAnimRunning()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->isQuickScrollEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClicked:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClickable:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAlbumReorderable:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetFlingEffect()V

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsReorderFinished:Z

    if-nez v4, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getHoverCtrl()Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setEnabled(Z)V

    :cond_4
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUseScaleCtrl:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->checkIfIncorrectMode()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_7
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPropagatedAnim:Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPropagatedAnim:Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_8

    move v2, v3

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    const-string/jumbo v4, "GlComposeView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ScaleBegin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleAnim:Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->isRunning()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleAnim:Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->isRunning()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    float-to-int v5, v0

    float-to-int v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->prepareScale(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mReorderIconPressed:Z

    move v2, v3

    goto/16 :goto_0
.end method

.method protected onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isSlideAnimRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setEnabled(Z)V

    :cond_1
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->stopScaleAnimation()V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateDecorView()V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mUseScaleCtrl:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->checkIfIncorrectMode()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActive:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isRunning()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->requestComplete()V

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isReady()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isActive()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->requestComplete()V

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    :cond_8
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    iget v0, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->mScale:F

    const v2, 0x3f947ae1    # 1.16f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_9

    const v1, 0x40266666    # 2.6f

    :goto_1
    const-string/jumbo v2, "GlComposeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ScaleEnd fromScale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", toScale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", cur = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    invoke-static {v2, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;FF)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->animateScale(FF)V

    goto/16 :goto_0

    :cond_9
    const v2, 0x3f6b851f    # 0.92f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_a

    const v1, 0x3e4ccccc    # 0.19999999f

    goto :goto_1

    :cond_a
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_b
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_c

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->stopScaleAnimation()V

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateDecorView()V

    goto/16 :goto_0
.end method

.method protected onScrolled(IIII)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onPressed(II)Z

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onMoved(II)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onReleased(IIII)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method protected onSecondaryClicked(II)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->checkValidityForSecondaryClick()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEmptySpaceClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$EmptySpaceClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEmptySpaceClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$EmptySpaceClickListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$EmptySpaceClickListener;->emptySpaceClicked()V

    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->showContextMenu(FF)V

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v0, 0x3f733333    # 0.95f

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGravityData:F

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGravityData:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v4, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    return-void
.end method

.method protected onSurfaceChanged(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->onSurfaceChanged(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cancelDeleteAnimation()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->pause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    return-void
.end method

.method public performAction(II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlComposeViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlComposeViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->performAction(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method playHaptic()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$17;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$17;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public prepareScale(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    invoke-virtual {v0, v1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->prepareScale(II)Z

    :cond_0
    return-void
.end method

.method processGoToBottom(Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->startGoToBottom(FF)V

    :cond_1
    return-void
.end method

.method readyPropagateAnim()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPropagateAnimState:I

    return-void
.end method

.method public refreshCheckState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "Don\'t send a message for updating the check mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateCheckMode()V

    goto :goto_0
.end method

.method public refreshGroupObjects()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    return-void
.end method

.method public refreshItem(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto :goto_0
.end method

.method public refreshLayout()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    return-void
.end method

.method public refreshNoItemVI()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->hideNoItemVI()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSearchView:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->showNoItem()V

    :cond_0
    return-void
.end method

.method public refreshSelectionBarState(Z)V
    .locals 8

    const/16 v2, 0xc

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const-wide/16 v6, 0x12c

    move v4, v3

    move v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v0, v2, v3, v3, v3}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto :goto_0
.end method

.method public refreshTipCard()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->checkInitTipCardObj()V

    :cond_0
    return-void
.end method

.method protected registerObjectSecondaryClickListener()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$38;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$38;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlSecondaryClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;

    return-void
.end method

.method public removeBorderFromSearchFaceObj()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->drawFocusBorder(Z)V

    :cond_0
    return-void
.end method

.method public removeBorderFromTipCardObjs()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->removeTTSFocus()V

    :cond_0
    return-void
.end method

.method public resetGroupRange()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetGrpRange()V

    :cond_0
    return-void
.end method

.method resetLayout()V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->resetLayout()V

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    if-eqz v2, :cond_0

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->cancel()V

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "GlComposeView"

    const-string/jumbo v6, "ShrinkAnimation is stopped by layoutChange"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v2, v5, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->requestCompleteForward(ZZ)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_3

    const-string/jumbo v2, "GlComposeView"

    const-string/jumbo v6, "TransAnimation for the root object is stopped by layoutChange"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->stopTransAnim(Z)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getTopObject()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getScrollForIndex(I)F

    move-result v2

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    sub-float v1, v2, v6

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getHeight()I

    move-result v2

    if-nez v2, :cond_18

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    invoke-virtual {v2, v6, v7}, Lcom/sec/samsung/gallery/util/DimensionUtil;->setDimensionUtil(FI)V

    :goto_1
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthViewRatio:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightSpace:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightViewRatio:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-nez v2, :cond_19

    move v2, v4

    :goto_2
    invoke-virtual {v6, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetAttributes(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->rConvX(F)I

    move-result v6

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isIsValidStateForPlayIcon()Z

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setItemWidthForPlayIcon(IZ)V

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetPosition()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1a

    move v2, v4

    :goto_3
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setEnableHoverScroll(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsDisplayedPenSelectionBox:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->applyPreviousScroll(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;F)V

    :cond_8
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {v2, v3, v6}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setRange(FF)V

    :cond_9
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->exitFromHoverView(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHoverCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->initAttribute()V

    :cond_a
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->initAttribute()V

    :cond_b
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->exitFromPenSelectionView()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->initAttribute()V

    :cond_c
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetScrollBar()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->hideNow()V

    :cond_d
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCheckMode()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    :cond_e
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->resetAttributes()V

    :cond_f
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v2, :cond_10

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setVisibility(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->resetLayout(Z)V

    :cond_10
    :goto_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginTop()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setHoverScrollFlexibleHeightMargin(I)V

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_TAB_UI:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->setViewWidth(F)V

    :cond_11
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_TAB_UI:Z

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlNoItemObject:Lcom/sec/samsung/gallery/glview/GlNoItemObject;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlNoItemObject:Lcom/sec/samsung/gallery/glview/GlNoItemObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->resetAttributes()V

    :cond_12
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->resetLayout()V

    :cond_13
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->resetLayout()V

    :cond_14
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->resetLayout()V

    :cond_15
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v2, :cond_16

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->resetLayout()V

    :cond_16
    return-void

    :cond_17
    move v2, v3

    goto/16 :goto_0

    :cond_18
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getWidth()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/sec/samsung/gallery/util/DimensionUtil;->setDimensionUtil(FI)V

    goto/16 :goto_1

    :cond_19
    move v2, v5

    goto/16 :goto_2

    :cond_1a
    move v2, v5

    goto/16 :goto_3

    :cond_1b
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->setVisibility(Z)V

    goto :goto_4
.end method

.method public resetNavigationBarPosition(Z)V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->BOTTOM:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetNavigationBarPosition(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetLayout()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshNoItemVI()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateListAlbumDivider()V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->BOTTOM:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    goto :goto_0
.end method

.method resetScroll()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetUpdateQueue()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setInitMovement(F)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setScroll(FZ)V

    return-void
.end method

.method resetScrollBar()V
    .locals 8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseQuickScroll:Z

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginTop()F

    move-result v5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setRightPadding(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthViewRatio:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightViewRatio:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightSpace:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginBtm()F

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->reset(FFFFFF)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateQuickPopupText()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b035e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convX(I)F

    move-result v7

    goto :goto_1
.end method

.method resetSuggestionObject()V
    .locals 0

    return-void
.end method

.method public runQueueIdleTimer()V
    .locals 8

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v2, 0x18

    const-wide/16 v6, 0x1f4

    move v4, v3

    move v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    :cond_0
    return-void
.end method

.method public saveCurrentScrollInfo()V
    .locals 7

    const/4 v6, -0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iput v5, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPrevScroll:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iput v6, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPrevCenterObject:I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getFocusedObject(IIZ)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iput v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPrevScroll:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iput v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPrevCenterObject:I

    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->saveLastScrollRange()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iput v5, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPrevScroll:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iput v6, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPrevCenterObject:I

    goto :goto_1
.end method

.method public scaleAnimationForSelectionMode()V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getFocusedObject(II)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode(Z)Z

    goto :goto_0
.end method

.method public scrollToBottom()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->initScrollBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x26

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    return-void
.end method

.method public scrollToTop()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->initScrollBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    return-void
.end method

.method public setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V
    .locals 3

    const-string/jumbo v0, "GlComposeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAdapter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;)V

    :cond_0
    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemW:F

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->rConvX(F)I

    move-result v1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isIsValidStateForPlayIcon()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setItemWidthForPlayIcon(IZ)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;)V

    goto :goto_0
.end method

.method setAlbumTitleVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setClickEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClickEnabled:Z

    return-void
.end method

.method setDeleteMode(Z)V
    .locals 3

    const-string/jumbo v0, "GlComposeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeleteMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteMode:Z

    return-void
.end method

.method public setDexThumbnailClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$DexThumbnailClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDexThumbnailClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$DexThumbnailClickListener;

    return-void
.end method

.method public setDualScreenFocus(I)V
    .locals 0

    sput p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDualScreenFocus:I

    return-void
.end method

.method public setEdgeMarginBottom(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iput p1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mEdgeMarginBottom:I

    return-void
.end method

.method public setEmptySpaceClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$EmptySpaceClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEmptySpaceClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$EmptySpaceClickListener;

    return-void
.end method

.method setExpandValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSplitViewExpanded:Z

    return-void
.end method

.method public setExtraMargin(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iput p1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mExtraMarginLeft:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iput p2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mExtraMarginRight:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iput p3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mExtraMarginTop:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iput p4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mExtraMarginBottom:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    return-void
.end method

.method public setFaceObjName(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setNameText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v1, v2, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setFaceItem(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_0
    return-void
.end method

.method public setLayoutLevel(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getFocusedObject(IIZ)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->prePareChangeLevel(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v1

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-direct {p0, p1, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->changeLevel(IIF)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetLayout()V

    :cond_0
    return-void
.end method

.method public setMode(IILjava/lang/Object;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;->setMode(IILjava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onSetMode(IILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v1, :cond_2

    if-eq v0, v4, :cond_2

    if-eq p1, v4, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateCheckMode()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne p1, v2, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetAttributes(Z)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-nez v4, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetAttributes(Z)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method public setObjectListeners(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V
    .locals 4

    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsCategoryView:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerPenSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPenSelectListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    if-nez p2, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    :goto_1
    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    if-nez p2, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlSecondaryClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;

    :goto_2
    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSecondaryClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;)V

    if-nez p2, :cond_7

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbLongClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    :goto_3
    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setLongClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbMultiSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setMultiSelectListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerDrag:Lcom/sec/android/gallery3d/glcore/GlObject$GlDragListener;

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDragListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlDragListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerHover:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setHoverListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsCategoryView:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerPenSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPenSelectListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;)V

    :cond_2
    if-nez p2, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerExpansionClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsCategoryView:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerPenSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPenSelectListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;)V

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerExpGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbMultiSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setMultiSelectListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;)V

    move-object v3, p1

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbMultiSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setMultiSelectListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbLongClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setLongClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsCategoryView:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerPenSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPenSelectListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;)V

    :cond_4
    check-cast p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerReorderIconMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerReorderGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerGrpCheckBoxClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    goto/16 :goto_1

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_7
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerGrpCheckBoxLongClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    goto/16 :goto_3
.end method

.method public setPos(II)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "GlComposeView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TABSWIPE_ setPos start. set layer position, src/tgt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    if-eq p1, p2, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsFromTabSlide:Z

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getRootObject()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    if-le p2, p1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    invoke-virtual {v1, v2, v4, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    :goto_0
    const-string/jumbo v1, "GlComposeView"

    const-string/jumbo v2, "TABSWIPE_ setPos end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    neg-float v2, v2

    invoke-virtual {v1, v2, v4, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/high16 v2, -0x3bb80000    # -800.0f

    invoke-virtual {v1, v4, v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto :goto_0
.end method

.method setReorderIconVisibility(Z)V
    .locals 0

    return-void
.end method

.method setScroll(FZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setScroll(FZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getFirstFitGroupIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->focusedTimeItem(I)V

    :cond_0
    return-void
.end method

.method public setSearchViewAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchViewAnimating:Z

    return-void
.end method

.method public setSkipHovering(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSkipHovering:Z

    return-void
.end method

.method setSwitchViewState(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSwitchViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSwitchViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;->onViewSwitchStart()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSwitchViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;->onViewSwitchDone()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSwitchViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;->onViewSwitchCancel()V

    goto :goto_0
.end method

.method public setVisibleRangeForExtraObject()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setVisibleRange()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setVisibleRange()V

    :cond_1
    return-void
.end method

.method public showContextMenu(FF)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShowContextMenuInterface:Lcom/sec/samsung/gallery/lib/libinterface/ShowContextMenuInterface;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-interface {v1, v0, p1, p2}, Lcom/sec/samsung/gallery/lib/libinterface/ShowContextMenuInterface;->showContextMenu(Landroid/view/View;FF)V

    return-void
.end method

.method public showNoItem()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "GlComposeView"

    const-string/jumbo v2, "showNoItem"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    :cond_0
    move-object v0, p0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$34;

    invoke-direct {v2, p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$34;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v2, 0x21

    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mNeedToShowNoItem:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    goto :goto_0
.end method

.method public startDetailViewImmediate(I)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->prepareAnimation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isStartAnimationNow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startEnlargeAnimation()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isAnimForword()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method startEnlargeAnimation()V
    .locals 2

    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "startEnlargeAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mToDetailAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;

    invoke-interface {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;->onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->startAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setThumbStrokeVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isRealRatioLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObjs(Landroid/util/SparseArray;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObjs(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGoToTopBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->hideNow()V

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isAutoAnimation()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->hideNow()V

    :cond_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    goto/16 :goto_0
.end method

.method public startListAlbumViewSwipeAnimation(Z)V
    .locals 0

    return-void
.end method

.method startShrinkAnimation()V
    .locals 2

    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "startShrinkAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveGroup()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObjs(Landroid/util/SparseArray;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V

    :cond_3
    return-void
.end method

.method startTransferUpDown(F)V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbMultiSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;->onMultiSelectRelease(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->resetTransformAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getZ()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getY()F

    move-result v0

    add-float v7, v0, p1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getZ()F

    move-result v2

    invoke-virtual {v0, v1, v7, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnablePosAnim(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$27;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$27;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {v6, v8}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    :cond_1
    return-void
.end method

.method public startTransferUpDown(I)V
    .locals 12

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbMultiSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    invoke-interface {v0, v11, v9, v9}, Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;->onMultiSelectRelease(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->resetTransformAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getX()F

    move-result v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getY()F

    move-result v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getZ()F

    move-result v8

    invoke-virtual {v0, v1, v6, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getY()F

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convY(I)F

    move-result v6

    add-float/2addr v1, v6

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getY()F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convY(I)F

    move-result v1

    add-float v7, v0, v1

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getX()F

    move-result v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getZ()F

    move-result v6

    invoke-virtual {v0, v1, v7, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnablePosAnim(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$28;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$28;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {v6, v8}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMultiSelector:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbMultiSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    invoke-interface {v0, v11, v9, v9}, Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;->onMultiSelectRelease(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->resetTransformAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->getX()F

    move-result v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->getY()F

    move-result v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->getZ()F

    move-result v8

    invoke-virtual {v0, v1, v6, v8}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setSourcePos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->getX()F

    move-result v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->getY()F

    move-result v6

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convY(I)F

    move-result v8

    add-float/2addr v6, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->getZ()F

    move-result v8

    invoke-virtual {v0, v1, v6, v8}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setTargetPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setEnablePosAnim(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$29;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$29;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    new-instance v6, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {v6, v8}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    sub-float v7, v0, v1

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "startTransferUpDown(). mRootObj is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "startTransferUpDown(). mTimeLineSplit is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public updateAlbumBorder(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    return-void
.end method

.method public updateBorder(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_1
    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOldFocusedItem:I

    goto :goto_0
.end method

.method public updateChannelViewHLPlayIconBorder()V
    .locals 0

    return-void
.end method

.method public updateDualScreenFocus(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    return-void
.end method

.method updateListAlbumDivider()V
    .locals 0

    return-void
.end method

.method public updateLocationBorder(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOldFocusedLocation:I

    return-void
.end method

.method public updateNotificationBorder()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->drawTotalFocusBorder(Z)V

    :cond_0
    return-void
.end method

.method updateQuickPopupText()V
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->getScrollRatio()F

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getFocusedGroupIndex(F)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getMediaSetName(I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_FLUID_SCROLL:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->USE_FAST_SCROLL:Z

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getMediaSetLocation(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v4, v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->updateScrollTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->updateScrollTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method updateSize(I)V
    .locals 12

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetEventItemPosition()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->resetCount()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetCount()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetPosition()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_6

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setEnableHoverScroll(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {v1, v7, v4}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setRange(FF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mInitialItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mInitialItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v8

    :goto_1
    if-eq v8, v5, :cond_8

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getInitScrollForShirnk(I)F

    move-result v10

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v1, v10}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setInitMovement(F)V

    :goto_2
    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mInitialCode:I

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mInitialItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0, v10, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setScroll(FZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getObject(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v9

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isDynamicLayout()Z

    move-result v4

    invoke-virtual {v1, v2, v9, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->prepareAnimation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startShrinkAnimation()V

    :goto_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1, v6, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousBitmap(Landroid/graphics/Bitmap;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousActivityState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    :goto_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSearchFaceObj:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v2, v3, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->setFaceItem(Lcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :goto_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isShrinkAnimActive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetLayout()V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->updateList()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getFirstFitGroupIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->focusedTimeItem(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsEventView:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->hasMessage(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v2, 0x1b

    const-wide/16 v6, 0x32

    move v4, v3

    move v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    :cond_3
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScreenLocked:Z

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScreenLocked:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->unlockRefresh()V

    :cond_4
    if-nez p1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->freeGlObjects()V

    :cond_5
    return-void

    :cond_6
    move v1, v3

    goto/16 :goto_0

    :cond_7
    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mInitialCode:I

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPrevCenterObject:I

    if-eq v1, v5, :cond_9

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iput v5, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPrevCenterObject:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPrevScroll:F

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getValidScroll(F)F

    move-result v10

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v1, v10}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setInitMovement(F)V

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v10, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    goto/16 :goto_2

    :cond_a
    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    goto/16 :goto_3

    :cond_b
    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSearchViewScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v2, :cond_c

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->readyPropagateAnim()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    :goto_6
    invoke-direct {p0, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->checkStartPropagateAnimation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GlComposeView"

    const-string/jumbo v2, "ClassCastException is happened"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_c
    :try_start_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :cond_d
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    goto/16 :goto_5
.end method

.method public updateTipCardBorder()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawTotalFocusBorder(Z)V

    :cond_0
    return-void
.end method

.method public updateTitleBorder(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOldFocusedTitle:I

    return-void
.end method

.method public updateTitleButton1(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    return-void
.end method

.method public updateTitleButton2(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    return-void
.end method
