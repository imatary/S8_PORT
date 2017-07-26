.class public Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;
.super Landroid/app/Activity;
.source "KeyguardCropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$1;,
        Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;,
        Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;,
        Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;,
        Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$UpdateUsedAsWallpaperTask;
    }
.end annotation


# static fields
.field private static final synthetic -com-sec-android-wallpapercropper2-KeyguardCropActivity$DualModeViewSwitchesValues:[I = null

.field public static final BOTHSCREEN_POSITION:I = 0x3

.field private static final CUSTOM_WALLPAPER:I = 0x0

.field protected static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field private static final DELAY_TIME:I = 0x64

.field private static final DUAL_MODE_VIEW:Ljava/lang/String; = "current dualmode view"

.field public static final HOMESCREEN_POSITION:I = 0x1

.field public static final INVALID_ROTATION:I = -0x1

.field private static final IS_SCALED:Ljava/lang/String; = "whether changing scale"

.field private static final IS_SCALED_LEFT:Ljava/lang/String; = "whether changing scale_left"

.field protected static final JPG_FILE:Ljava/lang/String; = "jpg"

.field private static final LAST_POSITION:Ljava/lang/String; = "last centerX & centerY"

.field private static final LAST_POSITION_LEFT:Ljava/lang/String; = "last centerX & centerY Left"

.field private static final LAST_SCALE:Ljava/lang/String; = "last scale"

.field private static final LAST_SCALE_LEFT:Ljava/lang/String; = "last scale_left"

.field private static final LAST_TILT_EFFECT_STATUS:Ljava/lang/String; = "last tile effect status"

.field private static final LOCKSCREEN_FILENAME:Ljava/lang/String; = "lockscreen_wallpaper"

.field public static final LOCKSCREEN_POSITION:I = 0x2

.field private static final LOCKSCREEN_WALLPAPER_PATH:Ljava/lang/String; = "lockscreen_wallpaper_path"

.field protected static final PNG_FILE:Ljava/lang/String; = "png"

.field private static final PRELOAD_WALLPAPER:I = 0x1

.field private static final SAVED_BUNDLE:Ljava/lang/String; = "saved_bundle"

.field private static final SAVED_IMAGE_URI:Ljava/lang/String; = "saved_image_uri"

.field private static final SAVED_PICK_STATE:Ljava/lang/String; = "saved_pick_state"

.field private static final SCLOUD_TIME_OUT:J = 0x7530L

.field private static final SETTINGS_SYSTEMUI_TRANSPARENCY_HOME:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field private static final SETTINGS_SYSTEMUI_TRANSPARENCY_LOCK:Ljava/lang/String; = "lockscreen_wallpaper_transparent"

.field public static final SVIEWCOVERSCREEN_POSITION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Cropper2_KeyguardAct"

.field private static final THEME_WALLPAPER:I = 0x3

.field private static final THRESHOLD_TIME:I = 0x190

.field private static final WALLPAPER_TILT_STATUS:Ljava/lang/String; = "wallpaper_tilt_status"

.field protected static final mSupportWideHome:Z


# instance fields
.field private ACTION_PRIVATE_MODE_OFF:Ljava/lang/String;

.field protected final EPSILON:F

.field protected final MULTI_PICK_FROM_GALLERY:I

.field protected final PICK_FROM_GALLERY:I

.field private actionBarView:Landroid/view/View;

.field private isFromGooglePhotos:Z

.field private isFromMessage:Z

.field protected isRequiredPermissionGranted:Z

.field private mActiveBtn:Landroid/view/View;

.field private mAlphaMask:Landroid/graphics/Bitmap;

.field protected mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

.field private mBlendingEffectView:Landroid/widget/ImageView;

.field private mBmpHeight:I

.field private mBmpWidth:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mCheckBoxMotionEffect:Landroid/widget/CheckBox;

.field protected mCheckBoxWideHomeScreen:Landroid/widget/CheckBox;

.field private mClockAmPm_Text:Landroid/widget/TextView;

.field private mClock_Text:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;

.field private mCoverCropView:Landroid/widget/ImageView;

.field private mCoverCropViewLeft:Landroid/widget/ImageView;

.field protected mCropTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field protected mCropView:Lcom/sec/android/wallpapercropper2/CropView;

.field protected mCropViewArea:Landroid/widget/FrameLayout;

.field protected mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

.field protected mCropViewLeftArea:Landroid/widget/FrameLayout;

.field private mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

.field private mDate_Text:Landroid/widget/TextView;

.field private mDefaultScaleValue:F

.field private mDefaultScaleValueLeft:F

.field private mDialog:Landroid/app/Dialog;

.field private mDoneButton:Landroid/view/View;

.field private mDummyCoverCropView:Landroid/widget/ImageView;

.field private mExpandEffectLayout:Landroid/widget/LinearLayout;

.field protected mFromKeyguardWallpaperUpdator:Z

.field private mHomeCropRect:Landroid/graphics/Rect;

.field private mHomePreview:Landroid/view/View;

.field protected mImageColorInfo:Ljava/lang/String;

.field protected mImageLocationType:Ljava/lang/String;

.field private mImagePath:Ljava/lang/String;

.field private mImageRotation:I

.field protected mImageType:Ljava/lang/String;

.field protected mImageUri:Landroid/net/Uri;

.field private mInitalBundle:Landroid/os/Bundle;

.field private mInitalIntent:Landroid/content/Intent;

.field protected mIsAttachedMobileKeyboard:Z

.field protected mIsBothScreenView:Z

.field protected mIsDestroyStart:Z

.field public mIsDualViewLockscreen:Z

.field protected mIsForceFinish:Z

.field protected mIsFromThemeStore:Z

.field protected mIsGalleryPickImage:Z

.field private mIsGifImage:Z

.field protected mIsPickState:Z

.field private mIsSCloudImage:Z

.field private mIsScaled:Z

.field private mIsScaledLeft:Z

.field private mIsSourceChanged:Z

.field protected mIsTouchDisable:Z

.field private mIsWBmp:Z

.field private mLargeBitmap:Z

.field protected mLastMotionEffectStatus:Z

.field protected mLastPoint:[F

.field protected mLastPointLeft:[F

.field protected mLastScaleValue:F

.field protected mLastScaleValueLeft:F

.field private mLoadBitmapTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLockCropRect:Landroid/graphics/Rect;

.field protected mLockTouchEvent:Z

.field private mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

.field protected mMainHandler:Landroid/os/Handler;

.field private mPrevDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mSCloudLoadingRunable:Ljava/lang/Runnable;

.field private mScreenHeight:F

.field private mScreenWidth:F

.field private mShouldUseSyncedClock:Z

.field private mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field protected mTileSource:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

.field protected mTileSourceLeft:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

.field private mTmpCoverBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field protected mUseLayoutSoftNavigation:Z

.field protected mUseSmartCropping:Z

.field private mWallpaperBitmap:Landroid/graphics/Bitmap;

.field private mWallpaperDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field protected mWallpaperType:I

.field protected mWideRect:Landroid/graphics/RectF;

.field protected mWideWallpaperApplied:Z


# direct methods
.method static synthetic -get0(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->ACTION_PRIVATE_MODE_OFF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBmpHeight:I

    return v0
.end method

.method static synthetic -get10(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mHomeCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get11(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsSCloudImage:Z

    return v0
.end method

.method static synthetic -get13(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsWBmp:Z

    return v0
.end method

.method static synthetic -get14(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLargeBitmap:Z

    return v0
.end method

.method static synthetic -get15(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLoadBitmapTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic -get16(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLockCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get17(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get18(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mRootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get19(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mSCloudLoadingRunable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBmpWidth:I

    return v0
.end method

.method static synthetic -get20(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenHeight:F

    return v0
.end method

.method static synthetic -get21(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenWidth:F

    return v0
.end method

.method static synthetic -get3(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mClockAmPm_Text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropViewLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDate_Text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDummyCoverCropView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static synthetic -getcom-sec-android-wallpapercropper2-KeyguardCropActivity$DualModeViewSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-com-sec-android-wallpapercropper2-KeyguardCropActivity$DualModeViewSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-com-sec-android-wallpapercropper2-KeyguardCropActivity$DualModeViewSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->values()[Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_DUPLICATE:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_EXPAND:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_LEFT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_RIGHT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-com-sec-android-wallpapercropper2-KeyguardCropActivity$DualModeViewSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mHomeCropRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLockCropRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isInfinityWallpaper()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->backupAndRestoreWallpaper()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->checkLoadingResult()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->initBothCropView()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->loadCropViewTileSource()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isSupportWideHomeWallpaper()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mSupportWideHome:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLargeBitmap:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsGifImage:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLockTouchEvent:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsScaled:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsScaledLeft:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mShouldUseSyncedClock:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsWBmp:Z

    iput v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastScaleValue:F

    iput v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastScaleValueLeft:F

    iput-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastPoint:[F

    iput-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastPointLeft:[F

    const-string/jumbo v0, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->ACTION_PRIVATE_MODE_OFF:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastMotionEffectStatus:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsAttachedMobileKeyboard:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsTouchDisable:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mMainHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsSCloudImage:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsForceFinish:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDualViewLockscreen:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsBothScreenView:Z

    iput-boolean v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isRequiredPermissionGranted:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDestroyStart:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isFromMessage:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isFromGooglePhotos:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mFromKeyguardWallpaperUpdator:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsFromThemeStore:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsGalleryPickImage:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mUseSmartCropping:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsPickState:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsSourceChanged:Z

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->useLayoutSoftNavigation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mUseLayoutSoftNavigation:Z

    iput v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->PICK_FROM_GALLERY:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->MULTI_PICK_FROM_GALLERY:I

    const-string/jumbo v0, "other"

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageType:Ljava/lang/String;

    const-string/jumbo v0, "other"

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageLocationType:Ljava/lang/String;

    const-string/jumbo v0, "other"

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageColorInfo:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWideWallpaperApplied:Z

    const v0, 0x358637bd    # 1.0E-6f

    iput v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->EPSILON:F

    new-instance v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$1;-><init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private backupAndRestoreWallpaper()V
    .locals 3

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isSupportBackUpRestoreWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/wallpapercropper2/BackupIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "wallpaper_type"

    iget v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "is_from_theme_store"

    iget-boolean v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsFromThemeStore:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "lock_crop_rect"

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLockCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "home_crop_rect"

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mHomeCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "image_rotation"

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v2}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->getRotation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private checkLoadingResult()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->getLoadingState()Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    move-result-object v0

    sget-object v1, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;->LOADED:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->isImageTooSmall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V

    goto :goto_0
.end method

.method private checkSettingSystemValues()V
    .locals 5

    const/4 v4, -0x1

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Settings.System.getInt: WALLPAPER_TILT_STATUS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wallpaper_tilt_status"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Settings.System.getInt: SETTINGS_SYSTEMUI_TRANSPARENCY_HOME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "android.wallpaper.settings_systemui_transparency"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Settings.System.getInt: SETTINGS_SYSTEMUI_TRANSPARENCY_LOCK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_wallpaper_transparent"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private clearApplicationData()V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    const-string/jumbo v5, "lib"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "files"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->deleteDir(Ljava/io/File;)Z

    const-string/jumbo v5, "Cropper2_KeyguardAct"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "File /data/data/com.sec.android.wallpapercropper2/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " DELETED"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected static convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    const-string/jumbo v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method private createLongShadow(Landroid/widget/ImageView;)V
    .locals 9

    const/16 v8, 0x2d

    const/16 v4, 0xf

    const/16 v7, 0xd

    const v6, 0x439d8000    # 315.0f

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isSupportDualScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    :cond_2
    const-string/jumbo v2, "Cropper2_KeyguardAct"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " / height: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020014

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mAlphaMask:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mAlphaMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    new-instance v0, Ldmc/surface/uiShadow/LongShadowManager;

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mAlphaMask:Landroid/graphics/Bitmap;

    const/16 v3, 0x96

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ldmc/surface/uiShadow/LongShadowManager;-><init>(Landroid/content/Context;Landroid/widget/ImageView;IILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ldmc/surface/uiShadow/LongShadowManager;->setShadowAlpha(I)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    invoke-virtual {v0, v8}, Ldmc/surface/uiShadow/LongShadowManager;->setShadowAlphaRadius(I)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    invoke-virtual {v0, v7}, Ldmc/surface/uiShadow/LongShadowManager;->setSlopeShadowDepth(I)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    invoke-virtual {v0, v6}, Ldmc/surface/uiShadow/LongShadowManager;->setAngle(F)V

    :cond_4
    return-void
.end method

.method private deleteDir(Ljava/io/File;)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->deleteDir(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    :cond_3
    return v1
.end method

.method private getDualModeViewBtn(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;)Landroid/view/View;
    .locals 3

    const v2, 0x7f0c0025

    invoke-static {}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-getcom-sec-android-wallpapercropper2-KeyguardCropActivity$DualModeViewSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_0
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_2
    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_3
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getExpandScaleValue([FZ)F
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p2, :cond_0

    const v0, 0x7f070065

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p2, :cond_1

    const v0, 0x7f070062

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/4 v0, 0x0

    aget v3, p1, v0

    const/4 v0, 0x1

    aget v4, p1, v0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    sget-object v5, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_EXPAND:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v0, v5, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    :goto_2
    div-float/2addr v0, v3

    div-float v1, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_0
    const v0, 0x7f070064

    goto :goto_0

    :cond_1
    const v0, 0x7f070063

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method protected static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string/jumbo p0, "jpg"

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "png"

    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v0, "jpg"

    goto :goto_0
.end method

.method private getWallpaperPreviewImgLockscreen(Landroid/view/View;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropViewLeft:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    const v0, 0x7f0c000d

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0c001a

    goto :goto_0
.end method

.method private getWallpaperTypeTransparency()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageLocationType:Ljava/lang/String;

    const-string/jumbo v2, "preload"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageLocationType:Ljava/lang/String;

    const-string/jumbo v2, "preloadDefault"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageLocationType:Ljava/lang/String;

    const-string/jumbo v2, "builtIn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageLocationType:Ljava/lang/String;

    const-string/jumbo v2, "essentialBuiltIn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    const-string/jumbo v1, "Cropper2_KeyguardAct"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System UI Transparent value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageLocationType:Ljava/lang/String;

    const-string/jumbo v2, "download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0
.end method

.method private handlePreviousActivity()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/wallpapercropper2/WallpaperApplication;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/WallpaperApplication;->getPreviousAct()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Previous Activity =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    instance-of v0, v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setForceFinish()V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/wallpapercropper2/WallpaperApplication;

    invoke-virtual {v0, p0}, Lcom/sec/android/wallpapercropper2/WallpaperApplication;->setPreviousAct(Landroid/app/Activity;)V

    return-void

    :cond_2
    instance-of v0, v1, Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->setForceFinish()V

    goto :goto_0

    :cond_3
    instance-of v0, v1, Lcom/sec/android/wallpapercropper2/BothCropActivity;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/sec/android/wallpapercropper2/BothCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->setForceFinish()V

    goto :goto_0

    :cond_4
    instance-of v0, v1, Lcom/sec/android/wallpapercropper2/SViewCoverCropActivity;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/android/wallpapercropper2/SViewCoverCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/SViewCoverCropActivity;->setForceFinish()V

    goto :goto_0
.end method

.method private initActionBar()V
    .locals 8

    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v6, 0x42800000    # 64.0f

    const/4 v5, 0x0

    const/high16 v4, 0x45000000    # 2048.0f

    const/high16 v3, 0x44c00000    # 1536.0f

    const/high16 v0, 0x7f0c0000

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->actionBarView:Landroid/view/View;

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->actionBarView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020025

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->actionBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenWidth:F

    const v2, 0x44318000    # 710.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenHeight:F

    mul-float/2addr v1, v7

    div-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenHeight:F

    mul-float/2addr v1, v6

    div-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->actionBarView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->actionBarView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->actionBarView:Landroid/view/View;

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDoneButton:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDoneButton:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDoneButton:Landroid/view/View;

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070009

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Utils;->setSystemFontSize(Landroid/widget/TextView;I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mFromKeyguardWallpaperUpdator:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isMassModel()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "es"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "de"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const v1, 0x7f070099

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Utils;->setSystemFontSize(Landroid/widget/TextView;I)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDoneButton:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDoneButton:Landroid/view/View;

    const v3, 0x7f0c0002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f06001f

    invoke-virtual {p0, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDoneButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$4;-><init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void

    :cond_5
    iget v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenWidth:F

    const v2, 0x44318000    # 710.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenHeight:F

    mul-float/2addr v1, v7

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenHeight:F

    mul-float/2addr v1, v6

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_0
.end method

.method private initBothCropView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    sget-object v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_LEFT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTileSourceLeft:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->updateCropView(Lcom/sec/android/wallpapercropper2/CropView;Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;ZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    sget-object v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_RIGHT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTileSource:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->updateCropView(Lcom/sec/android/wallpapercropper2/CropView;Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;ZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTileSourceLeft:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->updateCropView(Lcom/sec/android/wallpapercropper2/CropView;Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;ZZ)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTileSource:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->updateCropView(Lcom/sec/android/wallpapercropper2/CropView;Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;ZZ)V

    goto :goto_0
.end method

.method private isInfinityWallpaper()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :try_start_0
    const-class v0, Landroid/app/WallpaperManager;

    const-string/jumbo v2, "isInfinityWallpaper"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private loadBitmapSourceMainThread()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->loadInBackground()Z

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->checkLoadingResult()V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setCropViewTileSource()V

    return-void
.end method

.method private loadBitmapSourceWithAsync()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f0b0006

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsSCloudImage:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$2;-><init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mSCloudLoadingRunable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mRootView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;-><init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLoadBitmapTask:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLoadBitmapTask:Landroid/os/AsyncTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadCropViewTileSource()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;-><init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadImageProperties()V
    .locals 12

    const/4 v6, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageRotation:I

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_a

    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "mime_type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImagePath:Ljava/lang/String;

    const-string/jumbo v2, "_size"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "width"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "height"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "orientation"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageRotation:I

    const-string/jumbo v5, "Cropper2_KeyguardAct"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Image Properties : img_width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ;img_height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ;mimeType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ;fileSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x100000

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Mb"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ;rotation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ;path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImagePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v5, v3, v4

    const/high16 v6, 0x640000

    if-gt v5, v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    const-wide/16 v8, 0x14

    cmp-long v2, v6, v8

    if-lez v2, :cond_5

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLargeBitmap:Z

    iput v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBmpWidth:I

    iput v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBmpHeight:I

    :goto_0
    const-string/jumbo v2, "wbmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsWBmp:Z

    :cond_2
    const-string/jumbo v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsGifImage:Z

    :goto_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsSCloudImage:Z

    :goto_2
    invoke-static {v3, v4}, Lcom/android/gallery3d/util/Utils;->isTooSmallForCrop(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f060010

    invoke-virtual {p0, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :cond_5
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLargeBitmap:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    const-string/jumbo v2, "Cropper2_KeyguardAct"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_4
    return-void

    :cond_7
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsGifImage:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :cond_9
    :try_start_5
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImagePath:Ljava/lang/String;

    const-string/jumbo v2, ".cloudagent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsSCloudImage:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_a
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method

.method private loadWallpaperCropper(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x2

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v1, "No URI passed to WallpaperCropper, finish!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->useGalleryCropView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getWallpaperTypeValue()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v4}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isFromRcs(Landroid/os/Bundle;)Z

    move-result v4

    invoke-static {p0, v0, v3, v4}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->startCropImageActivity(Landroid/app/Activity;Landroid/net/Uri;IZ)V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->isMmsUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isFromMessage:Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->isFromGooglePlusPhoto(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isFromGooglePhotos:Z

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isFromMessage:Z

    iget-boolean v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isFromGooglePhotos:Z

    invoke-static {v0, v3}, Lcom/android/gallery3d/util/Utils;->getRequestPermissions(ZZ)[Ljava/lang/String;

    move-result-object v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_4

    invoke-static {p0, v0}, Lcom/android/gallery3d/util/Utils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_4
    const-string/jumbo v0, "Cropper2_KeyguardAct"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Image URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->loadImageProperties()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "from"

    const-string/jumbo v4, "other"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalBundle:Landroid/os/Bundle;

    const-string/jumbo v4, "preloadwallpaper"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v3, :cond_6

    const-string/jumbo v4, "keyguardWallpaperUpdpator"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string/jumbo v4, "Cropper2_KeyguardAct"

    const-string/jumbo v5, "Wallpaper use multi LockScreen!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mFromKeyguardWallpaperUpdator:Z

    :goto_0
    const-string/jumbo v4, "themestore"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsGalleryPickImage:Z

    if-eqz v3, :cond_10

    :cond_5
    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsFromThemeStore:Z

    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalBundle:Landroid/os/Bundle;

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "gallery_image"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageType:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalBundle:Landroid/os/Bundle;

    const-string/jumbo v4, "locType"

    const-string/jumbo v5, "other"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageLocationType:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalBundle:Landroid/os/Bundle;

    const-string/jumbo v4, "colorInfo"

    const-string/jumbo v5, "other"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageColorInfo:Ljava/lang/String;

    const-string/jumbo v3, "Cropper2_KeyguardAct"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", LocType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageLocationType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ColorInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageColorInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getWallpaperTypeValue()I

    move-result v0

    const/16 v3, 0x401

    if-ne v0, v3, :cond_11

    iput v8, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    :cond_7
    :goto_3
    if-eqz v6, :cond_14

    iput-boolean v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLockTouchEvent:Z

    :goto_4
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isSupportDualScreen()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    if-ne v0, v8, :cond_15

    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDualViewLockscreen:Z

    invoke-static {p0}, Lcom/android/gallery3d/util/Utils;->isAttachedMobileKeyboard(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsAttachedMobileKeyboard:Z

    invoke-static {p0}, Lcom/android/gallery3d/util/Utils;->isSupportLockScreenCapture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mShouldUseSyncedClock:Z

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x7f090000

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isSupportDualScreen()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_8
    :goto_7
    if-eqz p1, :cond_18

    const-string/jumbo v0, "last scale"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastScaleValue:F

    const-string/jumbo v0, "last centerX & centerY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastPoint:[F

    const-string/jumbo v0, "last tile effect status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastMotionEffectStatus:Z

    const-string/jumbo v0, "whether changing scale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsScaled:Z

    invoke-static {}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->values()[Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    move-result-object v0

    const-string/jumbo v3, "current dualmode view"

    sget-object v4, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_DUPLICATE:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    invoke-virtual {v4}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->ordinal()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mPrevDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    :goto_8
    if-eqz p1, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsBothScreenView:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "last centerX & centerY Left"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastPointLeft:[F

    const-string/jumbo v0, "last scale_left"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastScaleValueLeft:F

    const-string/jumbo v0, "whether changing scale_left"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsScaledLeft:Z

    :cond_9
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->checkSmartCroppingLib()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v6, :cond_1a

    :cond_a
    :goto_9
    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mUseSmartCropping:Z

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsSourceChanged:Z

    if-eqz v0, :cond_c

    :cond_b
    new-instance v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mUseSmartCropping:Z

    iget-boolean v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsFromThemeStore:Z

    iget v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;-><init>(Landroid/app/Application;Landroid/net/Uri;ZZI)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLargeBitmap:Z

    iget v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBmpWidth:I

    iget v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBmpHeight:I

    iget v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageRotation:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->setBitmapProperties(ZIII)V

    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->initialize()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->getLoadingState()Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    move-result-object v0

    sget-object v1, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;->LOADED:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    if-eq v0, v1, :cond_d

    if-eqz v6, :cond_1b

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->loadBitmapSourceMainThread()V

    :cond_d
    :goto_a
    return-void

    :cond_e
    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->startPermissionRequestActivity([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V

    return-void

    :cond_f
    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mFromKeyguardWallpaperUpdator:Z

    goto/16 :goto_0

    :cond_10
    iput-boolean v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsFromThemeStore:Z

    goto/16 :goto_1

    :cond_11
    const/16 v3, 0x400

    if-ne v0, v3, :cond_12

    iput v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    goto/16 :goto_3

    :cond_12
    const/16 v3, 0x402

    if-ne v0, v3, :cond_13

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    goto/16 :goto_3

    :cond_13
    const/16 v3, 0x405

    if-ne v0, v3, :cond_7

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    goto/16 :goto_3

    :cond_14
    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLockTouchEvent:Z

    goto/16 :goto_4

    :cond_15
    move v0, v1

    goto/16 :goto_5

    :cond_16
    move v0, v2

    goto/16 :goto_6

    :cond_17
    invoke-virtual {p0, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setRequestedOrientation(I)V

    goto/16 :goto_7

    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wallpaper_tilt_status"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_19

    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastMotionEffectStatus:Z

    sget-object v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_DUPLICATE:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mPrevDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    goto/16 :goto_8

    :cond_19
    move v0, v1

    goto :goto_b

    :cond_1a
    move v1, v2

    goto/16 :goto_9

    :cond_1b
    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->loadBitmapSourceWithAsync()V

    goto :goto_a

    :cond_1c
    move v6, v1

    goto/16 :goto_2
.end method

.method private setDualViewScaleDown(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_0

    const v0, 0x7f070064

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void

    :cond_0
    const v0, 0x7f070065

    goto :goto_0
.end method

.method public static startCropImageActivity(Landroid/app/Activity;Landroid/net/Uri;IZ)V
    .locals 12

    const/16 v10, 0x402

    const/4 v5, 0x0

    const/16 v9, 0x400

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-static {p0}, Lcom/android/gallery3d/util/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v8

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v8}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v3

    invoke-virtual {v8}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v0

    if-le v3, v0, :cond_1

    :goto_0
    if-ne p2, v10, :cond_2

    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    int-to-float v1, v3

    div-float v1, v0, v1

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    int-to-float v2, v3

    div-float/2addr v0, v2

    :goto_1
    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.android.gallery3d"

    const-string/jumbo v7, "com.sec.android.gallery3d.app.CropImage"

    invoke-direct {v6, v2, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/content/Intent;

    if-ne p2, v9, :cond_0

    if-eqz p3, :cond_3

    :cond_0
    const-string/jumbo v2, "com.sed.android.gallery3d.CROP_SEC_ONLY"

    :goto_2
    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v6, "image/*"

    invoke-virtual {v2, p1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v6, "outputX"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v6, "outputY"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    move-object v11, v2

    move v2, v1

    move v1, v0

    move-object v0, v11

    :goto_3
    const-string/jumbo v6, "aspectX"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "aspectY"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "spotlightX"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "spotlightY"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "scale"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "noFaceDetection"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "set-as-wallpaper"

    if-ne p2, v9, :cond_a

    move v1, v4

    :goto_4
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "set-as-lockscreen"

    const/16 v1, 0x401

    if-ne p2, v1, :cond_b

    move v1, v4

    :goto_5
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "set-as-bothscreen"

    if-ne p2, v10, :cond_c

    :goto_6
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    return-void

    :cond_1
    move v3, v0

    goto/16 :goto_0

    :cond_2
    iget v0, v6, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    int-to-float v1, v3

    div-float v1, v0, v1

    iget v0, v6, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    int-to-float v2, v3

    div-float/2addr v0, v2

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v2, "com.android.camera.action.CROP"

    goto :goto_2

    :cond_4
    if-ne p2, v10, :cond_6

    iget v2, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_8
    if-ge v2, v1, :cond_7

    move v0, v1

    :goto_9
    invoke-virtual {v8}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v3

    invoke-virtual {v8}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v6

    if-le v3, v6, :cond_5

    move v6, v3

    :cond_5
    if-le v2, v1, :cond_8

    :goto_a
    int-to-float v1, v1

    int-to-float v2, v0

    div-float v3, v1, v2

    int-to-float v1, v0

    int-to-float v2, v0

    div-float v2, v1, v2

    new-instance v7, Landroid/content/Intent;

    if-ne p2, v9, :cond_9

    const-string/jumbo v1, "com.android.camera.action.CROP"

    :goto_b
    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "image/*"

    invoke-virtual {v7, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v7, "outputX"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v7, "outputY"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    if-eq p2, v9, :cond_d

    const-string/jumbo v6, "scaleUpIfNeeded"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v11, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move-object v0, v11

    goto/16 :goto_3

    :cond_6
    iget v2, v6, Landroid/graphics/Point;->x:I

    iget v1, v6, Landroid/graphics/Point;->y:I

    goto :goto_8

    :cond_7
    move v0, v2

    goto :goto_9

    :cond_8
    move v1, v2

    goto :goto_a

    :cond_9
    const-string/jumbo v1, "com.sed.android.gallery3d.CROP_SEC_ONLY"

    goto :goto_b

    :cond_a
    move v1, v5

    goto/16 :goto_4

    :cond_b
    move v1, v5

    goto/16 :goto_5

    :cond_c
    move v4, v5

    goto :goto_6

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v1, "Galery Crop Activity Not Found !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_d
    move-object v11, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move-object v0, v11

    goto/16 :goto_3
.end method

.method private startGalleryPicker(Z)V
    .locals 5

    const/4 v0, 0x1

    const-string/jumbo v1, "Cropper2_KeyguardAct"

    const-string/jumbo v2, "startGalleryPicker"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsPickState:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.gallery3d"

    const-string/jumbo v3, "com.sec.android.gallery3d.app.GalleryActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "set-as-wallpaper"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.keyguardwallpaperupdator"

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v3, "multi-pick"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "pick-max-item"

    const/16 v4, 0x1e

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v3, "unable-pick-private-file"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x24000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :cond_1
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v1, "Gallery Activity Not Found !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startSetMultiLockWallpaper()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_KeyguardAct"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterPrivateModeReceiver()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "Cropper2_KeyguardAct"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalArgumentException and ignore it :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    throw v0
.end method

.method private updateDualModeView(Z)Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mActiveBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mActiveBtn:Landroid/view/View;

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const v0, 0x7f020004

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    sget-object v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_EXPAND:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    return-object v0

    :cond_0
    const v0, 0x7f020003

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mActiveBtn:Landroid/view/View;

    const v1, 0x7f0c0026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const v0, 0x7f020002

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    sget-object v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_DUPLICATE:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    return-object v0

    :cond_1
    const v0, 0x7f020001

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mActiveBtn:Landroid/view/View;

    const v1, 0x7f0c0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_2

    const v0, 0x7f020010

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    sget-object v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_LEFT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    return-object v0

    :cond_2
    const v0, 0x7f02000f

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mActiveBtn:Landroid/view/View;

    const v1, 0x7f0c002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_3

    const v0, 0x7f020017

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    sget-object v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_RIGHT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    return-object v0

    :cond_3
    const v0, 0x7f020016

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x7f0c0023
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateLayoutPhone(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->useLayoutSoftNavigation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewArea:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsBothScreenView:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeftArea:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeftArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070037

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method private updateLayoutTablet(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 7

    const v6, 0x3f3851ec    # 0.72f

    const v5, 0x3f266666    # 0.65f

    const/high16 v4, 0x45000000    # 2048.0f

    const/high16 v3, 0x44c00000    # 1536.0f

    const v2, 0x3eeb851f    # 0.46f

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsBothScreenView:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenHeight:F

    const/high16 v1, 0x43580000    # 216.0f

    mul-float/2addr v0, v1

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenWidth:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenHeight:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenHeight:F

    const/high16 v1, 0x43580000    # 216.0f

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenWidth:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenHeight:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenHeight:F

    const/high16 v1, 0x43f00000    # 480.0f

    mul-float/2addr v0, v1

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenWidth:F

    const/high16 v1, 0x42380000    # 46.0f

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenWidth:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenHeight:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeftArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenHeight:F

    const/high16 v1, 0x43b10000    # 354.0f

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenWidth:F

    const/high16 v1, 0x42840000    # 66.0f

    mul-float/2addr v0, v1

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenWidth:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenHeight:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1
.end method


# virtual methods
.method protected calculateScale(FFZZ)F
    .locals 9

    const/4 v2, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->getImageDims()[F

    move-result-object v0

    aget v1, v0, v3

    aget v4, v0, v2

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v5}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->getSmartCropRect()Landroid/graphics/Rect;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mUseSmartCropping:Z

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v6}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->getRotation()I

    move-result v6

    if-eqz v6, :cond_0

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_8

    :cond_0
    div-float v0, v1, v0

    div-float v5, v4, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_1
    :goto_1
    div-float v1, p1, v1

    div-float v4, p2, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    if-eqz p4, :cond_d

    mul-float/2addr v0, v1

    :goto_2
    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastMotionEffectStatus:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    if-ne v1, v2, :cond_9

    move v1, v2

    :goto_3
    iget v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    move v3, p3

    :cond_2
    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    :cond_4
    if-eqz p3, :cond_a

    iput v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDefaultScaleValueLeft:F

    :goto_4
    if-eqz p3, :cond_b

    iget v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastScaleValueLeft:F

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsScaledLeft:Z

    if-eqz v1, :cond_5

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastScaleValueLeft:F

    :cond_5
    iput v8, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastScaleValueLeft:F

    :cond_6
    :goto_5
    return v0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    goto :goto_0

    :cond_8
    div-float v5, v1, v5

    div-float v0, v4, v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1

    :cond_9
    move v1, v3

    goto :goto_3

    :cond_a
    iput v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDefaultScaleValue:F

    goto :goto_4

    :cond_b
    iget v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastScaleValue:F

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsScaled:Z

    if-eqz v1, :cond_c

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastScaleValue:F

    :cond_c
    iput v8, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastScaleValue:F

    goto :goto_5

    :cond_d
    move v0, v1

    goto :goto_2
.end method

.method public changeDualPreviewWithAnimation()V
    .locals 10

    const v1, 0x7f050004

    const/16 v6, 0x8

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mPrevDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v2, v3, :cond_0

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state not changed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean v8, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsTouchDisable:Z

    invoke-static {}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-getcom-sec-android-wallpapercropper2-KeyguardCropActivity$DualModeViewSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mPrevDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    invoke-virtual {v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v3, v4

    move v2, v4

    move-object v5, v0

    move-object v6, v0

    :goto_0
    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTmpCoverBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTmpCoverBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDummyCoverCropView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDummyCoverCropView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropViewLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    invoke-static {p0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-static {p0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-static {p0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    invoke-static {p0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    invoke-direct {p0, v6}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getWallpaperPreviewImgLockscreen(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    invoke-direct {p0, v5}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getWallpaperPreviewImgLockscreen(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v4

    aput-object v2, v6, v8

    const/4 v0, 0x2

    aput-object v1, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$8;

    invoke-direct {v0, p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$8;-><init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    sget-object v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_LEFT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v1, v2, :cond_3

    const/high16 v2, 0x7f050000

    const v1, 0x7f050008

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropViewLeft:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDummyCoverCropView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->onPause()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->onPause()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0, v6}, Lcom/sec/android/wallpapercropper2/CropView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDummyCoverCropView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    move v1, v2

    move-object v2, v3

    move-object v3, v5

    :goto_2
    move-object v5, v2

    move-object v6, v3

    move v3, v0

    move v2, v1

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    sget-object v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_RIGHT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v1, v2, :cond_7

    const v1, 0x7f050002

    const v0, 0x7f050005

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropViewLeft:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v5}, Lcom/sec/android/wallpapercropper2/CropView;->onPause()V

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v5}, Lcom/sec/android/wallpapercropper2/CropView;->onPause()V

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v5, v6}, Lcom/sec/android/wallpapercropper2/CropView;->setVisibility(I)V

    goto :goto_2

    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropViewLeft:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->onPause()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0, v6}, Lcom/sec/android/wallpapercropper2/CropView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    sget-object v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_RIGHT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v0, v2, :cond_4

    const v2, 0x7f050006

    const v1, 0x7f050003

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    move v0, v1

    move v1, v2

    :goto_3
    move v2, v1

    move-object v6, v5

    move-object v5, v3

    move v3, v0

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f050007

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_3

    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropViewLeft:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->onPause()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0, v6}, Lcom/sec/android/wallpapercropper2/CropView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    sget-object v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_LEFT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v0, v2, :cond_5

    const v2, 0x7f050009

    const v1, 0x7f050001

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropViewLeft:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    move v0, v2

    :goto_4
    move v2, v0

    move-object v6, v5

    move-object v5, v3

    move v3, v1

    goto/16 :goto_0

    :cond_5
    const v0, 0x7f05000a

    goto :goto_4

    :cond_6
    iput-boolean v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsTouchDisable:Z

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTileSource:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    invoke-virtual {p0, v0, v1, v8, v8}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->updateCropView(Lcom/sec/android/wallpapercropper2/CropView;Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;ZZ)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTileSourceLeft:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    invoke-virtual {p0, v0, v1, v8, v8}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->updateCropView(Lcom/sec/android/wallpapercropper2/CropView;Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;ZZ)V

    goto/16 :goto_1

    :cond_7
    move v1, v4

    move-object v2, v0

    move-object v3, v0

    move v0, v4

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected confirmDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getDialogMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$9;

    invoke-direct {v1, p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$9;-><init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V

    const v2, 0x7f060003

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$10;

    invoke-direct {v1, p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$10;-><init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected cropImageAndSetWallpaper()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->getUserRestriction(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060011

    invoke-virtual {p0, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/util/Utils;->hasSaveAbleStorage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "true"

    aput-object v1, v0, v4

    const-string/jumbo v1, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v2, "isWallpaperChangeAllowed"

    invoke-static {p0, v1, v2, v0}, Lcom/android/gallery3d/util/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->checkFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$SaveOutput;-><init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;Landroid/content/Context;)V

    new-instance v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;-><init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropTask:Lcom/android/gallery3d/util/Future;

    return-void

    :cond_5
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f0b0006

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const v0, 0x7f05000b

    const v1, 0x7f05000c

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected getCompleteToast()Ljava/lang/String;
    .locals 1

    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 2

    const v0, 0x7f04000f

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDualViewLockscreen:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    sget-object v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_LEFT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v0, v1, :cond_0

    const v0, 0x7f04000c

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    sget-object v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_RIGHT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v0, v1, :cond_1

    const v0, 0x7f04000e

    return v0

    :cond_1
    const v0, 0x7f04000d

    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mUseLayoutSoftNavigation:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v1, :cond_3

    :goto_0
    return v0

    :cond_3
    const v0, 0x7f04000b

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v1, :cond_5

    :goto_1
    return v0

    :cond_5
    const v0, 0x7f04000a

    goto :goto_1
.end method

.method public getCurrentDualModeView()Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    return-object v0
.end method

.method protected getDialogMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOppositeCropView(Z)Lcom/sec/android/wallpapercropper2/CropView;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    goto :goto_0
.end method

.method protected getScaleValue(ZZ)F
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mUseLayoutSoftNavigation:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v0, :cond_1

    const v0, 0x7f07003a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v0, :cond_2

    const v0, 0x7f070037

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_2
    iget v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070048

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :cond_0
    :goto_3
    const-string/jumbo v2, "Cropper2_KeyguardAct"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getScaleValue width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->calculateScale(FFZZ)F

    move-result v0

    return v0

    :cond_1
    const v0, 0x7f07002f

    goto :goto_0

    :cond_2
    const v0, 0x7f07002e

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v0, :cond_5

    const v0, 0x7f070039

    :goto_4
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v0, :cond_6

    const v0, 0x7f070036

    :goto_5
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto/16 :goto_2

    :cond_5
    const v0, 0x7f070038

    goto :goto_4

    :cond_6
    const v0, 0x7f070035

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isLockScreenRotateDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_0

    div-float v1, v0, v1

    mul-float/2addr v1, v0

    goto/16 :goto_3
.end method

.method public declared-synchronized getThreadPool()Lcom/android/gallery3d/util/ThreadPool;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/util/ThreadPool;

    invoke-direct {v0}, Lcom/android/gallery3d/util/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getWallpaperTypeValue()I
    .locals 1

    const/16 v0, 0x401

    return v0
.end method

.method protected initLayout()V
    .locals 6

    const v5, 0x7f0c0021

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0c000a

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewArea:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsBothScreenView:Z

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0c0008

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeftArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeftArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v0, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->updateLayoutTablet(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;)V

    :goto_0
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mShouldUseSyncedClock:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isNotSupportCall()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mHomePreview:Landroid/view/View;

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mShouldUseSyncedClock:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mHomePreview:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mHomePreview:Landroid/view/View;

    const v1, 0x7f0c001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mClock_Text:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mHomePreview:Landroid/view/View;

    const v1, 0x7f0c001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mClockAmPm_Text:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mHomePreview:Landroid/view/View;

    const v1, 0x7f0c0020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDate_Text:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDualViewLockscreen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    sget-object v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_LEFT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v0, v1, :cond_6

    move v0, v2

    :goto_2
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mClock_Text:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setDualViewScaleDown(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mClockAmPm_Text:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setDualViewScaleDown(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDate_Text:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setDualViewScaleDown(Landroid/view/View;Z)V

    invoke-virtual {p0, v5}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setDualViewScaleDown(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    sget-object v4, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_RIGHT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v1, v4, :cond_7

    :goto_3
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropView:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getWallpaperPreviewImgLockscreen(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0c001b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setDualViewScaleDown(Landroid/view/View;Z)V

    const v3, 0x7f06002e

    invoke-virtual {p0, v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    if-eqz v0, :cond_8

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    :goto_4
    return-void

    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->updateLayoutPhone(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mHomePreview:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4
.end method

.method public initPreviewHomeLockForeground(Lcom/sec/android/wallpapercropper2/CropView;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsBothScreenView:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mShouldUseSyncedClock:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/wallpapercropper2/CropView;->getRealHomePreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/wallpapercropper2/CropView;->getRealHomePreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    iget-boolean v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mShouldUseSyncedClock:Z

    iget-boolean v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsAttachedMobileKeyboard:Z

    invoke-static {p0, v1, v0, v2, v3}, Lcom/sec/android/wallpapercropper2/ScreenCaptureHelper;->getScreenCaptureBitmap(Landroid/content/Context;IZZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/wallpapercropper2/CropView;->setRealHomePreviewBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    return-void
.end method

.method protected initialize()V
    .locals 3

    const v2, 0x7f0c0009

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsSourceChanged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsGifImage:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->setIsGIFImage(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLockTouchEvent:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->setLockTouchEvent(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsGifImage:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->setIsGIFImage(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLockTouchEvent:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->setLockTouchEvent(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->initializeScreenResolution(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setContentView(I)V

    const v0, 0x7f0c0004

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mRootView:Landroid/widget/FrameLayout;

    const v0, 0x7f0c0005

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBlendingEffectView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDualViewLockscreen:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mExpandEffectLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mExpandEffectLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDummyCoverCropView:Landroid/widget/ImageView;

    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropViewLeft:Landroid/widget/ImageView;

    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/wallpapercropper2/CropView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsGifImage:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->setIsGIFImage(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTmpCoverBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTmpCoverBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropViewLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTmpCoverBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->initPreviewHomeLockForeground(Lcom/sec/android/wallpapercropper2/CropView;)V

    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getDualModeViewBtn(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mActiveBtn:Landroid/view/View;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->updateDualModeView(Z)Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsBothScreenView:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/wallpapercropper2/CropView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsGifImage:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->setIsGIFImage(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLockTouchEvent:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->setLockTouchEvent(Z)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->initPreviewHomeLockForeground(Lcom/sec/android/wallpapercropper2/CropView;)V

    :cond_7
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/wallpapercropper2/CropView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsGifImage:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->setIsGIFImage(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLockTouchEvent:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->setLockTouchEvent(Z)V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->initPreviewHomeLockForeground(Lcom/sec/android/wallpapercropper2/CropView;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageType:Ljava/lang/String;

    const-string/jumbo v1, "cinematic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    :cond_9
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f0c0007

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_b

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->getLcdWidthPixels()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenWidth:F

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->getLcdHeightPixels()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mScreenHeight:F

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->initLayout()V

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->initActionBar()V

    return-void
.end method

.method protected isFromRcs(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "rcs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLandscape()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchDisable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsTouchDisable:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v2, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v7, :cond_0

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    iput-boolean v6, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsPickState:Z

    iput-boolean v7, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsGalleryPickImage:Z

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalBundle:Landroid/os/Bundle;

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PICK_FROM_GALLERY mImageUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->loadWallpaperCropper(Landroid/os/Bundle;)V

    iput-boolean v6, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsSourceChanged:Z

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    if-ne p2, v2, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "selectedCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "selectedItems"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-boolean v6, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsPickState:Z

    iput-boolean v7, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsGalleryPickImage:Z

    const-string/jumbo v2, "Cropper2_KeyguardAct"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MULTI_PICK_FROM_GALLERY selectedCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v1, v7, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V

    return-void

    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalBundle:Landroid/os/Bundle;

    invoke-direct {p0, v5}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->loadWallpaperCropper(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.keyguardwallpaperupdator"

    const-string/jumbo v4, "com.samsung.android.keyguardwallpaperupdator.ui.KeyguardPhotoSlideMainActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "imageUriList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_KeyguardAct"

    const-string/jumbo v2, "Can\'t start KeyguardWallpaperUpdator to set multi lock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLoadBitmapTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLoadBitmapTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsTouchDisable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mActiveBtn:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mActiveBtn:Landroid/view/View;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->updateDualModeView(Z)Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mPrevDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mActiveBtn:Landroid/view/View;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->updateDualModeView(Z)Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->changeDualPreviewWithAnimation()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "Cropper2_KeyguardAct"

    const-string/jumbo v2, "onCreate Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->handlePreviousActivity()V

    iput-object p0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string/jumbo v1, "saved_image_uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "saved_image_uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    :cond_0
    const-string/jumbo v1, "saved_bundle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "saved_pick_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsPickState:Z

    :cond_1
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "other"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "multi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->startSetMultiLockWallpaper()V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsPickState:Z

    if-nez v1, :cond_4

    const-string/jumbo v1, "Cropper2_KeyguardAct"

    const-string/jumbo v2, "No initial URI passed to WallpaperCropper, start Gallery picker"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isSupportMutilLockHeroConcept()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getWallpaperTypeValue()I

    move-result v1

    const/16 v2, 0x401

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->startGalleryPicker(Z)V

    :cond_4
    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->loadWallpaperCropper(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->ACTION_PRIVATE_MODE_OFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v1, "onCreate End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroy Start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDestroyStart:Z

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsForceFinish:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/wallpapercropper2/WallpaperApplication;

    invoke-virtual {v0, v3}, Lcom/sec/android/wallpapercropper2/WallpaperApplication;->setPreviousAct(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLoadBitmapTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLoadBitmapTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsSCloudImage:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mSCloudLoadingRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isRequiredPermissionGranted:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mAlphaMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mAlphaMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0, v4}, Lcom/sec/android/wallpapercropper2/CropView;->recylePreview(Z)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0, v4}, Lcom/sec/android/wallpapercropper2/CropView;->recylePreview(Z)V

    :cond_7
    iput-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->unregisterPrivateModeReceiver()V

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->checkSettingSystemValues()V

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->clearApplicationData()V

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v1, "onDestroy End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mAlphaMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mAlphaMask:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "Cropper2_KeyguardAct"

    const-string/jumbo v3, "onNewIntent Start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-nez v2, :cond_2

    const-string/jumbo v2, "Cropper2_KeyguardAct"

    const-string/jumbo v3, "No initial URI passed to WallpaperCropper in newIntent, start Gallery picker"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsSourceChanged:Z

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isSupportMutilLockHeroConcept()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getWallpaperTypeValue()I

    move-result v2

    const/16 v3, 0x401

    if-ne v2, v3, :cond_3

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->startGalleryPicker(Z)V

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsSourceChanged:Z

    iput-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalBundle:Landroid/os/Bundle;

    invoke-direct {p0, v4}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->loadWallpaperCropper(Landroid/os/Bundle;)V

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsSourceChanged:Z

    :cond_2
    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v1, "onNewIntent End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v4, 0x358637bd    # 1.0E-6f

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v3, "onPause"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsPickState:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->getScale()F

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastScaleValue:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->getPosition()[F

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastPoint:[F

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDefaultScaleValue:F

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v3}, Lcom/sec/android/wallpapercropper2/CropView;->getScale()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsScaled:Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->getScale()F

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastScaleValueLeft:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->getPosition()[F

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastPointLeft:[F

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDefaultScaleValueLeft:F

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v3}, Lcom/sec/android/wallpapercropper2/CropView;->getScale()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsScaledLeft:Z

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsPickState:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isFromMessage:Z

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isFromGooglePhotos:Z

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Utils;->getRequestPermissions(ZZ)[Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    invoke-static {p0, v0}, Lcom/android/gallery3d/util/Utils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->initPreviewHomeLockForeground(Lcom/sec/android/wallpapercropper2/CropView;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->initPreviewHomeLockForeground(Lcom/sec/android/wallpapercropper2/CropView;)V

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mShouldUseSyncedClock:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setCurrentDate()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->startPermissionRequestActivity([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v5, 0x358637bd    # 1.0E-6f

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v3, "onSaveInstanceState"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsPickState:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "saved_pick_state"

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsPickState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string/jumbo v0, "saved_image_uri"

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "saved_bundle"

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mInitalBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "last scale"

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v3}, Lcom/sec/android/wallpapercropper2/CropView;->getScale()F

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v0, "last centerX & centerY"

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v3}, Lcom/sec/android/wallpapercropper2/CropView;->getPosition()[F

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const-string/jumbo v3, "whether changing scale"

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDefaultScaleValue:F

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v4}, Lcom/sec/android/wallpapercropper2/CropView;->getScale()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "last scale_left"

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v3}, Lcom/sec/android/wallpapercropper2/CropView;->getScale()F

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v0, "last centerX & centerY Left"

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v3}, Lcom/sec/android/wallpapercropper2/CropView;->getPosition()[F

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const-string/jumbo v0, "whether changing scale_left"

    iget v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDefaultScaleValueLeft:F

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v4}, Lcom/sec/android/wallpapercropper2/CropView;->getScale()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    :goto_2
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    const-string/jumbo v0, "last tile effect status"

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastMotionEffectStatus:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "current dualmode view"

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mShouldUseSyncedClock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mHomePreview:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mHomePreview:Landroid/view/View;

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->createLongShadow(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setCurrentDate()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mClockAmPm_Text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDate_Text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;

    invoke-direct {v1, p4}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$7;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$7;-><init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$InterruptableOutputStream;)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    const/16 v0, 0x5a

    :try_start_0
    invoke-virtual {p2, p3, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v2, "Bitmap write errror!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v3}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1, v3}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected saveCroppedImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDestroyStart:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v2, "saveCroppedImage"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageType:Ljava/lang/String;

    const-string/jumbo v3, "cinematic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v4}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->saveLockScreenImage(Ljava/io/ByteArrayOutputStream;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string/jumbo v2, "jpg"

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x800

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v4, 0x5a

    invoke-virtual {p2, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->saveLockScreenImage(Ljava/io/ByteArrayOutputStream;)V

    :goto_1
    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Cropper2_KeyguardAct"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v2, "Bitmap compress Failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1
.end method

.method protected saveFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v3, v5, v4}, Ljava/io/File;->setWritable(ZZ)Z

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z

    if-eqz p6, :cond_1

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isOwner()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "lockscreen_wallpaper_path"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "lockscreen_wallpaper_transparent"

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getWallpaperTypeTransparency()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p5, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v2, "Cropper2_KeyguardAct"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Write Settings.System : savePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_KeyguardAct"

    const-string/jumbo v2, "fail to create new file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "cannot create file: saveLockScreenImage"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :try_start_3
    const-string/jumbo v4, "wallpapercropper2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, ""

    invoke-static {v2, p5, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_4
    const-string/jumbo v2, "Cropper2_KeyguardAct"

    const-string/jumbo v4, "fail to save image: "

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method protected saveHomeScreenImage(Ljava/io/ByteArrayOutputStream;)V
    .locals 4

    const-string/jumbo v1, "Cropper2_KeyguardAct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveHomeScreenImage : outPut "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string/jumbo v0, "NULL"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getWallpaperTypeTransparency()I

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    if-eqz p1, :cond_0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    const-string/jumbo v1, "Cropper2_KeyguardAct"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Write Settings.System : SETTINGS_SYSTEMUI_TRANSPARENCY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android.wallpaper.settings_systemui_transparency"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "Not NULL"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_KeyguardAct"

    const-string/jumbo v2, "cannot write stream to wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected saveLockScreenImage(Ljava/io/ByteArrayOutputStream;)V
    .locals 6

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDestroyStart:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "Cropper2_KeyguardAct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveLockScreenImage : outPut "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string/jumbo v0, "NULL"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageType:Ljava/lang/String;

    const-string/jumbo v1, "cinematic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "setPreloadWallpaper"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageColorInfo:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "Not NULL"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_KeyguardAct"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "Cropper2_KeyguardAct"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "Cropper2_KeyguardAct"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v1, "Cropper2_KeyguardAct"

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper_transparent"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_wallpaper_transparent"

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getWallpaperTypeTransparency()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "lockscreen_wallpaper"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_3
    :goto_2
    return-void

    :catch_4
    move-exception v0

    const-string/jumbo v2, "Cropper2_KeyguardAct"

    const-string/jumbo v3, "cannot write stream to wallpaper"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "lockscreen_wallpaper_transparent"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method protected saveLockScreenImageMOS(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 15

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDestroyStart:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v1, "saveLockScreenImage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "true"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v2, "isWallpaperChangeAllowed"

    invoke-static {p0, v1, v2, v0}, Lcom/android/gallery3d/util/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageType:Ljava/lang/String;

    const-string/jumbo v1, "cinematic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isOwner()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v1, "save Lock Screen for Guest Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper_path"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "lockscreen_wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageColorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "_cinematic.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lockscreen_wallpaper_path"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "Cropper2_KeyguardAct"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Write Settings.System : savePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v1, "wallpapercropper2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper_path"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v14, "lockscreen_wallpaper"

    const-string/jumbo v5, "lockscreen_wallpaper_path"

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDualViewLockscreen:Z

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    sget-object v4, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_LEFT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v2, v4, :cond_7

    const/4 v1, 0x0

    move v13, v0

    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->saveFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v6 .. v12}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->saveFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    if-eqz v13, :cond_6

    if-eqz p3, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_sub."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_sub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->saveFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_sub."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v6 .. v12}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->saveFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper_sub"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    return-void

    :cond_7
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    sget-object v4, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_RIGHT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v2, v4, :cond_8

    const/4 v0, 0x0

    move v13, v0

    move v0, v1

    goto/16 :goto_1

    :cond_8
    move v13, v0

    move v0, v1

    goto/16 :goto_1
.end method

.method protected setBlurBackground()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTileSource:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTileSource:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->getBlurredBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBlendingEffectView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/sec/android/effect/VignettingEffect;

    invoke-direct {v0, p0}, Lcom/sec/android/effect/VignettingEffect;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBlendingEffectView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, p0}, Lcom/sec/android/effect/VignettingEffect;->applyBlendedFilter(Landroid/graphics/Bitmap;Landroid/view/View;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method protected setCropViewTileSource()V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v1, "setCropViewTileSource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-direct {v0, p0, v1, v4}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;-><init>(Landroid/content/Context;Lcom/sec/android/wallpapercropper2/UriBitmapSource;Z)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTileSource:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDualViewLockscreen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTileSource:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/wallpapercropper2/CropView;->setTileSource(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->getSmartCropRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mUseSmartCropping:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/wallpapercropper2/CropView;->setCenter(FF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mUseSmartCropping:Z

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getScaleValue(ZZ)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->setScale(F)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0, v4}, Lcom/sec/android/wallpapercropper2/CropView;->setTouchEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastPoint:[F

    if-eqz v0, :cond_1

    iput-object v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLastPoint:[F

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setBlurBackground()V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDualViewLockscreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTileSource:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->getPreview()Lcom/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->setUsingDualModeView(Z)V

    new-instance v0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-direct {v0, p0, v1, v3}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;-><init>(Landroid/content/Context;Lcom/sec/android/wallpapercropper2/UriBitmapSource;Z)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTileSourceLeft:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTileSourceLeft:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->getPreview()Lcom/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->setUsingDualModeView(Z)V

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->initBothCropView()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->getRotation()I

    move-result v1

    invoke-static {p0, v0, v1, v3}, Lcom/android/gallery3d/util/BitmapUtils;->resizeAndCropCenter(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mTmpCoverBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    sget-object v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_LEFT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCurrentDualModeView:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    sget-object v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_RIGHT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCoverCropViewLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setCurrentDate()V
    .locals 8

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mClock_Text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mClockAmPm_Text:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDate_Text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "homescreenPreview_capturetime_land"

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v7, v0

    :goto_1
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_2
    const-string/jumbo v1, "Cropper2_KeyguardAct"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "captureTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f060008

    invoke-virtual {p0, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "h:mm"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mClock_Text:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mClockAmPm_Text:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mDate_Text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isSupportLongShadow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mClock_Text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ldmc/surface/uiShadow/LongShadowManager;->viewToShadow(Landroid/widget/TextView;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v0, "homescreenPreview_capturetime"

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x7e1

    const/16 v2, 0x8

    const/16 v3, 0x18

    const/16 v4, 0xc

    const/16 v5, 0x2d

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "HH:mm"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3
.end method

.method public setForceFinish()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsForceFinish:Z

    return-void
.end method

.method protected setLockScreenSettingAndBroadCast()V
    .locals 3

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isOpenThemeWallpaperEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "opne_theme_effect_lockscreen_wallpaper"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method public startPermissionRequestActivity([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "previous_intent"

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "permission_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "isGooglePhotos"

    iget-boolean v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isFromGooglePhotos:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isRequiredPermissionGranted:Z

    return-void
.end method

.method protected updateCropView(Lcom/sec/android/wallpapercropper2/CropView;Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/sec/android/wallpapercropper2/CropView;->setTileSource(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;Z)V

    invoke-virtual {p1}, Lcom/sec/android/wallpapercropper2/CropView;->getImageDims()[F

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getExpandScaleValue([FZ)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/wallpapercropper2/CropView;->setScale(F)V

    invoke-virtual {p1, p4}, Lcom/sec/android/wallpapercropper2/CropView;->setTouchEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
