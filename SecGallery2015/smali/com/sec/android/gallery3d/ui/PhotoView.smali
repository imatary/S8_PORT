.class public Lcom/sec/android/gallery3d/ui/PhotoView;
.super Lcom/sec/android/gallery3d/ui/GLView;
.source "PhotoView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/GifPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/PhotoView$MyDragShadowBuilder;,
        Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;,
        Lcom/sec/android/gallery3d/ui/PhotoView$ZInterpolator;,
        Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;,
        Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;,
        Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;,
        Lcom/sec/android/gallery3d/ui/PhotoView$Picture;,
        Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;,
        Lcom/sec/android/gallery3d/ui/PhotoView$GestureType;,
        Lcom/sec/android/gallery3d/ui/PhotoView$Listener;,
        Lcom/sec/android/gallery3d/ui/PhotoView$Model;,
        Lcom/sec/android/gallery3d/ui/PhotoView$Size;
    }
.end annotation


# static fields
.field private static final CAMERA_EFFECT:Z = true

.field private static CARD_EFFECT:Z = false

.field private static CARD_RIGHT_OUT:Z = false

.field private static final CMH_FILE_STATUS_FAVORITE:I = 0x4

.field private static final CMH_FILE_STATUS_NORMAL:I = 0x0

.field private static final COLOR_OUTLINE:I = -0xff7501

.field private static final DELAY_SHOW_LOADING:J = 0xfaL

.field private static final ENTRY_NEXT:I = 0x1

.field private static final ENTRY_PREVIOUS:I = 0x0

.field private static final FEATURE_USE_DISPLAY_DATE_LOCATION:Z

.field private static final FEATURE_USE_NAVIGATION_BAR:Z

.field private static final FEATURE_USE_VISION_INTELLIGENCE:Z = false

.field private static final HOLD_CAPTURE_ANIMATION:I = 0x2

.field private static final HOLD_DELETE:I = 0x4

.field private static final HOLD_TOUCH_DOWN:I = 0x1

.field private static final IGNORE_AREA_TOUCHED:I = 0x1

.field private static final IGNORE_FLING_EVENT_THRESHOLD_TIME:J = 0x12cL

.field private static final INVALID_DATA_VERSION:J = -0x1L

.field private static final INVALID_SIZE:I = -0x1

.field private static final LOADING_COMPLETE:I = 0x2

.field private static final LOADING_FAIL:I = 0x3

.field private static final LOADING_INIT:I = 0x0

.field private static final LOADING_PROGRESS_NONE:I = 0x0

.field private static final LOADING_PROGRESS_RUNNING:I = 0x1

.field private static final LOADING_TIMEOUT:I = 0x1

.field public static final MAX_IMAGE_SCALE_SIZE:F = 10.0f

.field private static final MSG_ACQUIRE_AGIF_PLAY_BOOST:I = 0x6c

.field private static final MSG_CANCEL_EXTRA_SCALING:I = 0x2

.field private static final MSG_CAPTURE_ANIMATION_DONE:I = 0x4

.field private static final MSG_DELETE_DONE:I = 0x5

.field private static final MSG_FLIP_PHOTO:I = 0x6b

.field private static final MSG_HIDE_CAMERA_PREVIEW:I = 0x69

.field private static final MSG_HIDE_NAVIGATION_BAR:I = 0x6a

.field private static final MSG_HIDE_PREVIEW:I = 0x68

.field private static final MSG_HIDE_VIDEOICON:I = 0x6e

.field private static final MSG_NOTIFY_SCALE_CHANGED:I = 0x6f

.field private static final MSG_RELEASE_AGIF_PLAY_BOOST:I = 0x6d

.field private static final MSG_RELEASE_BOOST:I = 0x70

.field private static final MSG_SHOW_FAIL:I = 0x67

.field private static final MSG_SHOW_LOADING:I = 0x66

.field private static final MSG_SWITCH_FOCUS:I = 0x3

.field private static final MSG_TRANSITION_COMPLETE:I = 0x65

.field private static final NEED_TO_CHECK_TOUCH_AREA:I = 0x0

.field private static final OFFSET_EFFECT:Z = true

.field private static final OUTLINE:I = 0xc

.field private static final OUTLINE_WIDTH:F = 30.0f

.field public static final SCREEN_NAIL_MAX:I = 0x3

.field private static final SCROLL_CAPTRUE_SLIGHT_MARGINE_PIXEL:I = 0x14

.field private static final SCROLL_CAPTURE_DEFAULT_RATIO:F = 1.8f

.field private static final SLIDE_NEXT_IMAGE:I = 0x1

.field private static final SLIDE_PREV_IMAGE:I = -0x1

.field private static final SUPPORT_KNOX_DESKTOP:Z

.field private static final SWIPE_MIN_THRESHOLD:I

.field private static final SWIPE_THRESHOLD:F = 300.0f

.field private static final TAG:Ljava/lang/String; = "PhotoView"

.field private static final TRANSITION_SCALE_FACTOR:F = 0.5f

.field private static final TRANS_NONE:I = 0x0

.field private static final TRANS_OPEN_ANIMATION:I = 0x5

.field public static final TRANS_SLIDE_IN_LEFT:I = 0x2

.field public static final TRANS_SLIDE_IN_RIGHT:I = 0x1

.field private static final TWO_FRAME_PERIOD:J = 0x24L

.field private static final UNSPECIFIED:F = -1.0f

.field private static final USE_VIDEO_AUTO_PLAY:Z

.field private static final VALID_AREA_TOUCHED:I = 0x2

.field private static final VISION_MAX_OBJECT:I = 0x3

.field private static final ZOOM_OUT_EFFECT:Z = true

.field private static final ZOOM_OUT_THRESHOLD_MAX:F = 1.2f

.field private static bFlipImage:Z

.field private static mGetPrevFocusX:F

.field private static mGetPrevFocusY:F

.field private static mIsTablet:Z

.field private static final sUseTileAlphaBlending:Z


# instance fields
.field private final SCROLL_CAPTURE_RATIO:F

.field private isCtrlKeyPressed:Z

.field private mAgifMode:Z

.field private final mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private final mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

.field private final mCameraRect:Landroid/graphics/Rect;

.field private final mCameraRelativeFrame:Landroid/graphics/Rect;

.field private mCancelExtraScalingPending:Z

.field private mCenterX:F

.field private mCenterY:F

.field private final mContext:Landroid/content/Context;

.field private mCurAttribute:J

.field private mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mCurSubAttribute:J

.field private final mDecoderInterface:Lcom/sec/samsung/gallery/decoder/DecoderInterface;

.field private final mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

.field private mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

.field private mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

.field private mDisplayHeight:I

.field private mDisplayRotation:I

.field private mDisplayWidth:I

.field private mDownXPos:F

.field private mDownYPos:F

.field private mDragViewAdded:Z

.field private mEdgeOnDown:I

.field private final mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

.field private mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/LibEditModeHelper;

.field private mEnvironmentTagView:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

.field private mFilmstripJump:Z

.field private mFirst:Z

.field private final mFlipAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

.field private mFlipBitmap:Landroid/graphics/Bitmap;

.field private mFlipScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

.field private final mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mFromEmail:Z

.field private mFullScreenCamera:Z

.field private final mGestureListener:Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;

.field private final mGestureRecognizer:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

.field private final mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

.field private mHideBarTimeout:I

.field private mHideVideoIcon:Z

.field private mHolding:I

.field private mIgnoreScroll:Z

.field private mImageRotation:I

.field private mInsertLog:Z

.field private mIsBurstShotViewer:Z

.field private mIsDeviceToTvConnect:Z

.field private mIsDisplayDateLocationView:Z

.field private mIsEnvironmentTagged:Z

.field private mIsExternalDisplayConnected:Z

.field private mIsFlippedImage:Z

.field private mIsFromRecycleBin:Z

.field private mIsLargerThanMinimumSize:Z

.field private mIsPaused:Z

.field private mIsRotated:Z

.field private mIsSelectionMode:Z

.field mIsVaildScroll:I

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

.field private mLoadingProgressState:I

.field private mLoadingSpinner:Lcom/sec/android/gallery3d/ui/ProgressSpinner;

.field private mLoadingState:I

.field private final mLoadingText:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

.field private mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

.field private final mMyScaleListener:Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;

.field private mNextBound:I

.field private mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

.field private mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field private final mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

.field private final mPictures:Lcom/sec/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/sec/android/gallery3d/ui/PhotoView$Picture;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaceholderColor:I

.field private final mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

.field private mPrevBound:I

.field private mPreviousImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

.field private mPrivateIcon:Lcom/sec/android/gallery3d/glrenderer/Texture;

.field private mScaleEndStartTime:J

.field private final mScaleInterpolator:Lcom/sec/android/gallery3d/ui/PhotoView$ZInterpolator;

.field private mShowPrivateIcon:Z

.field private final mSizes:[Lcom/sec/android/gallery3d/ui/PhotoView$Size;

.field private final mStatusBarHeight:I

.field private mTagDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

.field private mTouchBoxIndex:I

.field private mTransitionMode:I

.field private mUserInteractionListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

.field private mViewOnly:Z

.field private final mVisionIntelligenceIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;",
            ">;"
        }
    .end annotation
.end field

.field private mWantPictureCenterCallbacks:Z

.field private mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

.field private mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTileAlphaBlending:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->sUseTileAlphaBlending:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->FEATURE_USE_NAVIGATION_BAR:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVideoAutoPlay:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->USE_VIDEO_AUTO_PLAY:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportKnoxDesktop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->SUPPORT_KNOX_DESKTOP:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDisplayDateLocation:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->FEATURE_USE_DISPLAY_DATE_LOCATION:Z

    sput-boolean v2, Lcom/sec/android/gallery3d/ui/PhotoView;->CARD_EFFECT:Z

    sput-boolean v3, Lcom/sec/android/gallery3d/ui/PhotoView;->CARD_RIGHT_OUT:Z

    sput v1, Lcom/sec/android/gallery3d/ui/PhotoView;->mGetPrevFocusX:F

    sput v1, Lcom/sec/android/gallery3d/ui/PhotoView;->mGetPrevFocusY:F

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/ui/PhotoView;->SWIPE_MIN_THRESHOLD:I

    sput-boolean v2, Lcom/sec/android/gallery3d/ui/PhotoView;->bFlipImage:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/ui/GestureRecognizer;)V
    .locals 8

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;-><init>()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsFlippedImage:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsDeviceToTvConnect:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFromEmail:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsLargerThanMinimumSize:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mInsertLog:Z

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDownXPos:F

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDownYPos:F

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsVaildScroll:I

    new-instance v5, Lcom/sec/android/gallery3d/ui/PhotoView$ZInterpolator;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {v5, v6}, Lcom/sec/android/gallery3d/ui/PhotoView$ZInterpolator;-><init>(F)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/sec/android/gallery3d/ui/PhotoView$ZInterpolator;

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    const v6, 0x3f666666    # 0.9f

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    new-instance v5, Lcom/sec/android/gallery3d/util/RangeArray;

    const/4 v6, -0x3

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Lcom/sec/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPictures:Lcom/sec/android/gallery3d/util/RangeArray;

    const/4 v5, 0x7

    new-array v5, v5, [Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFirst:Z

    const v5, 0x7fffffff

    iput v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingProgressState:I

    const/4 v5, 0x2

    iput v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingState:I

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mScaleEndStartTime:J

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEnvironmentTagView:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/LibEditModeHelper;

    new-instance v5, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/ui/PhotoView$1;)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mMyScaleListener:Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsSelectionMode:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsRotated:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIgnoreScroll:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFilmstripJump:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsBurstShotViewer:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mViewOnly:Z

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurAttribute:J

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurSubAttribute:J

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsFromRecycleBin:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsExternalDisplayConnected:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHideVideoIcon:Z

    new-instance v5, Lcom/sec/android/gallery3d/ui/PhotoView$1;

    invoke-direct {v5, p0}, Lcom/sec/android/gallery3d/ui/PhotoView$1;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->isCtrlKeyPressed:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsEnvironmentTagged:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsDisplayDateLocationView:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    new-instance v5, Lcom/sec/android/gallery3d/ui/TileImageView;

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-direct {v5, v6}, Lcom/sec/android/gallery3d/ui/TileImageView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    sput-boolean v5, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsTablet:Z

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v6, 0x7f10019c

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPlaceholderColor:I

    new-instance v5, Lcom/sec/android/gallery3d/ui/EdgeView;

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/sec/android/gallery3d/ui/EdgeView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/ui/EdgeView;->setVisibility(I)V

    new-instance v5, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p2, v6}, Lcom/sec/android/gallery3d/ui/PhotoView$MyHandler;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/ui/PhotoView$1;)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    new-instance v5, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/ui/PhotoView$1;)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExternalDisplayAvailable(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsExternalDisplayConnected:Z

    if-nez p3, :cond_1

    new-instance v5, Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-direct {v5, v6, v7}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    :goto_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    :cond_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v5

    if-eq v5, p2, :cond_2

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mViewOnly:Z

    new-instance v5, Lcom/sec/android/gallery3d/ui/PositionController;

    new-instance v6, Lcom/sec/android/gallery3d/ui/PhotoView$2;

    invoke-direct {v6, p0}, Lcom/sec/android/gallery3d/ui/PhotoView$2;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    check-cast p2, Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getType()I

    move-result v7

    invoke-direct {v5, p1, v6, v7}, Lcom/sec/android/gallery3d/ui/PositionController;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/ui/PositionController$Listener;I)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    const/4 v2, -0x3

    :goto_2
    const/4 v5, 0x3

    if-gt v2, v5, :cond_5

    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPictures:Lcom/sec/android/gallery3d/util/RangeArray;

    new-instance v6, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/ui/PhotoView$1;)V

    invoke-virtual {v5, v2, v6}, Lcom/sec/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iput-object p3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->addListener(Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPictures:Lcom/sec/android/gallery3d/util/RangeArray;

    new-instance v7, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;

    sget-boolean v5, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v5, :cond_4

    neg-int v5, v2

    :goto_4
    invoke-direct {v7, p0, v5}, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;I)V

    invoke-virtual {v6, v2, v7}, Lcom/sec/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    move v5, v2

    goto :goto_4

    :cond_5
    new-instance v4, Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    invoke-direct {v4}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;-><init>()V

    const v5, -0xff7501

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setColor(I)V

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setLineWidth(F)V

    new-instance v5, Lcom/sec/samsung/gallery/view/utils/LibEditModeHelper;

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-direct {v5, v6}, Lcom/sec/samsung/gallery/view/utils/LibEditModeHelper;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/LibEditModeHelper;

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseShareTagImage:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-direct {v5, v6}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEnvironmentTagView:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEnvironmentTagView:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    :goto_5
    sget-boolean v5, Lcom/sec/android/gallery3d/ui/PhotoView;->FEATURE_USE_DISPLAY_DATE_LOCATION:Z

    if-eqz v5, :cond_9

    new-instance v5, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-direct {v5, v6}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    :goto_6
    new-instance v5, Lcom/sec/android/gallery3d/ui/PhotoIconView;

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-direct {v5, v6, v7}, Lcom/sec/android/gallery3d/ui/PhotoIconView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/ui/PositionController;)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    new-instance v6, Lcom/sec/android/gallery3d/ui/PhotoView$3;

    invoke-direct {v6, p0}, Lcom/sec/android/gallery3d/ui/PhotoView$3;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setOnClickListener(Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    new-instance v5, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-direct {v5, v6}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    new-instance v6, Lcom/sec/android/gallery3d/ui/PhotoView$4;

    invoke-direct {v6, p0}, Lcom/sec/android/gallery3d/ui/PhotoView$4;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->setOnClickListener(Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->isSupportVisionIntelligenceView()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->initVisionIntelligenceView()V

    :cond_6
    sget-boolean v5, Lcom/sec/android/gallery3d/ui/PhotoView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v5}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->initHorizontalNavigationButton()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->initZoomInOutButton()V

    :cond_7
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b01ec

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v0, v5

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->initDisplaySize(Landroid/content/Context;)V

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayWidth:I

    iget v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayHeight:I

    if-ge v5, v6, :cond_a

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayWidth:I

    :goto_7
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v6, 0x7f100214

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    :goto_8
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0247

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-static {v5, v3, v0, v1, v6}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->newInstance(Ljava/lang/String;IFILandroid/text/Layout$Alignment;)Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingText:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAnimationInterface()Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getFlipAnimationInterface()Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getDecoderInterface()Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDecoderInterface:Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    new-instance v5, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;

    invoke-direct {v5}, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;-><init>()V

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGLViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->initAccessibilityListener()V

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGLViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGLViewAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility;->setAccessibilityNodeInfoListener(Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->initScrollCaptureRatio()F

    move-result v5

    iput v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->SCROLL_CAPTURE_RATIO:F

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0264

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mStatusBarHeight:I

    return-void

    :cond_8
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEnvironmentTagView:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    goto/16 :goto_5

    :cond_9
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    goto/16 :goto_6

    :cond_a
    iget v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayHeight:I

    goto :goto_7

    :cond_b
    const/4 v1, -0x1

    goto :goto_8
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoIconView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/gallery3d/ui/PhotoView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/gallery3d/ui/PhotoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsFromRecycleBin:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->makeFlippedPhotoBitmap()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/gallery3d/ui/PhotoView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/BitmapScreenNail;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/gallery3d/ui/PhotoView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->getObjectRect(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->refreshHidingMessage()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/gallery3d/ui/PhotoView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCenterX:F

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/gallery3d/ui/PhotoView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCenterY:F

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/GestureRecognizer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/gallery3d/ui/PhotoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/sec/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->switchFocus()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/android/gallery3d/ui/PhotoView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->captureAnimationDone(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->snapBack()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->onTransitionComplete()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/gallery3d/ui/PhotoView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingState:I

    return v0
.end method

.method static synthetic access$3302(Lcom/sec/android/gallery3d/ui/PhotoView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingState:I

    return p1
.end method

.method static synthetic access$3400(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/ProgressSpinner;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getLoadingSpinner()Lcom/sec/android/gallery3d/ui/ProgressSpinner;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/gallery3d/ui/PhotoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/gallery3d/ui/PhotoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsBurstShotViewer:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->handleFlippedStatus()V

    return-void
.end method

.method static synthetic access$3800()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->USE_VIDEO_AUTO_PLAY:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyScaleChangedToZoomButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/ui/PhotoView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/TileImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/gallery3d/ui/PhotoView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHolding:I

    return p1
.end method

.method static synthetic access$4100(Lcom/sec/android/gallery3d/ui/PhotoView;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPanoramaRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(III)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/PhotoView;->getRotated(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/sec/android/gallery3d/ui/PhotoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    return v0
.end method

.method static synthetic access$4400()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->CARD_EFFECT:Z

    return v0
.end method

.method static synthetic access$4402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/android/gallery3d/ui/PhotoView;->CARD_EFFECT:Z

    return p0
.end method

.method static synthetic access$4500(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/util/RangeArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPictures:Lcom/sec/android/gallery3d/util/RangeArray;

    return-object v0
.end method

.method static synthetic access$4600(FFF)F
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/PhotoView;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$4700(III)F
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/PhotoView;->calculateMoveOutProgress(III)F

    move-result v0

    return v0
.end method

.method static synthetic access$4800()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->CARD_RIGHT_OUT:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/sec/android/gallery3d/ui/PhotoView;F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->getScrollScale(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/EdgeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/gallery3d/ui/PhotoView;F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->getScrollAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/sec/android/gallery3d/ui/PhotoView;F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->getOffsetAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/samsung/gallery/decoder/AnimationInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/samsung/gallery/decoder/AnimationInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    return-object v0
.end method

.method static synthetic access$5400()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->bFlipImage:Z

    return v0
.end method

.method static synthetic access$5402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/android/gallery3d/ui/PhotoView;->bFlipImage:Z

    return p0
.end method

.method static synthetic access$5500(Lcom/sec/android/gallery3d/ui/PhotoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mShowPrivateIcon:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->drawPrivateIcon(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/sec/android/gallery3d/ui/PhotoView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingProgressState:I

    return v0
.end method

.method static synthetic access$5702(Lcom/sec/android/gallery3d/ui/PhotoView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingProgressState:I

    return p1
.end method

.method static synthetic access$5800(Lcom/sec/android/gallery3d/ui/PhotoView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPrevBound:I

    return v0
.end method

.method static synthetic access$5900(Lcom/sec/android/gallery3d/ui/PhotoView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextBound:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/PhotoView;->drawPlaceHolder(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$6100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->sUseTileAlphaBlending:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/samsung/gallery/decoder/DecoderInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDecoderInterface:Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/UserInteractionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mUserInteractionListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/sec/android/gallery3d/ui/PhotoView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    return v0
.end method

.method static synthetic access$6500(Lcom/sec/android/gallery3d/ui/PhotoView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$6600(Lcom/sec/android/gallery3d/ui/PhotoView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$6700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/sec/android/gallery3d/ui/PhotoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFromEmail:Z

    return v0
.end method

.method static synthetic access$6900(Lcom/sec/android/gallery3d/ui/PhotoView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->SCROLL_CAPTURE_RATIO:F

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->SUPPORT_KNOX_DESKTOP:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/sec/android/gallery3d/ui/PhotoView;FF)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/PhotoView;->isIgnoreAreaTouched(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Lcom/sec/android/gallery3d/ui/PhotoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIgnoreScroll:Z

    return v0
.end method

.method static synthetic access$7102(Lcom/sec/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIgnoreScroll:Z

    return p1
.end method

.method static synthetic access$7200()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->FEATURE_USE_NAVIGATION_BAR:Z

    return v0
.end method

.method static synthetic access$7300(Lcom/sec/android/gallery3d/ui/PhotoView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHideBarTimeout:I

    return v0
.end method

.method static synthetic access$7400(Lcom/sec/android/gallery3d/ui/PhotoView;FF)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/PhotoView;->swipeImages(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lcom/sec/android/gallery3d/ui/PhotoView;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mScaleEndStartTime:J

    return-wide v0
.end method

.method static synthetic access$7502(Lcom/sec/android/gallery3d/ui/PhotoView;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mScaleEndStartTime:J

    return-wide p1
.end method

.method static synthetic access$7602(Lcom/sec/android/gallery3d/ui/PhotoView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return p1
.end method

.method static synthetic access$7702(Lcom/sec/android/gallery3d/ui/PhotoView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEdgeOnDown:I

    return p1
.end method

.method static synthetic access$7800(Lcom/sec/android/gallery3d/ui/PhotoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsSelectionMode:Z

    return v0
.end method

.method static synthetic access$7900(Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->startDrag()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/sec/android/gallery3d/ui/PhotoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mViewOnly:Z

    return v0
.end method

.method static synthetic access$8100(Lcom/sec/android/gallery3d/ui/PhotoView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->setSwipingEnabled(Z)V

    return-void
.end method

.method static synthetic access$8200()F
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGetPrevFocusX:F

    return v0
.end method

.method static synthetic access$8202(F)F
    .locals 0

    sput p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGetPrevFocusX:F

    return p0
.end method

.method static synthetic access$8300()F
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGetPrevFocusY:F

    return v0
.end method

.method static synthetic access$8302(F)F
    .locals 0

    sput p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGetPrevFocusY:F

    return p0
.end method

.method static synthetic access$8402(Lcom/sec/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDragViewAdded:Z

    return p1
.end method

.method static synthetic access$8500(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->isBurstShot(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8600(Lcom/sec/android/gallery3d/ui/PhotoView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->isSupportVisionIntelligenceView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Lcom/sec/android/gallery3d/ui/PhotoView;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getAccessibilityIconRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method private static calculateMoveOutProgress(III)F
    .locals 4

    sub-int v0, p1, p0

    if-ge v0, p2, :cond_1

    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int v1, v2, v3

    if-le p0, v1, :cond_0

    sub-int v2, p0, v1

    neg-int v2, v2

    int-to-float v2, v2

    sub-int v3, p2, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    :goto_0
    return v2

    :cond_0
    sub-int v2, p0, v1

    int-to-float v2, v2

    neg-int v3, v0

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    :cond_1
    if-lez p0, :cond_2

    neg-int v2, p0

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    :cond_2
    if-ge p1, p2, :cond_3

    sub-int v2, p2, p1

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private captureAnimationDone(I)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHolding:I

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onActionBarWanted()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->snapBack()V

    return-void
.end method

.method private createBlurImage(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x1

    const/high16 v7, -0x10000

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-le v5, v6, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    sget-object v5, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v3, p2, v5, v8}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-static {v3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    int-to-float v5, p3

    invoke-virtual {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v4, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v4, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    const-string/jumbo v5, "png"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_0
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v4}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v5, "png"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method private drawPlaceHolder(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    return-void
.end method

.method private drawPrivateIcon(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 18

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPrivateIcon()Lcom/sec/android/gallery3d/glrenderer/Texture;

    move-result-object v1

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v11

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PositionController;->isFullScreen()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->getActionBarHeightPixel()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->getDetailViewIconTopPaddingPixel(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->getDetailViewIconLeftPaddingPixel(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b055c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->getHeight()I

    move-result v2

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->getHeight()I

    move-result v2

    add-int v9, v2, v15

    :goto_1
    iget v2, v11, Landroid/graphics/Rect;->left:I

    if-gtz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PositionController;->isCenter()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v8

    iput v2, v14, Landroid/graphics/Rect;->left:I

    :goto_2
    invoke-interface {v1}, Lcom/sec/android/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v5

    invoke-interface {v1}, Lcom/sec/android/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v6

    if-eqz v17, :cond_5

    iget v2, v11, Landroid/graphics/Rect;->top:I

    add-int v3, v7, v9

    if-ge v2, v3, :cond_4

    add-int v2, v7, v10

    add-int/2addr v2, v9

    iput v2, v14, Landroid/graphics/Rect;->top:I

    :goto_3
    iget v2, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v5

    iput v2, v14, Landroid/graphics/Rect;->right:I

    iget v2, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v6

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    iget v2, v14, Landroid/graphics/Rect;->left:I

    iget v3, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/Texture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :goto_4
    return-void

    :cond_1
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    iput v8, v14, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_4
    iget v2, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v10

    iput v2, v14, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_5
    iget v2, v11, Landroid/graphics/Rect;->top:I

    add-int v3, v7, v9

    if-ge v2, v3, :cond_6

    add-int v2, v7, v10

    add-int/2addr v2, v9

    iget v3, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->top:I

    :goto_5
    iget v2, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v5

    iput v2, v14, Landroid/graphics/Rect;->right:I

    iget v2, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v6

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    iget v2, v11, Landroid/graphics/Rect;->bottom:I

    iget v3, v11, Landroid/graphics/Rect;->top:I

    sub-int v12, v2, v3

    iget v2, v11, Landroid/graphics/Rect;->right:I

    iget v3, v11, Landroid/graphics/Rect;->left:I

    sub-int v13, v2, v3

    neg-int v2, v13

    div-int/lit8 v2, v2, 0x2

    iget v3, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v11, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v3

    neg-int v2, v12

    div-int/lit8 v2, v2, 0x2

    iget v4, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/gallery3d/glrenderer/Texture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_4

    :cond_6
    iput v10, v14, Landroid/graphics/Rect;->top:I

    goto :goto_5
.end method

.method private static gapToSide(II)I
    .locals 2

    const/4 v0, 0x0

    sub-int v1, p1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getAccessibilityIconRect()Landroid/graphics/Rect;
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->isSupportVisionIntelligenceView()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/GalleryVisionUtils;->isSupportType(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getAccMeasuredRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->getMeasuredRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method private getImageView()Landroid/widget/ImageView;
    .locals 10

    const v9, 0x7f1200d7

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDragViewAdded:Z

    if-nez v4, :cond_0

    const v6, 0x7f1200d5

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040059

    const/4 v6, 0x0

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v1, Lcom/sec/android/gallery3d/ui/PhotoView$11;

    invoke-direct {v1, p0, v5, v2}, Lcom/sec/android/gallery3d/ui/PhotoView$11;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-nez v4, :cond_0

    :try_start_0
    const-string/jumbo v6, "PhotoView"

    const-string/jumbo v7, "addViewOnUiThread wait"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-boolean v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDragViewAdded:Z

    if-nez v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    const-string/jumbo v6, "PhotoView"

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "PhotoView"

    const-string/jumbo v7, "ImageView was not added to main layout"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    :cond_0
    return-object v4

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string/jumbo v6, "PhotoView"

    const-string/jumbo v7, "addViewOnUiThread resume"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method private getLoadingSpinner()Lcom/sec/android/gallery3d/ui/ProgressSpinner;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingSpinner:Lcom/sec/android/gallery3d/ui/ProgressSpinner;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/ui/ProgressSpinner;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/ProgressSpinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingSpinner:Lcom/sec/android/gallery3d/ui/ProgressSpinner;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingSpinner:Lcom/sec/android/gallery3d/ui/ProgressSpinner;

    return-object v0
.end method

.method private getObjectRect(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    const/high16 v4, -0x40800000    # -1.0f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTagDatas:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    :cond_0
    return-object v1

    :cond_1
    instance-of v3, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v3, :cond_2

    instance-of v3, p1, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v3, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->setSceneRects(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->setSmartCropRects(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/ArrayList;)V

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    rsub-int/lit8 v3, v2, 0x3

    if-ge v0, v3, :cond_0

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getOffsetAlpha(F)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    div-float/2addr p1, v1

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    sub-float v0, v2, p1

    :goto_0
    const v1, 0x3cf5c28f    # 0.03f

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1

    :cond_0
    add-float v0, v2, p1

    goto :goto_0
.end method

.method private getPanoramaRotation()I
    .locals 8

    const/16 v5, 0xb4

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v2, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_2

    iget v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    iget v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    if-lt v6, v5, :cond_3

    move v0, v3

    :goto_1
    if-eq v0, v1, :cond_1

    move v4, v5

    :cond_1
    return v4

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_1
.end method

.method private getPrivateIcon()Lcom/sec/android/gallery3d/glrenderer/Texture;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPrivateIcon:Lcom/sec/android/gallery3d/glrenderer/Texture;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v2, 0x7f020142

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPrivateIcon:Lcom/sec/android/gallery3d/glrenderer/Texture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPrivateIcon:Lcom/sec/android/gallery3d/glrenderer/Texture;

    return-object v0
.end method

.method private static getRotated(III)I
    .locals 1

    rem-int/lit16 v0, p0, 0xb4

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private getScrollAlpha(F)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    sget-boolean v1, Lcom/sec/android/gallery3d/ui/PhotoView;->CARD_RIGHT_OUT:Z

    if-eqz v1, :cond_1

    cmpl-float v1, p1, v2

    if-lez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    :cond_0
    return v0

    :cond_1
    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    goto :goto_0
.end method

.method private getScrollScale(F)F
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/sec/android/gallery3d/ui/PhotoView$ZInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView$ZInterpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private handleFlippedStatus()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->isFlippedImage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->setFlippedScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getTileImageView()Lcom/sec/android/gallery3d/ui/TileImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v0, v1, v3, v3}, Lcom/sec/android/gallery3d/ui/TileImageView;->invalidateScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getTileImageView()Lcom/sec/android/gallery3d/ui/TileImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/sec/android/gallery3d/ui/TileImageView;->invalidateScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;ZZ)V

    goto :goto_0
.end method

.method private initDisplaySize(Landroid/content/Context;)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayWidth:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayHeight:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCenterX:F

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCenterY:F

    return-void
.end method

.method private initHorizontalNavigationButton()V
    .locals 3

    new-instance v0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPreviousImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    new-instance v0, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPreviousImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    new-instance v1, Lcom/sec/android/gallery3d/ui/PhotoView$6;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/ui/PhotoView$6;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->setOnClickListener(Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    new-instance v1, Lcom/sec/android/gallery3d/ui/PhotoView$7;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/ui/PhotoView$7;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->setOnClickListener(Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPreviousImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    return-void
.end method

.method private initScrollCaptureRatio()F
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-nez v1, :cond_1

    :cond_0
    const v1, 0x3fe66666    # 1.8f

    :goto_0
    return v1

    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_2

    iget v1, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method private initZoomInOutButton()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    new-instance v0, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    new-instance v1, Lcom/sec/android/gallery3d/ui/PhotoView$8;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/ui/PhotoView$8;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setOnClickListener(Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    new-instance v1, Lcom/sec/android/gallery3d/ui/PhotoView$9;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/ui/PhotoView$9;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setOnClickListener(Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method private static interpolate(FFF)F
    .locals 1

    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private isBurstShot(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v6, 0x200

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isLocalImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isSCloudMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p1, v6, v7, v0}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "group_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and (file_status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " or file_status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isBurstShotImage(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v6, v7, v0}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    :cond_2
    return v0
.end method

.method private isIgnoreAreaTouched(FF)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget v8, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDownXPos:F

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_0

    iget v8, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDownYPos:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isFullScreenMode()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v8}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    iput v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsVaildScroll:I

    goto :goto_0

    :cond_4
    iget v8, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mStatusBarHeight:I

    div-int/lit8 v4, v8, 0x2

    iget v8, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDownYPos:F

    iget v9, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mStatusBarHeight:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v4

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_5

    iput v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsVaildScroll:I

    move v6, v5

    goto :goto_0

    :cond_5
    sget-boolean v8, Lcom/sec/android/gallery3d/ui/PhotoView;->FEATURE_USE_NAVIGATION_BAR:Z

    if-nez v8, :cond_6

    iput v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsVaildScroll:I

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v2

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    if-eqz v0, :cond_7

    move v7, v5

    :cond_7
    iput v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsVaildScroll:I

    iget v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsVaildScroll:I

    if-ne v7, v5, :cond_c

    :goto_2
    move v6, v5

    goto :goto_0

    :pswitch_0
    iget v8, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDownYPos:F

    iget v9, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mStatusBarHeight:I

    sub-int v9, v3, v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_8

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v4

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_8

    move v0, v5

    :goto_3
    goto :goto_1

    :cond_8
    move v0, v6

    goto :goto_3

    :pswitch_1
    iget v8, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDownYPos:F

    iget v9, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mStatusBarHeight:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_9

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v4

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_9

    move v0, v5

    :goto_4
    goto :goto_1

    :cond_9
    move v0, v6

    goto :goto_4

    :pswitch_2
    iget v8, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDownXPos:F

    iget v9, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mStatusBarHeight:I

    sub-int v9, v3, v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_a

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v4

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_a

    move v0, v5

    :goto_5
    goto :goto_1

    :cond_a
    move v0, v6

    goto :goto_5

    :pswitch_3
    iget v8, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDownXPos:F

    iget v9, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mStatusBarHeight:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_b

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v4

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_b

    move v0, v5

    :goto_6
    goto :goto_1

    :cond_b
    move v0, v6

    goto :goto_6

    :cond_c
    move v5, v6

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private isInTransition()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportVisionIntelligenceView()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/UriImage;

    if-eqz v2, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->getFileStatus()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    move v1, v3

    :goto_1
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isFullScreenMode()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v3

    :goto_2
    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_2
.end method

.method private makeFlippedPhotoBitmap()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/LibEditModeHelper;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/utils/LibEditModeHelper;->getFlippedPhotoBitmap(Lcom/sec/android/gallery3d/data/MediaItem;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    goto :goto_0
.end method

.method private notifyScaleChangedToZoomButton()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PositionController;->getImageScale()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setEnable(Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setEnable(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setEnable(Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setEnable(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->getEnable()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setEnable(Z)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->getEnable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setEnable(Z)V

    goto :goto_0
.end method

.method private notifyTransitionComplete()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private onTransitionComplete()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    return-void
.end method

.method private refreshHidingMessage()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "UPDATE_HIDE_TIME"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    return-void
.end method

.method private removeFlippedImage()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->setIsFlipped(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;->recycle()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->setFlippedScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;)V

    :cond_2
    return-void
.end method

.method private setAnimationListenerForSlide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->existAnimationListener()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->setAnimationListener(Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->completeSlideAnimation()V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    new-instance v1, Lcom/sec/android/gallery3d/ui/PhotoView$10;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/ui/PhotoView$10;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->setAnimationListener(Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;)V

    return-void
.end method

.method private setPictureSize(I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPictures:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    move-result-object v3

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v2, p1, v3, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->setImageSize(ILcom/sec/android/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setSceneRects(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/LocalImage;->getSceneCropRectFs()Ljava/util/ArrayList;

    move-result-object v1

    check-cast p1, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/LocalImage;->getSceneTagDatas()Ljava/util/ArrayList;

    move-result-object v3

    :goto_0
    if-eqz v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    invoke-static {v4, v2}, Lcom/sec/android/gallery3d/util/GalleryVisionUtils;->isDuplicateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_3

    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTagDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/UnionImage;->getSceneCropRectFs()Ljava/util/ArrayList;

    move-result-object v1

    check-cast p1, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/UnionImage;->getSceneTagDatas()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTagDatas:Ljava/util/ArrayList;

    const-string/jumbo v6, "Modify"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method private setSmartCropRects(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    instance-of v3, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/LocalImage;->getSmartCropRectFs()Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$SMART_CROP_INDEX;->OBJECT:Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$SMART_CROP_INDEX;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$SMART_CROP_INDEX;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_3

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_3

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_3

    :cond_0
    iget v3, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v3, p1

    check-cast v3, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/UnionImage;->getSmartCropRectFs()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/util/GalleryVisionUtils;->getRotatedRect(Landroid/graphics/RectF;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTagDatas:Ljava/util/ArrayList;

    const-string/jumbo v4, "salience"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setSwipingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->setSwipingEnabled(Z)V

    return-void
.end method

.method private setVisionIntelligenceIconView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryVisionUtils;->isSupportType(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->showVisionObject(Ljava/lang/Boolean;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->hideVisionObject(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private showIcon(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->USE_VIDEO_AUTO_PLAY:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->setHideVideoIcon(Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->showVideoIcon(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/ui/PhotoView$13;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/ui/PhotoView$13;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->showImageIcon(Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_1
.end method

.method private showImageIcon(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 6

    const-wide/16 v4, 0x200

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->needCloudOnlyThumb()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->CLOUD_ONLY_ITEM:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setCurrentIcon(Lcom/sec/android/gallery3d/ui/playicon/IconType;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BROKEN_IMAGE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0x100000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->INTERACTIVE_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x10

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SOUND_SCENE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0x800

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SHOT_AND_MORE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x400

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->TOUR3D:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto :goto_0

    :cond_6
    const-wide/32 v2, 0x20000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->OUT_OF_FOCUS:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto :goto_0

    :cond_7
    const-wide/16 v2, 0x8

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {p1}, Lcom/sec/samsung/gallery/util/Panorama3DUtil;->is3DPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->is3DPanorama()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->PANORAMA3D:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto :goto_0

    :cond_9
    instance-of v1, p1, Lcom/sec/android/gallery3d/data/UnlockImage;

    if-eqz v1, :cond_a

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->UNLOCK:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto :goto_0

    :cond_a
    invoke-virtual {p1, v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p1, v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_b
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsBurstShotViewer:Z

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotCount(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_c

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BURST_SHOT:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    :goto_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1, p1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->requestBurstShotCount(Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ICON:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto :goto_1

    :cond_d
    instance-of v1, p1, Lcom/sec/android/gallery3d/data/NoItemImage;

    if-eqz v1, :cond_e

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ITEM:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto/16 :goto_0

    :cond_e
    const-wide/32 v2, 0x8000000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->IMAGE360:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto/16 :goto_0

    :cond_f
    const-wide/32 v2, 0x200000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_10

    const-wide/32 v2, 0x1000000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->MOTION_PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto/16 :goto_0

    :cond_10
    const-wide/32 v2, 0x800000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_11

    const-wide/32 v2, 0x10000000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SELF_MOTION_PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto/16 :goto_0

    :cond_11
    const-wide/32 v2, 0x2000000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->MOTION_PHOTO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto/16 :goto_0

    :cond_12
    const-wide/32 v2, 0x4000000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FLIP_PHOTO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto/16 :goto_0

    :cond_13
    const-wide/32 v2, 0x20000000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->RAW_IMAGE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto/16 :goto_0

    :cond_14
    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ICON:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto/16 :goto_0
.end method

.method private showLiveVideoIcon()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->setHideVideoIcon(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    const/16 v1, 0x6e

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHideBarTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private showVideoIcon(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->needCloudOnlyThumb()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->CLOUD_ONLY_ITEM:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setCurrentIcon(Lcom/sec/android/gallery3d/ui/playicon/IconType;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BROKEN_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isSlowMotionVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableSlowFastMotion:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SLOW_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isFastMotionVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableSlowFastMotion:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FAST_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isHyperMotionVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableHyperMotion:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->HYPER_MOTION:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto :goto_0

    :cond_5
    const-wide/32 v2, 0x8000000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->VIDEO360:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isFlipVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FLIP_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isSCloudMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->ONLY_CLOUD_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/sec/android/gallery3d/ui/playicon/IconType;->VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    sget-boolean v1, Lcom/sec/android/gallery3d/ui/PhotoView;->USE_VIDEO_AUTO_PLAY:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isLocalVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->inExpansionMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->showLiveVideoIcon()V

    goto/16 :goto_0
.end method

.method private slideToNextPicture()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mViewOnly:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->setAnimationListenerForSlide()V

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->switchToImageFastest(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->startHorizontalSlide()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->removeFlippedImage()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->setInitialScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;I)V

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private slideToPrevPicture()Z
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mViewOnly:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->setAnimationListenerForSlide()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->switchToImageFastest(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->startHorizontalSlide()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->removeFlippedImage()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->setInitialScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;I)V

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private snapBack()V
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x5

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->snapBack()V

    goto :goto_0
.end method

.method private snapToNeighborImage()Z
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/PositionController;->getIsExpansionMode()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/PositionController;->isRunningAnimation()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v5, v4}, Lcom/sec/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v3

    sget v0, Lcom/sec/android/gallery3d/ui/PhotoView;->SWIPE_MIN_THRESHOLD:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->gapToSide(II)I

    move-result v5

    add-int v2, v0, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int v5, v3, v5

    if-le v5, v2, :cond_3

    sget-boolean v4, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v4

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v4

    goto :goto_0

    :cond_3
    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-le v5, v2, :cond_0

    sget-boolean v4, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v4

    goto :goto_0
.end method

.method private startDrag()V
    .locals 8

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "content://mms/part/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {v5, v6}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isMTPImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0141

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "selectedUri"

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->addUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v3, Lcom/sec/android/gallery3d/ui/PhotoView$MyDragShadowBuilder;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$MyDragShadowBuilder;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;Landroid/view/View;)V

    const/4 v6, 0x0

    new-instance v5, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;

    invoke-direct {v5}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;-><init>()V

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    invoke-interface {v5}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->getDragAndDropFlag()I

    move-result v5

    invoke-virtual {v1, v0, v3, v6, v5}, Landroid/widget/ImageView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    const-wide/16 v6, 0xc

    invoke-virtual {v4, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "galleryUri"

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->addUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    goto :goto_1
.end method

.method private swipeImages(FF)Z
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v1

    if-nez v2, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_0

    and-int/lit8 v5, v1, 0x8

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-eqz v2, :cond_3

    const v3, 0x44bb8000    # 1500.0f

    :goto_1
    neg-float v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_5

    if-nez v2, :cond_2

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEdgeOnDown:I

    and-int/2addr v5, v1

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    :cond_2
    sget-boolean v4, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v4

    goto :goto_0

    :cond_3
    const v3, 0x453b8000    # 3000.0f

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v4

    goto :goto_0

    :cond_5
    cmpl-float v5, p1, v3

    if-lez v5, :cond_0

    if-nez v2, :cond_6

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEdgeOnDown:I

    and-int/2addr v5, v1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    :cond_6
    sget-boolean v4, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v4

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v4

    goto :goto_0
.end method

.method private switchFocus()V
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->switchToPrevImage()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private switchPosition()I
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v10, v9}, Lcom/sec/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v10

    div-int/lit8 v0, v10, 0x2

    iget v10, v1, Landroid/graphics/Rect;->left:I

    if-le v10, v0, :cond_0

    iget v10, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v10, :cond_0

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v8, v7}, Lcom/sec/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v5

    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int v2, v8, v0

    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int v6, v0, v8

    if-ge v6, v2, :cond_1

    :goto_0
    return v7

    :cond_0
    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-ge v7, v0, :cond_1

    iget v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v7

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v0

    if-ge v4, v2, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    move v7, v9

    goto :goto_0
.end method

.method private switchToImageFastest(I)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mViewOnly:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->setImageChanging(Z)V

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->switchToNext()V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->moveToFastest(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->switchToPrev()V

    goto :goto_1
.end method

.method private switchToNextImage()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mViewOnly:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->setImageChanging(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->switchToNext()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    goto :goto_0
.end method

.method private switchToPrevImage()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mViewOnly:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->setImageChanging(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->switchToPrev()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    goto :goto_0
.end method

.method private updateCameraRect()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private updateLoadingState()V
    .locals 5

    const-wide/16 v2, 0x1f4

    const/16 v4, 0x66

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getLevelCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->getCurrentIcon()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->CLOUD_ONLY_ITEM:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->showIcon(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingState:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->isPreDisplayScreenNailVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isFromCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingState:I

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingState:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->isPreDisplayScreenNailVisible()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public clearTouchSlopWeight()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->setCustomTouchSlop(I)V

    return-void
.end method

.method public createDisplayDateLocationView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "display_date_and_location"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    goto :goto_0
.end method

.method public deleteCurrentImageAfterSlide(I)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->CARD_EFFECT:Z

    if-lez p1, :cond_0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->CARD_RIGHT_OUT:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->CARD_RIGHT_OUT:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    goto :goto_0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->isMoreInfoOn()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_3
    sget-boolean v2, Lcom/sec/android/gallery3d/ui/PhotoView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPreviousImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPreviousImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->isSupportVisionIntelligenceView()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    if-nez v0, :cond_8

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setHoveringIconToDefault(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x71

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_2

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->isCtrlKeyPressed:Z

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->isCtrlKeyPressed:Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x3eb

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x3ea

    if-ne v2, v3, :cond_a

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->isMoreInfoOn()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsDeviceToTvConnect:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->onGenericMotion(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->isSupportVisionIntelligenceView()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/util/GalleryVisionUtils;->isSupportType(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->onGenericMotion(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->onGenericMotion(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_5
    sget-boolean v2, Lcom/sec/android/gallery3d/ui/PhotoView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v0, :cond_6

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPreviousImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPreviousImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->onGenericMotion(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_6
    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->onGenericMotion(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_7
    if-nez v0, :cond_8

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->onGenericMotion(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_8
    if-nez v0, :cond_9

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->onGenericMotion(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_9
    if-nez v0, :cond_a

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_a
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public drawBlurImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const/16 v3, 0x19

    invoke-direct {p0, v2, p1, v3, p2}, Lcom/sec/android/gallery3d/ui/PhotoView;->createBlurImage(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v1, v0}, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getTileImageView()Lcom/sec/android/gallery3d/ui/TileImageView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/android/gallery3d/ui/TileImageView;->invalidateScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;ZZ)V

    :cond_0
    return-void
.end method

.method public endScale()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mMyScaleListener:Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mMyScaleListener:Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    :cond_0
    return-void
.end method

.method public getBurstShotViewerMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsBurstShotViewer:Z

    return v0
.end method

.method public getGestureRecognizer()Lcom/sec/android/gallery3d/ui/GestureRecognizer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    return-object v0
.end method

.method public getIsRotated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsRotated:Z

    return v0
.end method

.method public getNextBound()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextBound:I

    return v0
.end method

.method public getPositionController()Lcom/sec/android/gallery3d/ui/PositionController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    return-object v0
.end method

.method public getPrevBound()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPrevBound:I

    return v0
.end method

.method public getRectOfImage()Landroid/graphics/Rect;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0xc

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0xc

    iput v1, v0, Landroid/graphics/Rect;->right:I

    return-object v0
.end method

.method public getTileImageView()Lcom/sec/android/gallery3d/ui/TileImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    return-object v0
.end method

.method public hasTagShotInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEnvironmentTagView:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEnvironmentTagView:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->getHasTagInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideDeviceToTVView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    return-void
.end method

.method public hidePhotoIconView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setVisibility(I)V

    return-void
.end method

.method public hideVisionObject(Ljava/lang/Boolean;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->hide(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected initAccessibilityListener()V
    .locals 1

    new-instance v0, Lcom/sec/android/gallery3d/ui/PhotoView$12;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/ui/PhotoView$12;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGLViewAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GLViewAccessibility$AccessibilityNodeInfoListener;

    return-void
.end method

.method public initVisionIntelligenceView()V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    new-instance v2, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/ui/PositionController;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    new-instance v4, Lcom/sec/android/gallery3d/ui/PhotoView$5;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$5;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;I)V

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->setOnClickListener(Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAtMinimalScale()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCommentsViewVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->isCommentsViewVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->isCommentsViewVisible(Z)V

    :cond_1
    return-void
.end method

.method public isDisplayDateLocationViewVisible()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "display_date_and_location"

    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEnvironmentTagViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEnvironmentTagView:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEnvironmentTagView:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlippedImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsFlippedImage:Z

    return v0
.end method

.method public jumpTo(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mViewOnly:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFilmstripJump:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->setImageChanging(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->moveTo(I)V

    move v0, v1

    goto :goto_0
.end method

.method public nextImage()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v0

    return v0
.end method

.method public notifyCurrentImageInvalidated()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/TileImageView;->notifyModelInvalidated()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getImageRotation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mImageRotation:I

    new-instance v0, Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Size;-><init>()V

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mImageRotation:I

    div-int/lit8 v1, v1, 0x5a

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageWidth:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageHeight:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->setImageSize(ILcom/sec/android/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->updateLoadingState()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageHeight:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageWidth:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public notifyDataChange([III)V
    .locals 15

    move/from16 v0, p2

    iput v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPrevBound:I

    move/from16 v0, p3

    iput v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextBound:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->showLogReadyToNextImage(Landroid/content/Context;)V

    :cond_0
    iget v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_1

    iget v11, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    const v2, 0x7fffffff

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    const/4 v9, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v9, v2, :cond_1

    aget v2, p1, v9

    if-ne v2, v11, :cond_2

    add-int/lit8 v2, v9, -0x3

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    :cond_1
    const/4 v9, -0x3

    :goto_1
    const/4 v2, 0x3

    if-gt v9, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPictures:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v9}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v13}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->reload()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    add-int/lit8 v3, v9, 0x3

    invoke-interface {v13}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v14

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v3, :cond_4

    const/4 v4, 0x1

    :goto_2
    iget v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v3, :cond_5

    const/4 v5, 0x1

    :goto_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    iget-boolean v8, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFilmstripJump:Z

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/gallery3d/ui/PositionController;->moveBox([IZZZ[Lcom/sec/android/gallery3d/ui/PhotoView$Size;Z)V

    const/4 v9, -0x3

    :goto_4
    const/4 v2, 0x3

    if-gt v9, v2, :cond_6

    invoke-direct {p0, v9}, Lcom/sec/android/gallery3d/ui/PhotoView;->setPictureSize(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v10

    if-eqz v14, :cond_7

    if-nez v10, :cond_7

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v12, v4, v5}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_7
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onSizeChanged()V

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    return-void
.end method

.method public notifyImageChange(I)V
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onCurrentImageUpdated()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/TileImageView;->notifyModelInvalidated()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getImageRotation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mImageRotation:I

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Size;-><init>()V

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mImageRotation:I

    div-int/lit8 v1, v1, 0x5a

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageWidth:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageHeight:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v0, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->setImageSize(ILcom/sec/android/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->updateLoadingState()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v2, 0x200

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getAttribute()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurAttribute:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSubAttribute()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurSubAttribute:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getAttribute()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurAttribute:J

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSubAttribute()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurSubAttribute:J

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->showIcon(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->isSupportVisionIntelligenceView()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->updateVisionIntelligenceView(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/Boolean;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPictures:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->reload()V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->setPictureSize(I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageHeight:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageWidth:I

    iput v1, v0, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public notifyOnNewImage()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Size;-><init>()V

    iput v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    iput v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->setImageSize(ILcom/sec/android/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onClickPhotoIcon()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->onClickIcon(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    sput-boolean v3, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsTablet:Z

    if-lez v2, :cond_0

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v3

    int-to-float v5, v2

    int-to-float v6, v0

    invoke-interface {v3, v5, v6, v2, v0}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->setDimension(FFII)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->initDisplaySize(Landroid/content/Context;)V

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseShareTagImage:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEnvironmentTagView:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEnvironmentTagView:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->onConfigurationChanged()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->isSupportVisionIntelligenceView()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->updateVisionIntelligenceView(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/Boolean;)V

    :cond_2
    sget-boolean v3, Lcom/sec/android/gallery3d/ui/PhotoView;->FEATURE_USE_DISPLAY_DATE_LOCATION:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "display_date_and_location"

    invoke-static {v3, v5, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->onConfigurationChanged()V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v3, v3, Lcom/sec/android/gallery3d/data/UnlockImage;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v3, v3, Lcom/sec/android/gallery3d/data/NoItemImage;

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPictures:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->forceSize()V

    :cond_5
    sget-boolean v3, Lcom/sec/android/gallery3d/ui/PhotoView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v3}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b06be

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayHeight:I

    if-lt v3, v1, :cond_7

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsLargerThanMinimumSize:Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsLargerThanMinimumSize:Z

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->setVisibleForZoomButton(Z)V

    :cond_6
    return-void

    :cond_7
    move v3, v4

    goto :goto_0
.end method

.method public onGenericMotionCancel()V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsDeviceToTvConnect:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->onGenericMotionCancel()V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->isSupportVisionIntelligenceView()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->onGenericMotionCancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->onGenericMotionCancel()V

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/sec/android/gallery3d/ui/PhotoView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPreviousImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->onGenericMotionCancel()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->onGenericMotionCancel()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->onGenericMotionCancel()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->onGenericMotionCancel()V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x71

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_1

    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->isCtrlKeyPressed:Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-eq v2, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_2

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->isCtrlKeyPressed:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    const/4 v7, 0x0

    sub-int v5, p4, p2

    sub-int v1, p5, p3

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-virtual {v6, v7, v7, v5, v1}, Lcom/sec/android/gallery3d/ui/TileImageView;->layout(IIII)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

    invoke-virtual {v6, v7, v7, v5, v1}, Lcom/sec/android/gallery3d/ui/EdgeView;->layout(IIII)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

    invoke-virtual {v6, v7, v7, v7, v7}, Lcom/sec/android/gallery3d/ui/EdgeView;->setPaddings(IIII)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v6, v5, v1}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->measure(II)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->getMeasuredRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->layout(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    invoke-virtual {v6, v5, v1}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->measure(II)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->getMeasuredRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->layout(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->isSupportVisionIntelligenceView()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-virtual {v6, v5, v1}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->measure(II)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getMeasuredRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->layout(Landroid/graphics/Rect;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v6, Lcom/sec/android/gallery3d/ui/PhotoView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v6}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPreviousImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPreviousImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    invoke-virtual {v6, v5, v1}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->measure(II)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPreviousImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPreviousImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->getMeasuredRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->layout(Landroid/graphics/Rect;)V

    :cond_2
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    invoke-virtual {v6, v5, v1}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->measure(II)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->getMeasuredRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->layout(Landroid/graphics/Rect;)V

    :cond_3
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v6, v5, v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->measure(II)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->getMeasuredRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->layout(Landroid/graphics/Rect;)V

    :cond_4
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v6, v5, v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->measure(II)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->getMeasuredRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->layout(Landroid/graphics/Rect;)V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v4

    if-nez v4, :cond_7

    :cond_6
    :goto_1
    return-void

    :cond_7
    invoke-interface {v4}, Lcom/sec/android/gallery3d/ui/GLRoot;->getDisplayRotation()I

    move-result v0

    iget v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    if-eq v6, v0, :cond_9

    iput v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/4 v2, -0x3

    :goto_2
    const/4 v6, 0x3

    if-gt v2, v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPictures:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v2}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->forceSize()V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->updateCameraRect()V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/ui/PositionController;->setConstrainedFrame(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_6

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/gallery3d/ui/PositionController;->setViewSize(II)V

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mViewOnly:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/PositionController;->scaleByPresentation()V

    goto :goto_1
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 8

    const/16 v7, 0xa

    const/4 v0, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v5, 0x9

    const/high16 v4, -0x40800000    # -1.0f

    const-string/jumbo v1, "PhotoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTouch Action ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :sswitch_1
    iput v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDownYPos:F

    iput v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDownXPos:F

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    const/16 v1, 0x70

    const-wide/16 v2, 0x24

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->endScale()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/samsung/gallery/util/BoostHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/BoostHelper;->releaseFlickBoost()V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDownXPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDownYPos:F

    iput v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsVaildScroll:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/samsung/gallery/util/BoostHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/BoostHelper;->acquireFlickBoost()V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->isMoreInfoOn()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->isCtrlKeyPressed:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_3

    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->startScale(F)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->startScale(F)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->isInScale()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->endScale()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->inSlidingAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_6

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetToFullView()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->nextImage()Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_8

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetToFullView()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->previousImage()Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_0
        0x8 -> :sswitch_3
        0x105 -> :sswitch_0
        0x106 -> :sswitch_0
    .end sparse-switch
.end method

.method public pause()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/TileImageView;->freeTextures()V

    const/4 v0, -0x3

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPictures:Lcom/sec/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v1, v3}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->isInTransition()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyTransitionComplete()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsPaused:Z

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAgifMode:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->removeFlippedImage()V

    invoke-virtual {p0, v3, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->setCurrentPhoto(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mViewOnly:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->removeListener(Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;)V

    :cond_4
    return-void
.end method

.method public previousImage()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v0

    return v0
.end method

.method public render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFirst:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPictures:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->reload()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPictures:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/PositionController;->isCenter()Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v19

    if-eqz v19, :cond_3

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFirst:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v5, v0, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/gallery3d/ui/PhotoView;->mFirst:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onFullScreenChanged(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    const/4 v12, 0x0

    :goto_1
    neg-int v8, v12

    :goto_2
    if-gt v8, v12, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v14

    sget-boolean v19, Lcom/sec/android/gallery3d/ui/PhotoView;->sUseTileAlphaBlending:Z

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPictures:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    sget-boolean v20, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v20, :cond_9

    neg-int v0, v8

    move/from16 v20, v0

    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-interface {v0, v1, v14, v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;I)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v19

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_5

    const/4 v10, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHolding:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_6

    const/4 v9, 0x1

    :goto_6
    if-eqz v10, :cond_8

    if-nez v9, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/PositionController;->isCenter()Z

    move-result v19

    if-eqz v19, :cond_7

    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    goto :goto_6

    :cond_7
    const/4 v12, 0x1

    goto :goto_1

    :cond_8
    const/4 v12, 0x3

    goto :goto_1

    :cond_9
    move/from16 v20, v8

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPictures:Lcom/sec/android/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v14}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/sec/android/gallery3d/ui/EdgeView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->renderChild(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/GLView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEnvironmentTagView:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEnvironmentTagView:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->renderChild(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/GLView;)V

    :cond_c
    sget-boolean v19, Lcom/sec/android/gallery3d/ui/PhotoView;->FEATURE_USE_DISPLAY_DATE_LOCATION:Z

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v19

    const-string/jumbo v20, "display_date_and_location"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->renderChild(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/GLView;)V

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFromEmail:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/PositionController;->inSlidingAnimation()Z

    move-result v19

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->renderChild(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/GLView;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->renderChild(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/GLView;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsPaused:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    :cond_f
    :goto_7
    return-void

    :cond_10
    sget-boolean v19, Lcom/sec/android/gallery3d/ui/PhotoView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPreviousImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPreviousImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->renderChild(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/GLView;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->renderChild(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/GLView;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->renderChild(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/GLView;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->renderChild(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/GLView;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/PositionController;->advanceAnimation()Z

    move-result v4

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFilmstripJump:Z

    move/from16 v19, v0

    if-eqz v19, :cond_15

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/gallery3d/ui/PhotoView;->mFilmstripJump:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->setImageChanging(Z)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAgifMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/ui/PositionController;->isInScale()Z

    move-result v19

    if-nez v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->interfaceonAgifPlayRequests()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v6

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    div-int/lit8 v18, v6, 0x2

    move/from16 v0, v16

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4004000000000000L    # 2.5

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v15, v0

    sget-boolean v19, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsTablet:Z

    if-eqz v19, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4016000000000000L    # 5.5

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v15, v0

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingProgressState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingText:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getLoadingSpinner()Lcom/sec/android/gallery3d/ui/ProgressSpinner;

    move-result-object v14

    move v7, v15

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v19, v17, v19

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v20, v18, v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Lcom/sec/android/gallery3d/ui/ProgressSpinner;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v19, v17, v19

    div-int/lit8 v20, v7, 0x2

    add-int v20, v20, v18

    add-int/lit8 v20, v20, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v11, v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsBurstShotViewer:Z

    move/from16 v19, v0

    if-nez v19, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFromEmail:Z

    move/from16 v19, v0

    if-nez v19, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHideVideoIcon:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsExternalDisplayConnected:Z

    move/from16 v19, v0

    if-nez v19, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->hidePhotoIconView()V

    :goto_8
    if-eqz v4, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    goto/16 :goto_7

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->showPhotoIconView()V

    goto :goto_8
.end method

.method public resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAgifMode:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAgifMode:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->runIdleListener()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAGIFPlayBoost:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAgifMode:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAGIFPlayBoost:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public resetToFullView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->resetToFullView()V

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public resetToFullViewNoAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->resetToFullViewNoAnimation()V

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 6

    const-wide/16 v4, 0x200

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsPaused:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->initAlphaBlendingAnimation()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->setImageChanging(Z)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "burstshot_count"

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotCount(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setBundle(Landroid/os/Bundle;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/TileImageView;->prepareTextures()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->isSupportVisionIntelligenceView()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->initVisionIntelligenceView()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mViewOnly:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->addListener(Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;)V

    :cond_4
    sget-boolean v2, Lcom/sec/android/gallery3d/ui/PhotoView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b06be

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayHeight:I

    if-lt v2, v1, :cond_6

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsLargerThanMinimumSize:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsLargerThanMinimumSize:Z

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->setVisibleForZoomButton(Z)V

    :cond_5
    return-void

    :cond_6
    move v2, v3

    goto :goto_0
.end method

.method public setBurstShotCount(I)V
    .locals 3

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "burstshot_count"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setBundle(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    sget-object v2, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ICON:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setCurrentIcon(Lcom/sec/android/gallery3d/ui/playicon/IconType;)V

    goto :goto_0
.end method

.method public setBurstShotViewerMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsBurstShotViewer:Z

    return-void
.end method

.method public setChangeNotifierActive(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/DataManager;->setChangeNotifierActive(Z)V

    return-void
.end method

.method public setCurrentPhoto(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getAttribute()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurAttribute:J

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getSubAttribute()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurSubAttribute:J

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->sendItemChanged(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mShowPrivateIcon:Z

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->showIcon(Lcom/sec/android/gallery3d/data/MediaItem;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->isSupportVisionIntelligenceView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->updateVisionIntelligenceView(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public setExternalDisplayConnected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsExternalDisplayConnected:Z

    return-void
.end method

.method public setFlipPhoto()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->isFlippedImage()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setFlippedImage(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public setHideBarTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHideBarTimeout:I

    return-void
.end method

.method public setHideVideoIcon(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHideVideoIcon:Z

    return-void
.end method

.method public setIsExpansionMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->setIsExpansionMode(Z)V

    :cond_0
    return-void
.end method

.method public setIsFlipped(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsFlippedImage:Z

    return-void
.end method

.method public setIsFromEmail(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mFromEmail:Z

    return-void
.end method

.method public setIsFromRecycleBin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsFromRecycleBin:Z

    return-void
.end method

.method public setIsRotated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsRotated:Z

    return-void
.end method

.method public setIsSelectionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsSelectionMode:Z

    return-void
.end method

.method public setIsSingleViewMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->setIsSingleViewMode(Z)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/sec/android/gallery3d/ui/PhotoView$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    return-void
.end method

.method public setModel(Lcom/sec/android/gallery3d/ui/PhotoView$Model;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTileView:Lcom/sec/android/gallery3d/ui/TileImageView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/TileImageView;->setModel(Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;)V

    return-void
.end method

.method public setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    return-void
.end method

.method public setPhotoIconBundle(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setScalePrepared(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/PositionController;->setScalePrepared(Z)V

    :cond_0
    return-void
.end method

.method public setScreenSize()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->requestLayout()V

    return-void
.end method

.method public setShowBarState(Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEnvironmentTagView:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->getCurrentMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_5

    const-wide/32 v4, 0x400000

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsEnvironmentTagged:Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEnvironmentTagView:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsEnvironmentTagged:Z

    invoke-virtual {v1, p1, v4}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->setShowBarState(ZZ)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "display_date_and_location"

    invoke-static {v1, v4, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->getCurrentMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_6

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsDisplayDateLocationView:Z

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsDisplayDateLocationView:Z

    invoke-virtual {v1, p1, v4}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setShowBarState(ZZ)V

    :cond_3
    sget-boolean v1, Lcom/sec/android/gallery3d/ui/PhotoView;->USE_VIDEO_AUTO_PLAY:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->getCurrentIcon()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v1

    sget-object v4, Lcom/sec/android/gallery3d/ui/playicon/IconType;->VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {v1, v4}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isLocalVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p1, :cond_7

    :goto_2
    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->setHideVideoIcon(Z)V

    :cond_4
    return-void

    :cond_5
    move v1, v3

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_2
.end method

.method public setTouchSlopWeight(F)V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->clearTouchSlopWeight()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->setCustomTouchSlop(I)V

    goto :goto_0
.end method

.method public setUserInteractionListener(Lcom/sec/android/gallery3d/ui/UserInteractionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mUserInteractionListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    return-void
.end method

.method public setVisibleForNavigatingButton(Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPreviousImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPreviousImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mNextImageButtonView:Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/HorizontalNavigationImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public setVisibleForZoomButton(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsLargerThanMinimumSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/sec/android/gallery3d/ui/PhotoView;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomInImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mZoomOutImageView:Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWantPictureCenterCallbacks(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    return-void
.end method

.method public showDeviceToTVView()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->isShowDeviceToTvIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsDeviceToTvConnect:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->setConnected(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->setOffset(IIII)V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mInsertLog:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "SCSR"

    const-string/jumbo v2, "show"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mInsertLog:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->isShowDeviceToTvDisconnectIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "DTVW"

    const-string/jumbo v2, "Connected Device to TV"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsDeviceToTvConnect:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseScreenSharing:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->hideDeviceToTVView()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->setConnected(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->setOffset(IIII)V

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsDeviceToTvConnect:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView;->hideDeviceToTVView()V

    goto :goto_0
.end method

.method public showPhotoIconView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->isBurstShot(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BROKEN_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setCurrentIcon(Lcom/sec/android/gallery3d/ui/playicon/IconType;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BROKEN_IMAGE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setCurrentIcon(Lcom/sec/android/gallery3d/ui/playicon/IconType;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->getCurrentIcon()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BROKEN_VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->getCurrentIcon()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->BROKEN_IMAGE:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-ne v0, v1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    sget-object v1, Lcom/sec/android/gallery3d/ui/playicon/IconType;->NO_ICON:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setCurrentIcon(Lcom/sec/android/gallery3d/ui/playicon/IconType;)V

    goto :goto_0
.end method

.method public showVisionObject(Ljava/lang/Boolean;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->getObjectRect(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->show(Ljava/lang/Boolean;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->show(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->hide(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public startScale(F)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mMyScaleListener:Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->isInScale()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mMyScaleListener:Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mMyScaleListener:Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->onScale(Landroid/view/ScaleGestureDetector;F)Z

    goto :goto_0
.end method

.method public startSlideInAnimation(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->stopAnimation()V

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iput p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->startHorizontalSlide()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public switchToImage(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mViewOnly:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    goto :goto_0
.end method

.method public updateBurstShotCount()V
    .locals 4

    const-wide/16 v2, 0x200

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "burstshot_count"

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotCount(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->setBundle(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public updateDisplayDateLocationView(Lcom/sec/android/gallery3d/data/MediaItem;ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "display_date_and_location"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mDisplayDateLocationView:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setDisplayDateLocationView(Lcom/sec/android/gallery3d/data/MediaItem;ZZ)V

    :cond_0
    return-void
.end method

.method public updateEnvironmentTagView(Lcom/sec/android/gallery3d/data/MediaItem;ZZ)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseShareTagImage:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEnvironmentTagView:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mEnvironmentTagView:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->setEnvironmentTagView(Lcom/sec/android/gallery3d/data/MediaItem;ZZ)V

    :cond_0
    return-void
.end method

.method public updateVisionIntelligenceView(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/Boolean;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->setVisionIntelligenceIconView(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->getObjectRect(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->getCMHDone(I)I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->setObjectRect(Landroid/graphics/RectF;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTagDatas:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTagDatas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mTagDatas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->setObjectTagData(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->setIsObjectSearch(Z)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->updateLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_0
.end method
