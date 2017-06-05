.class public Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final KEYGUARD_DEFAULT_WALLPAPER_TYPE_BRILLIANT:I = 0x1

.field private static final MSG_HANDLE_TOUCH_EVENT:I = 0x1f4

.field private static final MSG_WALLPAPER_EFFECT_CHANGED:I = 0x12f0

.field private static final MSG_WALLPAPER_FILE_CHANGED:I = 0x12c

.field private static final MSG_WALLPAPER_PATH_CHANGED:I = 0xc8

.field private static final MSG_WALLPAPER_PRELOAD_CHANGED:I = 0x190

.field private static final RICH_LOCK_CATEGORIES_WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.keyguardwallpaperupdator/files/wallpaper_images"

.field private static final RICH_LOCK_WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.keyguardwallpaperupdator"

.field private static final SETTING_KEYGUARD_DEFAULT_WALLPAPER_TYPE_FOR_EFFECT:Ljava/lang/String; = "keyguard_default_wallpaper_type_for_effect"

.field private static final SETTING_KEYGUARD_SET_DEFAULT_WALLPAPER:Ljava/lang/String; = "keyguard_set_default_wallpaper"

.field private static final SETTING_LOCKSCREEN_MONTBLANC_WALLPAPER:Ljava/lang/String; = "lockscreen_montblanc_wallpaper"

.field private static final TAG:Ljava/lang/String; = "KeyguardWallpaperViewController"


# instance fields
.field private mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

.field private mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field mConfigurationChangeCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout$ConfigurationChangeCallback;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mEmergencyModeStateChanged:Z

.field private mFileObserver:Landroid/os/FileObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mMusicBackgroundSet:Z

.field private mOpenThemeEnabled:Z

.field private mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

.field private mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

.field private mStatusBarGradationView:Landroid/view/View;

.field private mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

.field private mWallpaperPath:Ljava/lang/String;

.field private mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    iput-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mMusicBackgroundSet:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mEmergencyModeStateChanged:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeEnabled:Z

    new-instance v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$1;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$3;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mConfigurationChangeCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout$ConfigurationChangeCallback;

    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeEnabled:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleEffectChanged()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setContentObserver()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setWallpaperFileObserver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleEffectChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleWallpaperImageChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleSetGradationLayer()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setWallpaperFileObserver()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mEmergencyModeStateChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mLp:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    return-object v0
.end method

.method private addViewWindow()V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->removeAllViews()V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_1

    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportBlendedFilter()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->shouldShowAttributionInfoView()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setWallpaperSlider(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_6

    :goto_3
    return-void

    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mConfigurationChangeCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout$ConfigurationChangeCallback;

    invoke-direct {v0, v3, v4}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout$ConfigurationChangeCallback;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v3, v0, v5, v5}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->addView(Landroid/view/View;II)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleSetGradationLayer()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    if-eqz v0, :cond_3

    :goto_4
    const-string/jumbo v0, "KeyguardWallpaperViewController"

    const-string/jumbo v3, "Apply BlendedFilter from addViewWindow()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    invoke-virtual {v0, v3, v5, v5}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "lockscreen_wallpaper_transparent"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_4

    move v0, v1

    :goto_5
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->resetBlendedFilter()V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->applyBlendedFilter(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v0, "KeyguardWallpaperViewController"

    const-string/jumbo v1, "addView called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_6
.end method

.method private createUpdateEffectView(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "com.android.keyguard.sec.effect.KeyguardEffectView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "OpenTheme"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_4

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_5

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->getOpenThemeWallpaperView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_3

    :goto_2
    return-void

    :cond_2
    const-string/jumbo v1, "KeyguardOpenThemeEffect"

    const-string/jumbo v2, "change OpenTheme"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->addViewWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$5;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardWallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ClassNotFoundException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "KeyguardWallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " NoSuchMethodException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v0, "KeyguardWallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " SecurityException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v0, "KeyguardWallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " InstantiationException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v0, "KeyguardWallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IllegalAccessException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const-string/jumbo v0, "KeyguardWallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IllegalArgumentException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const-string/jumbo v0, "KeyguardWallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " InvocationTargetException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBrilliantCutSpecialTypeEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->addViewWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->updateAfterCreation()V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->getDefaultWallpaperTypeForEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->settingsForImageType(I)V

    goto :goto_3
.end method

.method private getBackgroundEffectName(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->isZoomPanningEffectEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeEnabled:Z

    if-nez v0, :cond_3

    :cond_1
    sparse-switch p1, :sswitch_data_0

    const-string/jumbo v0, "Wallpaper"

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->isRichLockWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Panning"

    return-object v0

    :cond_3
    new-instance v0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->getOpenThemeWallpaperView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "OpenTheme"

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "Wallpaper"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "RippleInk"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "ParticleSpace"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "WaterColor"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "Blind"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "BrilliantCut"

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "BrilliantRing"

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "ZoomPanning"

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "IndigoDiffusion"

    goto :goto_0

    :sswitch_9
    const-string/jumbo v0, "Tilt"

    goto :goto_0

    :sswitch_a
    const-string/jumbo v0, "AbstractTile"

    goto :goto_0

    :sswitch_b
    const-string/jumbo v0, "GeometricMosaic"

    goto :goto_0

    :sswitch_c
    const-string/jumbo v0, "WaterDroplet"

    goto :goto_0

    :sswitch_d
    const-string/jumbo v0, "SparklingBubbles"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_6
        0x9 -> :sswitch_5
        0xa -> :sswitch_8
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0x50 -> :sswitch_7
        0x51 -> :sswitch_0
        0x52 -> :sswitch_0
        0x53 -> :sswitch_0
        0x55 -> :sswitch_0
        0x65 -> :sswitch_9
    .end sparse-switch
.end method

.method private getCurrentEffectType()I
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_ripple_effect"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private handleEffectChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->getCurrentEffectType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->getBackgroundEffectName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->createUpdateEffectView(Ljava/lang/String;)V

    return-void
.end method

.method private handleSetGradationLayer()V
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_wallpaper_transparent"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_3

    :goto_1
    const-string/jumbo v1, "KeyguardWallpaperViewController"

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
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportBlendedFilter()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    if-eqz v0, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v6, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$drawable;->gradation_indi_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v5}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, v1, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method private handleWallpaperImageChanged()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mMusicBackgroundSet:Z

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->isRichLockWallpaper()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->shouldShowAttributionInfoView()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setWallpaperSlider(Z)V

    :goto_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBrilliantCutSpecialTypeEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleEffectChanged()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->updateMontblancEffectType()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->isRichLockWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->isCategoriesWallpaper()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_zoom_panning_effect"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setWallpaperSlider(Z)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->isZoomPanningEffectEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->handleShowSlideEffect()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->changeEffectType()V

    goto :goto_3
.end method

.method private setContentObserver()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_ripple_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper_path"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper_path_2"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper_transparent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "opne_theme_effect_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private setWallpaperFileObserver()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    const-string/jumbo v0, "KeyguardWallpaperViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mFileObserver:Landroid/os/FileObserver;

    if-nez v0, :cond_1

    :goto_0
    new-instance v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$4;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$4;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mFileObserver:Landroid/os/FileObserver;

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mFileObserver:Landroid/os/FileObserver;

    goto :goto_0
.end method


# virtual methods
.method public changeEffectType()V
    .locals 4

    const/4 v3, -0x2

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardWallpaperViewController"

    const-string/jumbo v1, "changeEffectType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mEmergencyModeStateChanged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "keyguard_default_wallpaper_type_for_effect"

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mEmergencyModeStateChanged:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->settingsForImageType(I)V

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardWallpaperViewController"

    const-string/jumbo v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mFileObserver:Landroid/os/FileObserver;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->removeViewWindow()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mFileObserver:Landroid/os/FileObserver;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->removeAllViews()V

    goto :goto_2
.end method

.method public createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    const/4 v1, -0x1

    const-string/jumbo v0, "KeyguardWallpaperViewController"

    const-string/jumbo v2, "createLayoutParams"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v2, v1

    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x832

    const/16 v4, 0x318

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string/jumbo v1, "KeyguardWallpaperService"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    sget v1, Lcom/android/keyguard/R$style;->Animation_WallpaperWindow:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "KeyguardWallpaperViewController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mWallpaperPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mOpenThemeEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  isOpenThemeActivated() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->isOpenThemeActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mEmergencyModeStateChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mEmergencyModeStateChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->getCurrentEffectType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  getCurrentEffectType() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  getBackgroundType(getCurrentEffectType()) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->getBackgroundEffectName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mBackgroundView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public executeCommand(I)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->cleanUp()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOn()V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->screenTurnedOn()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOff()V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->screenTurnedOff()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setHidden(Z)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mLp:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/keyguard/R$style;->Animation_WallpaperWindow:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getDefaultWallpaperTypeForEffect()I
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "keyguard_default_wallpaper_type_for_effect"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getUnlockDelay()J
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public handleUnlock(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, v1, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public isCategoriesWallpaper()Z
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    const-string/jumbo v1, "/data/data/com.samsung.android.keyguardwallpaperupdator/files/wallpaper_images"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "KeyguardWallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCategoriesWallpaper = "

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

.method public isOpenThemeActivated()Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeEnabled:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v1, "KeyguardWallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOpenThemeActivated() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRichLockWallpaper()Z
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    const-string/jumbo v1, "/data/data/com.samsung.android.keyguardwallpaperupdator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "KeyguardWallpaperViewController"

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

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isZoomPanningEffectEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public removeViewWindow()V
    .locals 2

    const-string/jumbo v0, "KeyguardWallpaperViewController"

    const-string/jumbo v1, "removeViewWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mMusicBackgroundSet:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mMusicBackgroundSet:Z

    return-void
.end method

.method public setWallpaperSlider(Z)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-nez v0, :cond_0

    const-string/jumbo v0, "KeyguardWallpaperViewController"

    const-string/jumbo v1, "add WallpaperSlider."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0, v1, v3, v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->notifyWallpaperStateChanged()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "KeyguardWallpaperViewController"

    const-string/jumbo v1, "remove WallpaperSlider."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->notifyWallpaperStateChanged()V

    goto :goto_0
.end method

.method public shouldShowAttributionInfoView()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->isCategoriesWallpaper()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public updateMontblancEffectType()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->settingsForImageType(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1
.end method
