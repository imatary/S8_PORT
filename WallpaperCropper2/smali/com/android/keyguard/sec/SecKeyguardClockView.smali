.class public Lcom/android/keyguard/sec/SecKeyguardClockView;
.super Landroid/widget/LinearLayout;
.source "Unknown"


# static fields
.field private static final FONT_SIZE_EASY_MODE_KOREAN_OWNER_INFO:I = 0x10

.field private static final FONT_SIZE_EASY_MODE_OWNER_INFO:I = 0x13

.field private static final MKEYBOARD_CONNECTED_SCALE:F = 0.75f

.field private static final MKEYBOARD_DISCONNECTED_SCALE:F = 1.0f

.field private static final MSG_CONTENT_UPDATED:I = 0x12cb

.field private static final MSG_HANDLE_POST_ONCONFIGURATIONCHANGED:I = 0x12cd

.field private static final MSG_TRAVEL_INFO_SETTINGS_CHANGED:I = 0x12cc

.field private static final TAG:Ljava/lang/String; = "SecKeyguardClockView"

.field public static final THEME_APPLY:Ljava/lang/String; = "com.samsung.android.theme.themecenter.THEME_APPLY"

.field private static mShouldShowDualClock:Ljava/lang/Boolean;


# instance fields
.field private mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

.field private mAdaptiveEventWeatherClockCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

.field private mClockHolder:Landroid/widget/FrameLayout;

.field private mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mClockViewSettingsObserver:Landroid/database/ContentObserver;

.field private mCurrentOrientation:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsMobileKeyboard:Z

.field mIsRotationEnabled:Z

.field private mIsUpdateOwnerInfo:Z

.field private mKeyguardClockBottom:Landroid/widget/LinearLayout;

.field private mKeyguardClockView:Landroid/widget/LinearLayout;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mScreenOn:Z

.field private mShowImageClock:Ljava/lang/Boolean;

.field private mTimeZone:Ljava/lang/String;

.field private mTravelText:Landroid/widget/TextView;

.field private mUseBlackTextOnWhiteWallpaper:Z

.field private mWasMobileKeyboard:Z

.field private wasWeatherVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->wasWeatherVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShowImageClock:Ljava/lang/Boolean;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mCurrentOrientation:I

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsRotationEnabled:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsUpdateOwnerInfo:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mScreenOn:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mUseBlackTextOnWhiteWallpaper:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mWasMobileKeyboard:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsMobileKeyboard:Z

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventWeatherClockCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockView$6;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshTravelInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->handleDelayedOnConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/sec/SecKeyguardClockView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/sec/SecKeyguardClockView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->shouldEnableKeyguardScreenRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/SecKeyguardClockView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/sec/SecKeyguardClockView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isDualClockSet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/keyguard/sec/SecKeyguardClockView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setAutoHomeTimezone(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setWidthAdaptiveEventContainer()V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/keyguard/sec/SecKeyguardClockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShowImageClock:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/SecKeyguardClockView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShowImageClock:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SecKeyguardClockView;)Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/SecKeyguardClockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->wasWeatherVisible:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/SecKeyguardClockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->wasWeatherVisible:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/SecKeyguardClockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleDelayedOnConfigurationChanged()V
    .locals 2

    const-string/jumbo v0, "SecKeyguardClockView"

    const-string/jumbo v1, "handleDelayedOnConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsRotationEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateClock()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshTravelInfo()V

    goto :goto_0
.end method

.method private is24HourModeEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_12_24"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_1

    const-string/jumbo v0, "12"

    :goto_0
    const-string/jumbo v1, "24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    const-string/jumbo v0, "12"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "24"

    goto :goto_0
.end method

.method private isClockCentered()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isDualClockSet()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isSingleClockCenterAlign(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isClockMovedByWeatherVisiblity()Z

    move-result v4

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    if-nez v3, :cond_3

    :cond_0
    move v3, v1

    :goto_1
    if-nez v0, :cond_4

    :cond_1
    if-nez v4, :cond_6

    :goto_2
    move v0, v2

    :goto_3
    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDualClockCenterAlign(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->isShowingWeatherInfo()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_1

    :cond_4
    if-nez v4, :cond_1

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    if-nez v3, :cond_5

    goto :goto_2
.end method

.method private isDualClockSet()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDualClock(Landroid/content/Context;)Z

    move-result v4

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getHometimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v7

    if-eqz v3, :cond_2

    :cond_0
    move v2, v1

    :goto_1
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_0

    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    if-nez v5, :cond_0

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isIgnoreNationalRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isNationalRoamingForTWO(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method private isUpdateOwnerInfo()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->hideOwnerInfoOnNotification()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsUpdateOwnerInfo:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private refreshOwnerInfo()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SecKeyguardClockView"

    const-string/jumbo v1, "refreshOwnerInfo() - return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateCMASText()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalInfoEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v0, :cond_7

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isUpdateOwnerInfo()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_profile_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBigFontModelinEasyMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ko"

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/high16 v1, 0x41980000    # 19.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x4

    goto/16 :goto_0
.end method

.method private refreshTravelInfo()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isTravelWallpaperSet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getTravelLocationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private scaleTopViewByMKeyboard()V
    .locals 2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsMobileKeyboard:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsMobileKeyboard:Z

    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mWasMobileKeyboard:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsMobileKeyboard:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mWasMobileKeyboard:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsMobileKeyboard:Z

    if-nez v1, :cond_2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    if-nez v1, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    if-nez v1, :cond_4

    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    if-nez v1, :cond_5

    :goto_3
    return-void

    :cond_2
    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->setScaleX(F)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    goto :goto_3
.end method

.method private setAutoHomeTimezone(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "homecity_timezone"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const-string/jumbo v1, "SecKeyguardClockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HomeTimezone(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "homecity_timezone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const-string/jumbo v0, "SecKeyguardClockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set homecity_timezone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "homecity_timezone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "homecity_timezone"

    const-string/jumbo v2, "Asia/Seoul"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private setDualClockImageLayoutParams()V
    .locals 8

    const v7, 0x800003

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_left:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_right:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v4, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v5, v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    sget v1, Lcom/android/keyguard/R$id;->keyguard_sec_clock_dual_image:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isClockCentered()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v5, v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/keyguard/R$bool;->theme_use_clock_background_image:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v4, Lcom/android/keyguard/R$dimen;->kg_dualclock_container_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$drawable;->dualclock_background_image:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setDualClockLayoutParams()V
    .locals 8

    const v7, 0x800003

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_left:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_right:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v4, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v5, v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    sget v1, Lcom/android/keyguard/R$id;->keyguard_sec_clock_dual_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isClockCentered()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v5, v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/keyguard/R$bool;->theme_use_clock_background_image:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v4, Lcom/android/keyguard/R$dimen;->kg_dualclock_container_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$drawable;->dualclock_background_image:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setPivotForMKeyboard()V
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    if-nez v0, :cond_3

    :goto_2
    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_adaptive_event_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->setPivotX(F)V

    goto :goto_2
.end method

.method private setSingleClockImageLayoutParams()V
    .locals 8

    const v7, 0x800003

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_left:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_right:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v4, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v5, v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    sget v1, Lcom/android/keyguard/R$id;->keyguard_sec_clock_single_image:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isClockCentered()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/keyguard/R$bool;->theme_use_clock_background_image:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v4, Lcom/android/keyguard/R$dimen;->kg_singleclock_container_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$drawable;->theme_textclock_bg_image:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setSingleClockLayoutParams()V
    .locals 8

    const v7, 0x800003

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_left:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_right:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v4, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v5, v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    sget v1, Lcom/android/keyguard/R$id;->keyguard_sec_clock_single_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->updateMarginPaddingTimeIfTheme(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isClockCentered()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v7}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setGravity(I)V

    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v6}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setGravity(I)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/keyguard/R$bool;->theme_use_clock_background_image:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v4, Lcom/android/keyguard/R$dimen;->kg_singleclock_container_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$drawable;->theme_textclock_bg_image:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setWidthAdaptiveEventContainer()V
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTimeZone:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    :goto_0
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->is24HourModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v1, "SecKeyguardClockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mTimeZone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",   hour:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",   isShortMaxWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->setWidthWeatherCityName(Z)V

    return-void

    :cond_1
    return-void

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTimeZone:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isDualClockSet()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x9

    if-gt v2, v0, :cond_0

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "lockscreen.rot_override"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget v2, Lcom/android/keyguard/R$bool;->config_enableLockScreenRotation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method protected handleUpdateClock()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateClock()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isClockMovedByWeatherVisiblity()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isClockMovedByWeatherVisiblity()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockView$4;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockView$5;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    const-string/jumbo v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventWeatherClockCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEventWeatherClockCallback(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;)V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/16 v4, 0x12cd

    const-string/jumbo v0, "SecKeyguardClockView"

    const-string/jumbo v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mScreenOn:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->scaleTopViewByMKeyboard()V

    return-void

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mCurrentOrientation:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->handleDelayedOnConfigurationChanged()V

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isClockMovedByWeatherVisiblity()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEventWeatherClockCallback(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget v0, Lcom/android/keyguard/R$id;->keyguard_sec_clock_holder:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_sec_clock_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_sec_clock_bottom:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_owner_info:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_travel_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/keyguard/R$bool;->theme_use_image_clock:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShowImageClock:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "white_lockscreen_wallpaper"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mUseBlackTextOnWhiteWallpaper:Z

    sget v0, Lcom/android/keyguard/R$id;->adaptive_event_container_small:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setPivotForMKeyboard()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->scaleTopViewByMKeyboard()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public updateCMASText()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "SecKeyguardClockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCMASText() mOwnerInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "lock_screen_show_notifications"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    move v0, v1

    :goto_1
    const-string/jumbo v3, "SecKeyguardClockView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disableNoti = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return v1

    :cond_1
    return v1

    :cond_2
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SecKeyguardClockView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCMASText() can not found setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    const-string/jumbo v0, "SecKeyguardClockView"

    const-string/jumbo v3, "updateCMASText( )"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingCMAS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "SecKeyguardClockView"

    const-string/jumbo v3, "[No SPR] Emergency Alert!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_vzw:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    sget v3, Lcom/android/keyguard/R$drawable;->ic_lockscreen_cmas:I

    invoke-virtual {v0, v3, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return v2

    :cond_4
    const-string/jumbo v0, "SecKeyguardClockView"

    const-string/jumbo v3, "[SPR] Presidential Alert!! "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_spr:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected updateClock()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isDualClockSet()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setWidthAdaptiveEventContainer()V

    const-string/jumbo v0, "SecKeyguardClockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateClock with mShowImageClock :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShowImageClock:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShowImageClock:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_single_image:I

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "SecKeyguardClockView"

    const-string/jumbo v1, "clock Image null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_single_view:I

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "SecKeyguardClockView"

    const-string/jumbo v1, "clock null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_dual_view:I

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "SecKeyguardClockView"

    const-string/jumbo v1, "clock null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setDualClockLayoutParams()V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setSingleClockLayoutParams()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_dual_image:I

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "SecKeyguardClockView"

    const-string/jumbo v1, "clock Image null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setDualClockImageLayoutParams()V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setSingleClockImageLayoutParams()V

    goto/16 :goto_0
.end method

.method public updateLongShadowImageViews()V
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sec_clock_single_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShowImageClock:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->updateLongShadowImageViews()V

    goto :goto_0
.end method

.method public updateOwnerInfo(ZZ)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsUpdateOwnerInfo:Z

    if-ne v1, p1, :cond_1

    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsUpdateOwnerInfo:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V

    goto :goto_1
.end method
