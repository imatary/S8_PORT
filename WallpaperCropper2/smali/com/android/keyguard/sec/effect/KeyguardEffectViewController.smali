.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;,
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LaunchTransitionCallback;,
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;,
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;
    }
.end annotation


# static fields
.field private static final ACTION_IMAGES_CHANGED:Ljava/lang/String; = "com.sec.android.slidingGallery.LOCKSCREEN_IMAGE_CHANGED"

.field public static final ACTION_LOCKSCREEN_IMAGE_CHANGED:Ljava/lang/String; = "com.sec.android.gallery3d.LOCKSCREEN_IMAGE_CHANGED"

.field public static final EFFECT_ABSTRACTTILE:I = 0xb

.field public static final EFFECT_AUTUMN:I = 0x53

.field public static final EFFECT_BLIND:I = 0x5

.field public static final EFFECT_BRILLIANTCUT:I = 0x9

.field public static final EFFECT_BRILLIANTRING:I = 0x8

.field public static final EFFECT_GEOMETRICMOSAIC:I = 0xc

.field public static final EFFECT_HOME:I = -0x2

.field public static final EFFECT_JUST_LOCK_LIVE_WALLPAPER:I = 0x64

.field public static final EFFECT_LIGHT:I = 0x2

.field public static final EFFECT_LIQUID:I = 0xd

.field public static final EFFECT_LIVEWALLPAPER:I = -0x1

.field public static final EFFECT_MASS_RIPPLE:I = 0x7

.field public static final EFFECT_MASS_TENSION:I = 0x6

.field public static final EFFECT_MONTBLANC:I = 0xa

.field public static final EFFECT_NONE:I = 0x0

.field public static final EFFECT_PARTICLE:I = 0xe

.field public static final EFFECT_POPPING_COLOR:I = 0x3

.field public static final EFFECT_RIPPLE:I = 0x1

.field public static final EFFECT_SEASONAL:I = 0x55

.field public static final EFFECT_SPRING:I = 0x51

.field public static final EFFECT_SUMMER:I = 0x52

.field public static final EFFECT_TILT:I = 0x65

.field public static final EFFECT_WATERCOLOR:I = 0x4

.field public static final EFFECT_WINTER:I = 0x54

.field public static final EFFECT_ZOOM_PANNING:I = 0x50

.field private static final EMPTY_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/keyguard_empty_image.jpg"

.field public static final KEYGUARD_DEFAULT_WALLPAPER_TYPE_BRILLIANT:I = 0x1

.field public static final KEYGUARD_WALLPAPER_CLASS:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardWallpaperService"

.field public static final KEYGUARD_WALLPAPER_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field public static final LOCK_SOUND_AUTUMN:Ljava/lang/String; = "/system/media/audio/ui/autumn_lock.ogg"

.field public static final LOCK_SOUND_NONE:Ljava/lang/String; = "/system/media/audio/ui/Lock_none_effect.ogg"

.field public static final LOCK_SOUND_SPRING:Ljava/lang/String; = "/system/media/audio/ui/spring_lock.ogg"

.field public static final LOCK_SOUND_SUMMER:Ljava/lang/String; = "/system/media/audio/ui/summer_lock.ogg"

.field public static final LOCK_SOUND_WINTER:Ljava/lang/String; = "/system/media/audio/ui/winter_lock.ogg"

.field private static final MSG_CHARGE_STATE_CHANGED:I = 0x12f4

.field private static final MSG_WALLPAPER_FILE_CHANGED:I = 0x12f2

.field private static final MSG_WALLPAPER_PATH_CHANGED:I = 0x12f1

.field private static final MSG_WALLPAPER_PRELOAD_CHANGED:I = 0x12f3

.field public static final MSG_WALLPAPER_TYPE_CHANGED:I = 0x12f0

.field private static final RICH_LOCK_CATEGORIES_WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.keyguardwallpaperupdator/files/wallpaper_images"

.field private static final RICH_LOCK_WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.keyguardwallpaperupdator"

.field public static final SETTING_KEYGUARD_DEFAULT_WALLPAPER_TYPE_FOR_EFFECT:Ljava/lang/String; = "keyguard_default_wallpaper_type_for_effect"

.field public static final SETTING_KEYGUARD_SET_DEFAULT_WALLPAPER:Ljava/lang/String; = "keyguard_set_default_wallpaper"

.field public static final SETTING_LOCKSCREEN_MONTBLANC_WALLPAPER:Ljava/lang/String; = "lockscreen_montblanc_wallpaper"

.field public static final SLIDING_INTERNAL_EVERY_12HOUR:I = 0x2

.field public static final SLIDING_INTERNAL_EVERY_1HOUR:I = 0x1

.field public static final SLIDING_INTERNAL_EVERY_24HOUR:I = 0x3

.field public static final SLIDING_INTERNAL_SCREENOFF:I = 0x0

.field public static final SlidingWallpaperPath:Ljava/lang/String; = "com.sec.android.slidingGallery"

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewController"

.field public static final UNLOCK_SOUND_AUTUMN:Ljava/lang/String; = "/system/media/audio/ui/autumn_unlock.ogg"

.field public static final UNLOCK_SOUND_NONE:Ljava/lang/String; = "/system/media/audio/ui/Unlock_none_effect.ogg"

.field public static final UNLOCK_SOUND_SPRING:Ljava/lang/String; = "/system/media/audio/ui/spring_unlock.ogg"

.field public static final UNLOCK_SOUND_SUMMER:Ljava/lang/String; = "/system/media/audio/ui/summer_unlock.ogg"

.field public static final UNLOCK_SOUND_WINTER:Ljava/lang/String; = "/system/media/audio/ui/winter_unlock.ogg"

.field private static displayHeight:I

.field private static displayWidth:I

.field private static mOrientation:I

.field private static mSlidingHour:I

.field private static mSlidingInterval:I

.field private static mSlidingMin:I

.field private static mSlidingScreenOffTime:J

.field private static mSlidingTime:J

.field private static mSlidingTotalCount:I

.field private static mSlidingWallpaperIndex:I

.field private static sKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

.field public static uriArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdminReceiver:Landroid/content/BroadcastReceiver;

.field private mAffordanceRect:Landroid/graphics/Rect;

.field private mAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

.field private mBackgroundRootLayout:Landroid/widget/FrameLayout;

.field private mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private mBgHasAddChargeView:Z

.field private mBootCompleted:Z

.field private mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:I

.field private mCurrentUserId:I

.field private mEmergencyModeStateChanged:Z

.field private mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

.field private mFestivalEffectEnabled:Z

.field private mFileObserver:Landroid/os/FileObserver;

.field private mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private mForegroundRootLayout:Landroid/widget/FrameLayout;

.field private mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private final mHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsShowing:Z

.field private mIsVisible:Z

.field private mIsWallpaperServiceBound:Z

.field private final mKeyguardWallpaperConnection:Landroid/content/ServiceConnection;

.field private mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundChangeCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;

.field private mMusicBackgroundSet:Z

.field private mNeedUpdateEffectScreen:Z

.field private mNotificationPanel:Landroid/widget/FrameLayout;

.field private mOldEffect:I

.field private mOldPrimaryEffect:Ljava/lang/String;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

.field private mRegisterReceiver:Z

.field private mResetPreviewRunnable:Ljava/lang/Runnable;

.field private mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

.field private mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

.field private mStatusBarGradationView:Landroid/view/View;

.field private mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUserSwitching:Z

.field private mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

.field private mVisibleNotificationBottom:I

.field protected mWallpaperPath:Ljava/lang/String;

.field private mWallpaperProcessSeparated:Z

.field private mWallpaperType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTotalCount:I

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    sput-wide v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    sput-wide v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsVisible:Z

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUserSwitching:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRegisterReceiver:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBootCompleted:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNeedUpdateEffectScreen:Z

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$4;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVisibleNotificationBottom:I

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mResetPreviewRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    new-instance v0, Lcom/samsung/android/theme/SThemeManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v4}, Lcom/samsung/android/theme/SThemeManager;->getVersionFromFeature(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    :goto_1
    new-instance v0, Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperContentObservers()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayHeight:I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_3

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string/jumbo v1, "com.sec.android.slidingGallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDataFromSlideshow(Landroid/content/Context;)V

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeyguardEffectViewMain SlidingWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->bindWallpaperService()V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperImageChanged()V

    return-void
.end method

.method static synthetic access$1002(J)J
    .locals 0

    sput-wide p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    return-wide p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRegisterReceiver:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRegisterReceiver:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDataFromSlideshow(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleSetGradationLayer()V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mResetPreviewRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleChargeStateChange()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUserSwitching:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperFileObserver()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNeedUpdateEffectScreen:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->chenckSlidingWallpaperByScreenon()V

    return-void
.end method

.method private static adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/high16 v3, 0x40000000    # 2.0f

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method private chenckSlidingWallpaperByScreenon()V
    .locals 4

    const/16 v3, 0x12f2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.android.slidingGallery.LOCKSCREEN_IMAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "edm.intent.action.internal.sec.LSO_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isJProject()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "com.sec.android.gallery3d.LOCKSCREEN_IMAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRegisterReceiver:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setSlidingWallpaperInfo(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isHProject()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMegaProject()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method

.method private createEffectInstance(Ljava/lang/String;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ClassNotFoundException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " NoSuchMethodException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " SecurityException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " InstantiationException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " IllegalAccessException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " InvocationTargetException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getCounterEffectName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v3, "getCounterEffectName"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ClassNotFoundException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " NoSuchMethodException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " SecurityException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " IllegalAccessException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " IllegalArgumentException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " InvocationTargetException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getCurrentSeasonEffect()I
    .locals 12

    const/4 v0, 0x0

    new-instance v1, Landroid/text/format/Time;

    const-string/jumbo v2, "GMT+8"

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    iget v2, v1, Landroid/text/format/Time;->year:I

    iget v3, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iget v1, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit16 v4, v2, -0x7d0

    int-to-double v4, v4

    const-wide v6, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v4, v6

    const-wide v6, 0x400ef5c28f5c28f6L    # 3.87

    add-double/2addr v4, v6

    add-int/lit16 v6, v2, -0x7d0

    div-int/lit8 v6, v6, 0x4

    int-to-double v6, v6

    sub-double/2addr v4, v6

    double-to-int v4, v4

    add-int/lit16 v5, v2, -0x7d0

    int-to-double v6, v5

    const-wide v8, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v6, v8

    const-wide v8, 0x4016147ae147ae14L    # 5.52

    add-double/2addr v6, v8

    add-int/lit16 v5, v2, -0x7d0

    div-int/lit8 v5, v5, 0x4

    int-to-double v8, v5

    sub-double/2addr v6, v8

    double-to-int v5, v6

    add-int/lit16 v6, v2, -0x7d0

    int-to-double v6, v6

    const-wide v8, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x401e000000000000L    # 7.5

    add-double/2addr v6, v8

    add-int/lit16 v8, v2, -0x7d0

    div-int/lit8 v8, v8, 0x4

    int-to-double v8, v8

    sub-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit16 v7, v2, -0x7d0

    int-to-double v8, v7

    const-wide v10, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v8, v10

    const-wide v10, 0x401dc083126e978dL    # 7.438

    add-double/2addr v8, v10

    add-int/lit16 v2, v2, -0x7d0

    div-int/lit8 v2, v2, 0x4

    int-to-double v10, v2

    sub-double/2addr v8, v10

    double-to-int v2, v8

    const/4 v7, 0x2

    if-eq v3, v7, :cond_1

    const/4 v4, 0x2

    if-lt v4, v3, :cond_3

    :goto_0
    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    const/4 v4, 0x5

    if-lt v4, v3, :cond_6

    :goto_1
    const/16 v4, 0x8

    if-eq v3, v4, :cond_7

    const/16 v4, 0x8

    if-lt v4, v3, :cond_9

    :goto_2
    const/16 v4, 0xb

    if-eq v3, v4, :cond_a

    const/16 v1, 0xb

    if-le v3, v1, :cond_b

    :cond_0
    const/16 v0, 0x54

    :goto_3
    const-string/jumbo v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CurrentSeason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-lt v1, v4, :cond_0

    :cond_2
    const/16 v0, 0x51

    goto :goto_3

    :cond_3
    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    goto :goto_0

    :cond_4
    if-lt v1, v5, :cond_2

    :cond_5
    const/16 v0, 0x52

    goto :goto_3

    :cond_6
    const/16 v4, 0x8

    if-lt v3, v4, :cond_5

    goto :goto_1

    :cond_7
    if-lt v1, v6, :cond_5

    :cond_8
    :goto_4
    const/16 v0, 0x53

    goto :goto_3

    :cond_9
    const/16 v4, 0xb

    if-lt v3, v4, :cond_8

    goto :goto_2

    :cond_a
    if-ge v1, v2, :cond_0

    goto :goto_4

    :cond_b
    const/4 v1, 0x2

    if-lt v3, v1, :cond_0

    goto :goto_3
.end method

.method private getDataFromSlideshow(Landroid/content/Context;)V
    .locals 7

    const/4 v6, -0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "emergency_mode"

    invoke-static {v0, v3, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eq v3, v2, :cond_2

    :goto_1
    const-string/jumbo v2, "KeyguardEffectViewController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EMMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",UPSMode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    :cond_0
    sput-object v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.samsung.slidinggallery"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "getData"

    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_5

    sput-object v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v0, "interval"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    const-string/jumbo v0, "imgCount"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTotalCount:I

    const-string/jumbo v0, "time"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    const-string/jumbo v0, "hour"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    const-string/jumbo v0, "minute"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    sget-wide v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "HH"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "mm"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    const-string/jumbo v0, "uriArray"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imgCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTotalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSlidingTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,Hour :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,Min:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "KeyguardEffectViewController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uriStr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "hh"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private getEffectClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LiveWallpaper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "Spring"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getFestivalEffectClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "com.android.keyguard.sec.rich.KeyguardEffectView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string/jumbo v0, "Summer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Autumn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Winter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Seasonal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "com.android.keyguard.sec.effect.KeyguardEffectView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEffectName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isZoomPanningEffectEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v2, :cond_3

    :cond_1
    :goto_0
    if-nez v1, :cond_4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "None"

    :goto_1
    :pswitch_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "ZoomPanning"

    return-object v0

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isOpenThemeWallpaperEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "OpenTheme"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "None"

    goto :goto_1

    :pswitch_3
    const-string/jumbo v0, "RippleInk"

    goto :goto_1

    :pswitch_4
    const-string/jumbo v0, "LensFlare"

    goto :goto_1

    :pswitch_5
    const-string/jumbo v0, "ParticleSpace"

    goto :goto_1

    :pswitch_6
    const-string/jumbo v0, "WaterColor"

    goto :goto_1

    :pswitch_7
    const-string/jumbo v0, "Blind"

    goto :goto_1

    :pswitch_8
    const-string/jumbo v0, "MassTension"

    goto :goto_1

    :pswitch_9
    const-string/jumbo v0, "MassRipple"

    goto :goto_1

    :pswitch_a
    const-string/jumbo v0, "BrilliantRing"

    goto :goto_1

    :pswitch_b
    const-string/jumbo v0, "BrilliantCut"

    goto :goto_1

    :pswitch_c
    const-string/jumbo v0, "IndigoDiffusion"

    goto :goto_1

    :pswitch_d
    const-string/jumbo v0, "AbstractTile"

    goto :goto_1

    :pswitch_e
    const-string/jumbo v0, "GeometricMosaic"

    goto :goto_1

    :pswitch_f
    const-string/jumbo v0, "WaterDroplet"

    goto :goto_1

    :pswitch_10
    const-string/jumbo v0, "SparklingBubbles"

    goto :goto_1

    :pswitch_11
    const-string/jumbo v0, "Spring"

    goto :goto_1

    :pswitch_12
    const-string/jumbo v0, "Summer"

    goto :goto_1

    :pswitch_13
    const-string/jumbo v0, "Autumn"

    goto :goto_1

    :pswitch_14
    const-string/jumbo v0, "Winter"

    goto :goto_1

    :pswitch_15
    const-string/jumbo v0, "Seasonal"

    goto :goto_1

    :pswitch_16
    const-string/jumbo v0, "LiveWallpaper"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "*** KeyguardEffectView create instance ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstanceIfExists(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
    .locals 2

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "*** KeyguardEffectView getInstanceIfExists ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    return-object v0
.end method

.method public static getScaledBitmapDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6

    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSlidingWallpaperPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getScaledBitmapDrawable Path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "/system/wallpaper/keyguard_empty_image.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSlidingWallpaperDegree(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOrientation:I

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x4

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOrientation:I

    if-gtz v3, :cond_2

    :goto_0
    const-string/jumbo v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getScaledBitmapDrawable File = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,canRead() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " tempBitmap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " displayWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " displayHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$drawable;->intro_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    move-object v2, v0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$drawable;->intro_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    return-object v1

    :cond_2
    :try_start_2
    sget v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOrientation:I

    invoke-static {v0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayWidth:I

    sget v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayHeight:I

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$drawable;->intro_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private getSeasonalLockSoundPath(IZ)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    if-nez p2, :cond_0

    const-string/jumbo v0, "/system/media/audio/ui/spring_unlock.ogg"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "/system/media/audio/ui/spring_lock.ogg"

    goto :goto_0

    :pswitch_1
    if-nez p2, :cond_1

    const-string/jumbo v0, "/system/media/audio/ui/summer_unlock.ogg"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "/system/media/audio/ui/summer_lock.ogg"

    goto :goto_0

    :pswitch_2
    if-nez p2, :cond_2

    const-string/jumbo v0, "/system/media/audio/ui/autumn_unlock.ogg"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "/system/media/audio/ui/autumn_lock.ogg"

    goto :goto_0

    :pswitch_3
    if-nez p2, :cond_3

    const-string/jumbo v0, "/system/media/audio/ui/winter_unlock.ogg"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "/system/media/audio/ui/winter_lock.ogg"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getSlidingWallpaperDegree(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getSlidingWallpaperPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const-string/jumbo v0, "/system/wallpaper/keyguard_empty_image.jpg"

    :cond_0
    :goto_0
    const-string/jumbo v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSlidingWallpaperPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSlidingWallpaperIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , uriArray.size(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    :goto_1
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    sget v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "/system/wallpaper/keyguard_empty_image.jpg"

    goto :goto_0

    :cond_2
    sput v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    goto :goto_1
.end method

.method private handleChargeStateChange()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    if-eq v0, v3, :cond_4

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    if-eq v0, v3, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getChargeEffectView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :goto_2
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_0
.end method

.method private handleFestivalEffect()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getFestivalView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    if-nez v0, :cond_3

    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isCommonDayShowFestivalWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_2
    return v3

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-ne v1, v0, :cond_4

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isUnlockEffectEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_4
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleFestivalEffect mIsShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setBackground()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getUnlockEffectView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    const/16 v0, 0x55

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setForeground()V

    goto :goto_1
.end method

.method private handleSetGradationLayer()V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_wallpaper_transparent"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_3

    :goto_1
    const-string/jumbo v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPreloadedWallpaper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncherWithoutSecure(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportBlendedFilter()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    if-eqz v0, :cond_6

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v6, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    :cond_6
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$drawable;->gradation_indi_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_0
.end method

.method private handleWallpaperImageChanged()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->shouldShowAttributionInfoView()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperSlider(Z)V

    :goto_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBrilliantCutSpecialTypeEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateMontblancEffectType()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_9

    :goto_4
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isCategoriesWallpaper()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_zoom_panning_effect"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperSlider(Z)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isZoomPanningEffectEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->handleShowSlideEffect()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->changeEffectType()V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto :goto_4
.end method

.method private handleWallpaperTypeChanged()V
    .locals 6

    const/4 v5, -0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_ripple_effect"

    invoke-static {v2, v3, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v2, :cond_5

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v2, :cond_6

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDefaultWallpaperTypeForEffect()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperType:I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isZoomPanningEffectEnabled()Z

    move-result v2

    if-eq v2, v1, :cond_7

    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleFestivalEffect()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v2, :cond_9

    :cond_1
    :goto_3
    move v1, v0

    :cond_2
    if-nez v1, :cond_a

    :goto_4
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v3, :cond_3

    const/high16 v0, -0x1000000

    :cond_3
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :goto_5
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleSetGradationLayer()V

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldEffect:I

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    if-ne v0, v2, :cond_b

    :goto_6
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->makeEffectViews(IZ)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setLayerAndBitmapForPoppingColorEffect()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateAttributionInfoView()V

    return-void

    :cond_4
    return-void

    :cond_5
    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_0

    :cond_6
    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v2

    if-ne v2, v1, :cond_0

    const/16 v2, 0x50

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    goto :goto_2

    :cond_8
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    return-void

    :cond_9
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isOpenThemeWallpaperEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_a
    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    goto :goto_4

    :pswitch_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_5

    :pswitch_2
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_5

    :pswitch_3
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_5

    :cond_b
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldEffect:I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->reloadLockSound()V

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isBackgroundEffect(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v3, "isBackgroundEffect"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ClassNotFoundException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " NoSuchMethodException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " SecurityException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " IllegalAccessException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " IllegalArgumentException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " InvocationTargetException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static isLockScreenEffect(I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    return v2

    :cond_1
    if-eq p0, v2, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x50

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    const/16 v0, 0x51

    if-eq p0, v0, :cond_0

    const/16 v0, 0x52

    if-eq p0, v0, :cond_0

    const/16 v0, 0x53

    if-eq p0, v0, :cond_0

    const/16 v0, 0x54

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    return v1
.end method

.method private makeEffectViews(IZ)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    if-eqz v2, :cond_4

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v0, :cond_15

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_5

    const-string/jumbo v0, "None"

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->createEffectInstance(Ljava/lang/String;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isBackgroundEffect(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-ne v0, v3, :cond_10

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    const-string/jumbo v3, "KeyguardEffectViewController"

    const-string/jumbo v4, "Sets foreground view first"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCounterEffectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->createEffectInstance(Ljava/lang/String;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eq v3, v0, :cond_11

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v2, "Sets background view later"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_12

    :goto_6
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setForeground()V

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUserSwitching:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_5
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    if-eqz p2, :cond_7

    :cond_6
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setBackground()V

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setForeground()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    return-void

    :cond_7
    if-eqz v2, :cond_6

    const-string/jumbo v0, "LiveWallpaper"

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "None"

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isBackgroundEffect(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    move-object v1, v2

    :goto_7
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->createEffectInstance(Ljava/lang/String;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    :goto_8
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    :goto_9
    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUnlockEffectView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setForeground()V

    return-void

    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCounterEffectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_9
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_9

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto/16 :goto_2

    :cond_c
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setBackground()V

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setForeground()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    return-void

    :cond_d
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    if-eqz p2, :cond_f

    :cond_e
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    :goto_a
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    const-string/jumbo v3, "KeyguardEffectViewController"

    const-string/jumbo v4, "Sets backgound view first"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_f
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_a

    :cond_10
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto/16 :goto_3

    :cond_11
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v2, "Sets foreground view later"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_12
    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v2, "mBackgroundView is not null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBrilliantCutSpecialTypeEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    :goto_b
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setBackground()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->updateAfterCreation()V

    goto/16 :goto_6

    :cond_14
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDefaultWallpaperTypeForEffect()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->settingsForImageType(I)V

    goto :goto_b

    :cond_15
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto/16 :goto_1
.end method

.method private setBackground()V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_2

    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportBlendedFilter()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->shouldShowAttributionInfoView()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperSlider(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_0
    :goto_3
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v3, v0, v5, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleSetGradationLayer()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    if-eqz v0, :cond_4

    :goto_4
    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v3, "Apply BlendedFilter from setBackground()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    invoke-virtual {v0, v3, v5, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "lockscreen_wallpaper_transparent"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_5

    move v0, v1

    :goto_5
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->resetBlendedFilter()V

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->applyBlendedFilter(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getChargeEffectView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v5, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    goto :goto_3
.end method

.method private setForeground()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public static setSlidingWallpaperInfo(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 10

    const-wide/16 v6, 0x3c

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mSlidingInterval = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v9, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v9, " , mSlidingWallpaperIndex:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v9, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v2, v3

    :cond_1
    :goto_1
    if-nez v2, :cond_c

    :cond_2
    :goto_2
    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "results = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " , mSlidingWallpaperIndex:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_0
    move-wide v0, v4

    :goto_3
    cmp-long v9, v0, v4

    if-nez v9, :cond_3

    const-wide/16 v0, 0x2d0

    :cond_3
    :goto_4
    cmp-long v4, v0, v4

    if-nez v4, :cond_4

    const-wide/16 v0, 0x5a0

    :cond_4
    mul-long/2addr v0, v6

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "HH"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "hh"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "mm"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",  :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    if-eq v5, v2, :cond_a

    sget v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_b

    sget v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    sget v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    if-ne v1, v4, :cond_0

    sget v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :pswitch_1
    move-wide v0, v4

    goto/16 :goto_4

    :pswitch_2
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :pswitch_3
    move-wide v0, v6

    goto/16 :goto_3

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sget-wide v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sget-wide v8, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_6

    move v0, v2

    :goto_5
    if-nez v0, :cond_7

    sget-wide v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sget-wide v8, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    sub-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    rem-long/2addr v0, v4

    add-long/2addr v0, v6

    :goto_6
    const-string/jumbo v6, "KeyguardEffectViewController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(minutesCount "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " minuteThreshold "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v0, v4

    if-gez v0, :cond_8

    move v0, v2

    :goto_7
    if-nez v0, :cond_9

    move v0, v2

    :goto_8
    move v2, v0

    goto/16 :goto_1

    :cond_6
    move v0, v3

    goto :goto_5

    :cond_7
    sget-wide v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sget-wide v8, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    sub-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    rem-long/2addr v0, v4

    sub-long v0, v4, v0

    add-long/2addr v0, v6

    goto :goto_6

    :cond_8
    move v0, v3

    goto :goto_7

    :cond_9
    move v0, v3

    goto :goto_8

    :cond_a
    sget v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_b
    sget v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    if-ne v4, v1, :cond_0

    sget v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_c
    sget v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    sget v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    sget v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTotalCount:I

    if-lt v0, v1, :cond_2

    sput v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final setWallpaperContentObservers()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_ripple_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "opne_theme_effect_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper_path"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper_path_2"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper_transparent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_zoom_panning_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperFileObserver()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.android.slidingGallery.LOCKSCREEN_IMAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "edm.intent.action.internal.sec.LSO_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRegisterReceiver:Z

    return-void
.end method

.method private setWallpaperFileObserver()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    if-nez v0, :cond_3

    :goto_1
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$7;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$7;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string/jumbo v1, "com.sec.android.slidingGallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDataFromSlideshow(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    goto :goto_1
.end method


# virtual methods
.method public bindWallpaperService()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "*** Keyguard wallpaper service already started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "com.android.systemui.keyguard.KeyguardWallpaperService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v5, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentUserId:I

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "*** Keyguard wallpaper service started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "*** Keyguard: can\'t bind to com.android.systemui.keyguard.KeyguardWallpaperService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changeEffectType()V
    .locals 4

    const/4 v3, -0x2

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "changeEffectType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "keyguard_set_default_wallpaper"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBrilliantCutSpecialTypeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "keyguard_default_wallpaper_type_for_effect"

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->settingsForImageType(I)V

    goto :goto_0
.end method

.method public changeWallpaperByScreenOff()V
    .locals 4

    const/16 v3, 0x12f2

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "changeWallpaperByScreenOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string/jumbo v1, "com.sec.android.slidingGallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "KeyguardEffectViewController"

    const-string/jumbo v2, "change sliding wallpaper()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setSlidingWallpaperInfo(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method

.method public cleanUp()V
    .locals 2

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetShowState(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_3

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_4

    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-nez v0, :cond_5

    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->cleanUp()V

    goto :goto_5
.end method

.method public getBackgroundLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCircleView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    return-object v0
.end method

.method public getCounterEffectName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultWallpaperTypeForEffect()I
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "keyguard_default_wallpaper_type_for_effect"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getForegroundLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getIsShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsShowing:Z

    return v0
.end method

.method public getPreviewContainer()Lcom/android/keyguard/sec/KeyguardPreviewContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    return-object v0
.end method

.method public getUnlockDelay()J
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_2

    :cond_0
    return-wide v2

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v0

    return-wide v0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->getUnlockDelay()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "RemoteException occured while handing getUnlockDelay()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public handleSensorEvent(Landroid/hardware/SensorEvent;)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    return v1
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    if-nez p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_4

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->sendTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "RemoteException occured while handing handleTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    if-nez p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_4

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->handleUnlock(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "RemoteException occured while handing handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleUpdateKeyguardMusicBackground(Landroid/graphics/Bitmap;)V
    .locals 3

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleUpdateKeyguardMusicBackground(): bmp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateAttributionInfoView()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->setContextualWallpaper(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "RemoteException occured while setContextualWallpaper()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public isBackgroundEffect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCategoriesWallpaper()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string/jumbo v3, "/data/data/com.samsung.android.keyguardwallpaperupdator/files/wallpaper_images"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    const/4 v5, -0x2

    if-eq v3, v5, :cond_4

    move v3, v1

    :goto_1
    const-string/jumbo v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isCategoriesWallpaper = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", isLiveWallpaper = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "isHomeWallpaper = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_5

    :cond_0
    :goto_2
    move v2, v1

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    goto :goto_2
.end method

.method public isFestivalActivated()Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isFestivalActivated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public isJustLockLiveEnabled()Z
    .locals 2

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMusicBackgroundSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    return v0
.end method

.method public isRichLockWallpaper()Z
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string/jumbo v1, "/data/data/com.samsung.android.keyguardwallpaperupdator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRichLockWallpaper() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomPanningEffectEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isZoomPanningEffectEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public playLockSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->playLockSound()V

    goto :goto_0
.end method

.method public reloadLockSound()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "reloadLockSound()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isFestivalActivated()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    sparse-switch v0, :sswitch_data_0

    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;

    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCurrentSeasonEffect()I

    move-result v1

    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewLensFlare;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewAbstractTile;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCurrentSeasonEffect()I

    move-result v1

    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_b
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_c
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;

    invoke-interface {v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;->reloadLockSound(Lcom/android/keyguard/sec/effect/LockSoundInfo;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_4
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_1
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_1
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0x51 -> :sswitch_9
        0x52 -> :sswitch_9
        0x53 -> :sswitch_9
        0x54 -> :sswitch_9
        0x55 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch
.end method

.method public removeMusicWallpaper()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateAttributionInfoView()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDefaultWallpaperTypeForEffect()I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->setContextualWallpaper(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "RemoteException occured while setContextualWallpaper()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->removeMusicWallpaper()V

    goto :goto_1
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_5

    :goto_4
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNeedUpdateEffectScreen:Z

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->bindWallpaperService()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "RemoteException occured while handing screenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    goto :goto_4

    :cond_6
    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "Update screen by User change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_7

    :goto_6
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_8

    :goto_7
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_9

    :goto_8
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_a

    :goto_9
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNeedUpdateEffectScreen:Z

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto :goto_9
.end method

.method public resetPreviewView()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mResetPreviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->resetPreviewView()V

    goto :goto_0
.end method

.method public screenTurnedOff()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetScreenState(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_5

    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_6

    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "RemoteException occured while handing screenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOff()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOff()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOff()V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOff()V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOff()V

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->screenTurnedOff()V

    goto :goto_6
.end method

.method public screenTurnedOn()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetScreenState(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_5

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_6

    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_1
    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-nez v0, :cond_8

    :goto_6
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "RemoteException occured while handing screenTurnedOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOn()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOn()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOn()V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOn()V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOn()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->pauseAnimation()V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->screenTurnedOn()V

    goto :goto_6
.end method

.method public setAttributionInfoView(Lcom/android/keyguard/sec/SecAttributionInfoView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateAttributionInfoView()V

    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setEffectLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    if-nez p4, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    return-void

    :cond_0
    check-cast p4, Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iput-object p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    goto :goto_0
.end method

.method public setFestivalKeyguardShowing(ZI)V
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFestivalKeyguardShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isFestivalActivated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isFestivalActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/ViewGroup;

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setHidden(Z)V
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHidden = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v1, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v1, :cond_3

    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v1, :cond_4

    :goto_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v1, :cond_5

    :goto_4
    if-eqz p1, :cond_6

    :goto_5
    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsVisible:Z

    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "KeyguardEffectViewController"

    const-string/jumbo v2, "RemoteException occured while handing setHidden(false)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setHidden(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setHidden(Z)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setHidden(Z)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setHidden(Z)V

    goto :goto_4

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public setKeyguardShowing(ZZ)V
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    const-string/jumbo v2, "KeyguardEffectViewController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setKeyguardShowing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v1, :cond_5

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->cleanUp()V

    :cond_1
    :goto_2
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsShowing:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setFestivalKeyguardShowing(ZI)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsShowing:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->show()V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setHidden(Z)V

    :goto_3
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v1, "KeyguardEffectViewController"

    const-string/jumbo v2, "RemoteException occured while COMMAND_SET_WINDOW_ANIM"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->reset()V

    goto :goto_3

    :cond_5
    if-nez p2, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardEffectViewController"

    const-string/jumbo v2, "setKeyguardShowing: **** SHOWN CALLED to turn on forcingly ****"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;->screenOn()V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-nez v1, :cond_7

    :goto_4
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->bindWallpaperService()V

    goto :goto_1

    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    const-string/jumbo v1, "KeyguardEffectViewController"

    const-string/jumbo v2, "RemoteException occured while handing screenTurnedOff()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setLayerAndBitmapForPoppingColorEffect()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->setLayers(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setLiveWallpaperBg(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLiveWallpaperBg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    check-cast v0, Lcom/android/keyguard/sec/effect/EffectBehindView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/effect/EffectBehindView;->setLiveWallpaperBg(Landroid/graphics/Bitmap;)V

    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setLockSoundChangeCallback(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->reloadLockSound()V

    return-void
.end method

.method public setPreviewView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->setPreviewView(Z)V

    goto :goto_0
.end method

.method public setScreenOnCallback(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isKeyguardEffectViewWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-nez v0, :cond_3

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->setKeyguardWallpaperShowCallback(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "RemoteException occured while setKeyguardWallpaperShowCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVisibleNotificationBottom(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVisibleNotificationBottom:I

    return-void
.end method

.method public setWallpaperSlider(Z)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-nez v0, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-nez v0, :cond_1

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "add WallpaperSlider."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->notifyWallpaperStateChanged()V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "remove WallpaperSlider."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->notifyWallpaperStateChanged()V

    goto :goto_0
.end method

.method public shouldShowAttributionInfoView()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isCategoriesWallpaper()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    return v1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public show()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetShowState(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_5

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_6

    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_1
    :goto_5
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->bindWallpaperService()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "RemoteException occured while handing screenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->show()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->show()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->show()V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->show()V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->GetScreenState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->show()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->pauseAnimation()V

    goto :goto_5
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 5

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMovableAffordance()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_4

    :goto_2
    return-void

    :cond_2
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVisibleNotificationBottom:I

    if-lez v0, :cond_0

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showUnlockAffordance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVisibleNotificationBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVisibleNotificationBottom:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "RemoteException occured while handing showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    goto :goto_2
.end method

.method public startPreviewAnimation(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "startPreviewAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$8;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$8;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->startAnimation(Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v0, :cond_1

    :try_start_0
    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "COMMAND_REMOVE_WINDOW_ANIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "RemoteException occured while COMMAND_REMOVE_WINDOW_ANIM"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized unbindWallpaperService()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "*** Keyguard wallpaper service already unbounded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "*** Keyguard wallpaper service unbounded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "RemoteException occured while handing update()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto :goto_4
.end method

.method public updateAfterCreation()V
    .locals 0

    return-void
.end method

.method public updateAttributionInfoView()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->update()V

    return-void

    :cond_0
    return-void
.end method

.method public updateIsAdminWallpaper()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$10;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$10;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateMontblancEffectType()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lockscreen_montblanc_wallpaper"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->settingsForImageType(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1
.end method
