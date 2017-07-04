.class public Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;
.super Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
.source "Image360Viewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageDecodeListener;,
        Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageFileObserver;,
        Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ViewModeSelectionListener;,
        Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$GestureListener;,
        Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$OnLongClickListener;,
        Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$GenericMotionListener;
    }
.end annotation


# static fields
.field private static final ANDROID:Ljava/lang/String; = "android"

.field private static final CAPTURE_FILENAME_EXTENSION:Ljava/lang/String; = ".jpg"

.field private static final CURRENT_VIEW_MODE:Ljava/lang/String; = "current_view_mode"

.field private static final DEFAULT_SENSOR_STATE:Z = true

.field private static final DEFAULT_VIEW_MODE:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

.field private static final DIMEN:Ljava/lang/String; = "dimen"

.field private static final FADE_IN_OUT_ALPHA_HIGH:F = 1.0f

.field private static final FADE_IN_OUT_ALPHA_LOW:F = 0.0f

.field private static final FAST_OPTION_FADE_IN_OUT_DURATION_MS:I = 0x64

.field private static final FEATURE_TALK_BACK_ENABLED:Z

.field private static final FEATURE_USE_DEVICE_COG:Z

.field private static final FEATURE_USE_NAVIGATION_BAR:Z

.field private static final FEATURE_USE_TAB_UI:Z

.field private static final HIDE_BARS_TIMEOUT:I = 0xdac

.field public static final IS_CLOUD_IMAGE:Ljava/lang/String; = "isCloudImage"

.field private static final MASK_ZERO_ALPHA:I = 0xffffff

.field public static final MEDIA_ITEM_PATH:Ljava/lang/String; = "mediaItemPath"

.field public static final MEDIA_PATH:Ljava/lang/String; = "mediaPath"

.field private static final MSG_CAPTURE_IMAGE_DC:I = 0x4

.field private static final MSG_CAPTURE_IMAGE_DELAYED_TIME_MS:I = 0x1f4

.field private static final MSG_DELAYED_TIME_MS:I = 0xc8

.field private static final MSG_GET_OVERFLOW_ICON_ID:I = 0x3

.field private static final MSG_HIDE_BARS:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x2

.field private static final NAVIGATION_BAR_HEIGHT:Ljava/lang/String; = "navigation_bar_height"

.field private static final PLAYBACK_DIRECTION_VISIBILITY:Ljava/lang/String; = "playback_direction_visibility"

.field private static final SENSOR_STATE:Ljava/lang/String; = "sensor_state"

.field private static final TAG:Ljava/lang/String; = "Image360Viewer"

.field private static final TARGET_IMAGE_SIZE_HIGH:I = 0x800

.field private static final TARGET_IMAGE_SIZE_LOW:I = 0x200

.field private static final VR_FILE_URI_PREFIX:Ljava/lang/String; = "file://"

.field private static final VR_GALLERY2_ACTIVITY_NAME:Ljava/lang/String; = "com.samsung.android.app.vr.gallery2.MainActivity"

.field private static final VR_GALLERY2_PKG_NAME:Ljava/lang/String; = "com.samsung.android.app.vr.gallery2"

.field private static final VR_GALLERY_ACTIVITY_NAME:Ljava/lang/String; = "com.samsung.android.app.vr.gallery.UnityPlayerNativeActivity"

.field private static final VR_GALLERY_PKG_NAME:Ljava/lang/String; = "com.samsung.android.app.vr.gallery"

.field public static final VR_VIEW_MODE_TYPE:Ljava/lang/String; = "viewmode"

.field private static final VR_WAIT_TITLE_NAME:Ljava/lang/String; = "wait_title"

.field private static sMultiWindowFilename:Ljava/lang/String;

.field private static volatile sScreenCaptureToken:I


# instance fields
.field private m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

.field private mActionBar:Landroid/app/ActionBar;

.field private final mBackStackChangeListener:Landroid/app/FragmentManager$OnBackStackChangedListener;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureFilePath:Ljava/lang/String;

.field private mCaptureFilename:Ljava/lang/String;

.field private mCurrentViewMode:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

.field private mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

.field private mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

.field private final mErrorListener:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mFastOptionBackgroundColor:I

.field private mFastOptionFadeInAnim:Landroid/view/animation/Animation;

.field private mFastOptionFadeOutAnim:Landroid/view/animation/Animation;

.field private mFastOptionLayout:Landroid/widget/LinearLayout;

.field private mFilePath:Ljava/lang/String;

.field private final mFutureTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/util/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mGenericMotionListener:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$GenericMotionListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGlView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mImgBubblePicker:Landroid/widget/ImageView;

.field private mIsCaptureInProgress:Z

.field private mIsDestroyed:Z

.field private mIsFastOptionLongPressed:Z

.field private mIsMenuVisible:Z

.field private mIsPlaybackOptionVisible:Z

.field private mIsSensorEnabled:Z

.field private mIsViewModeLongPressed:Z

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mMenu:Landroid/view/Menu;

.field private final mMenuVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

.field private mMotionLayout:Landroid/widget/LinearLayout;

.field private mObserver:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageFileObserver;

.field private mOnLongClickListener:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$OnLongClickListener;

.field private mOverFlowView:Landroid/view/View;

.field private mPlaybackDirection:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

.field private mPlaybackFragment:Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;

.field private mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mResetLayout:Landroid/widget/LinearLayout;

.field private final mSaveCompletedListener:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

.field private mVRActivityName:Ljava/lang/String;

.field private mVRPackageInfo:Landroid/content/pm/PackageInfo;

.field private mVRPackageName:Ljava/lang/String;

.field private final mViewModeIcons:[I

.field private mViewModeLayout:Landroid/widget/LinearLayout;

.field private final mViewModeNames:[I

.field private final mViewModeNamesWithView:[I

.field private mViewModeSelector:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_USE_TAB_UI:Z

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_TALK_BACK_ENABLED:Z

    sget-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->MIRROR_BALL:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->DEFAULT_VIEW_MODE:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_USE_NAVIGATION_BAR:Z

    const/4 v0, 0x1

    sput v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->sScreenCaptureToken:I

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->sMultiWindowFilename:Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_USE_DEVICE_COG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeIcons:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeNamesWithView:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeNames:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFutureTaskList:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->FRONT:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mPlaybackDirection:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMenu:Landroid/view/Menu;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mImgBubblePicker:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMotionLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mResetLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsSensorEnabled:Z

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCurrentViewMode:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mVRPackageInfo:Landroid/content/pm/PackageInfo;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mVRActivityName:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mVRPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCaptureFilename:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCaptureFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mObserver:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageFileObserver;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsPlaybackOptionVisible:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsFastOptionLongPressed:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsViewModeLongPressed:Z

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mOverFlowView:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mPlaybackFragment:Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMenuVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mBackStackChangeListener:Landroid/app/FragmentManager$OnBackStackChangedListener;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsCaptureInProgress:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$4;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mSaveCompletedListener:Ljava/util/concurrent/Callable;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsDestroyed:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$5;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mErrorListener:Ljava/util/concurrent/Callable;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02016f
        0x7f0201a6
        0x7f0201b3
        0x7f02017c
        0x7f02019b
    .end array-data

    :array_1
    .array-data 4
        0x7f0a01cb
        0x7f0a01d1
        0x7f0a01d3
        0x7f0a01cd
        0x7f0a01cf
    .end array-data

    :array_2
    .array-data 4
        0x7f0a01ca
        0x7f0a01d0
        0x7f0a01d2
        0x7f0a01cc
        0x7f0a01ce
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->setBubblePickerLocation()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsMenuVisible:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->hideBars(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getOverFlowIconId()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->captureView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->refreshActionBarMessages(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsFastOptionLongPressed:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsViewModeLongPressed:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->changeViewMode(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Lcom/sec/android/gallery3d/util/Future;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->updateBitmap(Lcom/sec/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2800()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_USE_NAVIGATION_BAR:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->resetFastOptionView()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Landroid/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->onPlaybackOptionsClosed(Landroid/app/FragmentManager;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCaptureFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Lcom/samsung/android/gallery360viewer/IGallery360Viewer;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->showToast(I)V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_USE_DEVICE_COG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsCaptureInProgress:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsCaptureInProgress:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsDestroyed:Z

    return p1
.end method

.method private captureView()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGlView:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getScreenCaptureFilename()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCaptureFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCaptureFilename:Ljava/lang/String;

    sget-object v3, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->sMultiWindowFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCaptureFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->sScreenCaptureToken:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->sScreenCaptureToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCaptureFilename:Ljava/lang/String;

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCaptureFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCaptureFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsCaptureInProgress:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCaptureFilename:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mSaveCompletedListener:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer;->save(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCaptureFilename:Ljava/lang/String;

    sput-object v2, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->sMultiWindowFilename:Ljava/lang/String;

    goto :goto_1
.end method

.method private changeViewMode(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCurrentViewMode:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->setViewIcon(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    invoke-interface {v1, p1}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer;->setViewMode(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCurrentViewMode:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Image360Viewer"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private createSystemUiVisibilityChangeListener()Landroid/view/View$OnSystemUiVisibilityChangeListener;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$7;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$7;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V

    return-object v0
.end method

.method private createViewIcon(I)Landroid/widget/ImageView;
    .locals 4

    const v3, 0x7f0b05ec

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeIcons:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x7f10010f

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-object v0
.end method

.method private createViewTitle(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 5

    const/4 v2, -0x2

    const/4 v4, 0x0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0c00c7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    return-object v1
.end method

.method private getCurrentTime()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd-HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getNavigationBarHeight()I
    .locals 6

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsImmersiveMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_0

    if-lez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getOverFlowIconId()I
    .locals 5

    const/4 v4, -0x1

    const v3, 0x7f0a0266

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mOverFlowView:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mOverFlowView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mOverFlowView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private getScreenCaptureFilename()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCaptureFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleDCCaptureView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private handleDCChangeSaveDefaultDirection(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v2, "front"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->FRONT:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    invoke-virtual {v2}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->ordinal()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mPlaybackFragment:Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mPlaybackFragment:Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->saveDefaultDirection(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mPlaybackFragment:Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->resetView()Z

    sget-object v2, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->FRONT:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    invoke-virtual {v2}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_2

    const v2, 0x7f0a0587

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    :goto_1
    const-string/jumbo v2, "Save"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v2, v3, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_2
    return-void

    :cond_0
    const-string/jumbo v2, "rear"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->REAR:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    invoke-virtual {v2}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->FRONT:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    invoke-virtual {v2}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_2
    const v2, 0x7f0a0586

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "Save"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_2
.end method

.method private handleDCChangeViewMode(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v2, "360"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->MIRROR_BALL:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->handleNlgForViewMode(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v2, "Dual"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->DUAL:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "Panoramic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->PANORAMA:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "Round"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->LITTLE_PLANET:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "Stretched"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->SPREAD:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    goto :goto_0

    :cond_4
    const v2, 0x7f0a0590

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    const-string/jumbo v2, "ViewMode"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1
.end method

.method private handleDCReset()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->resetView()Z

    move-result v0

    if-eqz v0, :cond_0

    const v2, 0x7f0a058e

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string/jumbo v2, "Reset"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v2, v3, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f0a058d

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string/jumbo v2, "Reset"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v2, v3, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0
.end method

.method private handleDCSetMotionView(I)V
    .locals 3

    const/4 v2, 0x0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EVENT_360_VIEWER_MOTION_VIEW_ON:I

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsSensorEnabled:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0a0589

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "MotionViewOn"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v1, v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsSensorEnabled:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->updateMotionViewStatus()V

    const v1, 0x7f0a058a

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsSensorEnabled:Z

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsSensorEnabled:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->updateMotionViewStatus()V

    const v1, 0x7f0a058c

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    :goto_2
    const-string/jumbo v1, "MotionViewOff"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v1, v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1

    :cond_2
    const v1, 0x7f0a058b

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    goto :goto_2
.end method

.method private handleNlgForViewMode(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCurrentViewMode:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->changeViewMode(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V

    :cond_0
    if-eqz v0, :cond_2

    const v2, 0x7f0a0591

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string/jumbo v2, "ViewMode"

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeNames:[I

    invoke-virtual {p1}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v2, "ViewMode"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v2, v3, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    const v2, 0x7f0a0592

    goto :goto_1
.end method

.method private hideBars(Z)V
    .locals 12

    const-wide/16 v10, 0x64

    const/4 v8, 0x1

    const/16 v5, 0x8

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsPlaybackOptionVisible:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->setShowHideAnimationEnabled(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mImgBubblePicker:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionFadeOutAnim:Landroid/view/animation/Animation;

    if-nez v2, :cond_3

    const/16 v2, 0x67

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionFadeOutAnim:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionFadeOutAnim:Landroid/view/animation/Animation;

    invoke-direct {p0, v7, v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->updateFastOptionLayout(ZLandroid/view/animation/Animation;)V

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->hideNavigationBar()V

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGlView:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGlView:Landroid/view/View;

    const-string/jumbo v3, "backgroundColor"

    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionBackgroundColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionBackgroundColor:I

    const v7, 0xffffff

    and-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_7
    return-void
.end method

.method private hideNavigationBar()V
    .locals 2

    sget-boolean v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_USE_NAVIGATION_BAR:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x702

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x1000

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void

    :cond_1
    or-int/lit16 v0, v0, 0x800

    goto :goto_0
.end method

.method private initActionBar()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_2

    const v2, 0x7f020327

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const v2, 0x7f100112

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    const v2, 0x7f130001

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMenu:Landroid/view/Menu;

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMenuVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    :cond_2
    return-void
.end method

.method private initFastOptionView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->initViewModeBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCurrentViewMode:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->setViewIcon(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V

    const v0, 0x7f12010f

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->initMotionViewLayout()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->initResetView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->initViewModeSelector()V

    goto :goto_0
.end method

.method private initMotionViewLayout()V
    .locals 3

    const v1, 0x7f12010a

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMotionLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMotionLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mOnLongClickListener:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getUpImageButton(Landroid/app/Activity;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setNextFocusLeftId(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearFocus()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->updateMotionViewStatus()V

    sget-boolean v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_TALK_BACK_ENABLED:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMotionLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGenericMotionListener:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$GenericMotionListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :cond_1
    return-void
.end method

.method private initResetView()V
    .locals 2

    const v0, 0x7f12010b

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mResetLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mResetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mResetLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mOnLongClickListener:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mResetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_TALK_BACK_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mResetLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGenericMotionListener:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$GenericMotionListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f12010e

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mErrorListener:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer;->setErrorListener(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method private initViewModeBar()V
    .locals 9

    const v6, 0x7f120111

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mImgBubblePicker:Landroid/widget/ImageView;

    const v6, 0x7f120110

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeIcons:[I

    array-length v6, v6

    if-ge v0, v6, :cond_1

    const v6, 0x7f040071

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f12011a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v6, 0x7f0200e4

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->createViewIcon(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeNames:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->createViewTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ViewModeSelectionListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ViewModeSelectionListener;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$1;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mOnLongClickListener:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$OnLongClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-boolean v6, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_TALK_BACK_ENABLED:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGenericMotionListener:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$GenericMotionListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->values()[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->ordinal()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initViewModeSelector()V
    .locals 2

    const v0, 0x7f12010c

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mOnLongClickListener:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_TALK_BACK_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGenericMotionListener:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$GenericMotionListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :cond_0
    return-void
.end method

.method private isKeyEventConsumed()Z
    .locals 4

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsPlaybackOptionVisible:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f120119

    if-ne v2, v3, :cond_2

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->showBars(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->refreshActionBarMessages(Z)V

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchGearVRView()V
    .locals 6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mVRPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mVRActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "viewmode"

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "viewmode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "wait_title"

    const v3, 0x7f0a01dc

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x10010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchPlaybackOptionsView()V
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpUtils;->ReadFromXMP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->valueOf(Ljava/lang/String;)Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mPlaybackDirection:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    :cond_0
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsSensorEnabled:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->stopAutoRotation()V

    :cond_1
    sget-boolean v3, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_USE_NAVIGATION_BAR:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/high16 v3, 0x7f060000

    const v4, 0x7f060001

    invoke-virtual {v1, v3, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;-><init>()V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mPlaybackFragment:Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mPlaybackFragment:Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mPlaybackDirection:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    invoke-virtual {v5}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->ordinal()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->setInitValues(Ljava/lang/String;I)V

    const v3, 0x7f12010d

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mPlaybackFragment:Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;

    invoke-virtual {v1, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsPlaybackOptionVisible:Z

    return-void
.end method

.method private onPlaybackOptionsClosed(Landroid/app/FragmentManager;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->refreshActionBarMessages(Z)V

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsPlaybackOptionVisible:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsSensorEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->startAutoRotation()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    sget-boolean v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_USE_NAVIGATION_BAR:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->resetFastOptionView()V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestFocus()Z

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGlView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGlView:Landroid/view/View;

    iget v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return-void
.end method

.method private refreshActionBarMessages(Z)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsFastOptionLongPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsViewModeLongPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsMenuVisible:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private resetFastOptionView()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getNavigationBarHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private resetView()Z
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpUtils;->ReadFromXMP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->valueOf(Ljava/lang/String;)Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mPlaybackDirection:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mPlaybackDirection:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    invoke-virtual {v2}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->ordinal()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer;->resetView(I)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setBubblePickerLocation()V
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x2

    new-array v2, v3, [I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mImgBubblePicker:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v1, v3, 0x2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mImgBubblePicker:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aget v4, v2, v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_0
.end method

.method private setHandler()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$6;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$6;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private setVRPackageInfo()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "com.samsung.android.app.vr.gallery2"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mVRPackageInfo:Landroid/content/pm/PackageInfo;

    const-string/jumbo v3, "com.samsung.android.app.vr.gallery2"

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mVRPackageName:Ljava/lang/String;

    const-string/jumbo v3, "com.samsung.android.app.vr.gallery2.MainActivity"

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mVRActivityName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v3, "com.samsung.android.app.vr.gallery"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mVRPackageInfo:Landroid/content/pm/PackageInfo;

    const-string/jumbo v3, "com.samsung.android.app.vr.gallery"

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mVRPackageName:Ljava/lang/String;

    const-string/jumbo v3, "com.samsung.android.app.vr.gallery.UnityPlayerNativeActivity"

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mVRActivityName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v3, "Image360Viewer"

    const-string/jumbo v4, "VR Gallery package is not present"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setViewIcon(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    const v4, 0x7f12010c

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeIcons:[I

    invoke-virtual {p1}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeNamesWithView:[I

    invoke-virtual {p1}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mImgBubblePicker:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4, v8}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->updateFastOptionState(Landroid/widget/LinearLayout;Z)V

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMotionLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mResetLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mResetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    :cond_4
    return-void
.end method

.method private showBars(Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->setShowHideAnimationEnabled(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionFadeInAnim:Landroid/view/animation/Animation;

    if-nez v1, :cond_1

    const/16 v1, 0x67

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionFadeInAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionFadeInAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionFadeInAnim:Landroid/view/animation/Animation;

    invoke-direct {p0, v4, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->updateFastOptionLayout(ZLandroid/view/animation/Animation;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mResetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v5}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->updateFastOptionState(Landroid/widget/LinearLayout;Z)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->showNavigationBar()V

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->refreshActionBarMessages(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGlView:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGlView:Landroid/view/View;

    iget v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    return-void
.end method

.method private showNavigationBar()V
    .locals 2

    sget-boolean v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_USE_NAVIGATION_BAR:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x700

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x1002

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method private showToast(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startAutoRotation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    invoke-interface {v0}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer;->startAutoRotation()V

    :cond_0
    return-void
.end method

.method private startBitmapDecoderTask()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/spherical/Gallery360DecodeJob;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFilePath:Ljava/lang/String;

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/spherical/Gallery360DecodeJob;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageDecodeListener;

    invoke-direct {v3, p0, v5}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageDecodeListener;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFutureTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/spherical/Gallery360DecodeJob;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFilePath:Ljava/lang/String;

    const/16 v4, 0x800

    invoke-direct {v2, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/spherical/Gallery360DecodeJob;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageDecodeListener;

    invoke-direct {v3, p0, v5}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageDecodeListener;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFutureTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private startDefaultView()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpUtils;->ReadFromXMP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->valueOf(Ljava/lang/String;)Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mPlaybackDirection:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mPlaybackDirection:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    invoke-virtual {v2}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->ordinal()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer;->resetView(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    invoke-interface {v2}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCurrentViewMode:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    invoke-interface {v1, v2}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer;->setViewMode(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    invoke-interface {v1}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGlView:Landroid/view/View;

    return-void
.end method

.method private stopAutoRotation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    invoke-interface {v0}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer;->stopAutoRotation()V

    :cond_0
    return-void
.end method

.method private toggleViewModeSelector()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsViewModeLongPressed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mImgBubblePicker:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mResetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->updateFastOptionState(Landroid/widget/LinearLayout;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mImgBubblePicker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mResetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeSelector:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->updateFastOptionState(Landroid/widget/LinearLayout;Z)V

    goto :goto_0
.end method

.method private updateBitmap(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    invoke-interface {v2, v0}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer;->setInputImage(Landroid/graphics/Bitmap;)V

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCurrentViewMode:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    invoke-interface {v2, v3}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer;->setViewMode(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mBitmap:Landroid/graphics/Bitmap;

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Image360Viewer"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const v2, 0x7f0a01c9

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->showToast(I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->finish()V

    goto :goto_1
.end method

.method private updateFastOptionLayout(ZLandroid/view/animation/Animation;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private updateFastOptionState(Landroid/widget/LinearLayout;Z)V
    .locals 4

    const v3, 0x7f100112

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f10010f

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1000e8

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateMotionViewStatus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMotionLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsSensorEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMotionLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->updateFastOptionState(Landroid/widget/LinearLayout;Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->startAutoRotation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMotionLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->updateFastOptionState(Landroid/widget/LinearLayout;Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->stopAutoRotation()V

    goto :goto_0
.end method


# virtual methods
.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mPlaybackFragment:Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mPlaybackFragment:Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DefaultLensView"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "360PhotoViewer"

    goto :goto_0
.end method

.method public getNextExpectedState(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsSensorEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->stopAutoRotation()V

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityOnBackPressed(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->finish()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->refreshActionBarMessages(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->resetView()Z

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsSensorEnabled:Z

    if-nez v1, :cond_0

    :goto_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsSensorEnabled:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->updateMotionViewStatus()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->toggleViewModeSelector()V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->hideBars(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->showBars(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f12010a
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->resetFastOptionView()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x1000

    or-int/lit8 v1, v2, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    if-eqz p1, :cond_2

    const-string/jumbo v1, "current_view_mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->values()[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCurrentViewMode:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    const-string/jumbo v1, "sensor_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsSensorEnabled:Z

    const-string/jumbo v1, "playback_direction_visibility"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsPlaybackOptionVisible:Z

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setMultiWindow(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->setVRPackageInfo()V

    const v1, 0x7f04006f

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->createSystemUiVisibilityChangeListener()Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "mediaItemPath"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFilePath:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFilePath:Ljava/lang/String;

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCaptureFilePath:Ljava/lang/String;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageFileObserver;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v5}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageFileObserver;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Ljava/lang/String;Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mObserver:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageFileObserver;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mObserver:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageFileObserver;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageFileObserver;->startWatching()V

    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->setHandler()V

    sget-boolean v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_USE_TAB_UI:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setNeedTabUI(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->initView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->startDefaultView()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->startBitmapDecoderTask()V

    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$GestureListener;

    invoke-direct {v2, p0, v5}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$GestureListener;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$1;)V

    invoke-direct {v1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$OnLongClickListener;

    invoke-direct {v1, p0, v5}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$OnLongClickListener;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mOnLongClickListener:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$OnLongClickListener;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$GenericMotionListener;

    invoke-direct {v1, p0, v5}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$GenericMotionListener;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGenericMotionListener:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$GenericMotionListener;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->initActionBar()V

    const v1, 0x7f1000eb

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionBackgroundColor:I

    sget-boolean v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/devicecog/gallery/DeviceCogImage360ViewerListenerImpl;

    invoke-direct {v1, p0, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogImage360ViewerListenerImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    new-instance v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/Image360ViewerDCHandler;

    invoke-direct {v1, p0, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/Image360ViewerDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    :cond_1
    return-void

    :cond_2
    sget-object v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->DEFAULT_VIEW_MODE:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCurrentViewMode:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsSensorEnabled:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsPlaybackOptionVisible:Z

    goto/16 :goto_0

    :cond_3
    const v1, 0x7f0a01c9

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->showToast(I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->finish()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f130001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDCParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFutureTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    invoke-interface {v1}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer;->onDestroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mObserver:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageFileObserver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mObserver:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageFileObserver;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageFileObserver;->stopWatching()V

    :cond_3
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->isKeyEventConsumed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->isKeyEventConsumed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsPlaybackOptionVisible:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->showBars(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->refreshActionBarMessages(Z)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->isKeyEventConsumed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onMultiWindowModeChanged(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->resetFastOptionView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->refreshActionBarMessages(Z)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return v2

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->launchPlaybackOptionsView()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->launchGearVRView()V

    goto :goto_0

    :sswitch_3
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsCaptureInProgress:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->captureView()Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f120272 -> :sswitch_2
        0x7f120273 -> :sswitch_3
        0x7f120274 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->closeOptionsMenu()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    invoke-interface {v0}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer;->onPause()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mBackStackChangeListener:Landroid/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityPause()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const v4, 0x7f120272

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mVRPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isCloudImage"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mMenu:Landroid/view/Menu;

    return v3

    :cond_0
    const v0, 0x7f120273

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->m360Viewer:Lcom/samsung/android/gallery360viewer/IGallery360Viewer;

    invoke-interface {v1}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer;->onResume()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->initFastOptionView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->resetFastOptionView()V

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getUpImageButton(Landroid/app/Activity;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f100112

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mBackStackChangeListener:Landroid/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsPlaybackOptionVisible:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->showBars(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mOverFlowView:Landroid/view/View;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    sget-boolean v1, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v1}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityResume()V

    :cond_3
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "current_view_mode"

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mCurrentViewMode:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    invoke-virtual {v1}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "sensor_state"

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsSensorEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "playback_direction_visibility"

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsPlaybackOptionVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x7f12010e

    if-eq v1, v3, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mFastOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsFastOptionLongPressed:Z

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsFastOptionLongPressed:Z

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->refreshActionBarMessages(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsViewModeLongPressed:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mIsViewModeLongPressed:Z

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->refreshActionBarMessages(Z)V

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGlView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mGlView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setPlaybackDirection(I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->values()[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mPlaybackDirection:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6

    move-object v1, p2

    check-cast v1, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v2

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EVENT_360_VIEWER_CAPTURE_IMAGE:I

    if-ne v2, v4, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->handleDCCaptureView()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EVENT_360_VIEWER_DEFAULT_LENS_VIEW:I

    if-ne v2, v4, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->launchPlaybackOptionsView()V

    const-string/jumbo v4, "DefaultLensView"

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v4, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0

    :cond_2
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EVENT_360_VIEWER_MOTION_VIEW_ON:I

    if-eq v2, v4, :cond_3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EVENT_360_VIEWER_MOTION_VIEW_OFF:I

    if-ne v2, v4, :cond_4

    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->handleDCSetMotionView(I)V

    goto :goto_0

    :cond_4
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EVENT_360_VIEWER_RESET:I

    if-ne v2, v4, :cond_5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->handleDCReset()V

    goto :goto_0

    :cond_5
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EVENT_360_VIEWER_VIEW_MODE:I

    if-ne v2, v4, :cond_6

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->handleDCChangeViewMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EVENT_360_VIEWER_SAVE:I

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->handleDCChangeSaveDefaultDirection(Ljava/lang/String;)V

    goto :goto_0
.end method
