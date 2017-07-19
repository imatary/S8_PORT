.class public Lcom/android/keyguard/sec/SecKeyguardStatusView;
.super Landroid/widget/FrameLayout;
.source "Unknown"


# static fields
.field private static final MSG_CONTENT_UPDATED:I = 0x12cb

.field private static final MSG_MY_PROFILE_SETTINGS_CHANGED:I = 0x64

.field private static final MY_PROFILE_ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "SecKeyguardStatusView"


# instance fields
.field private mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentOrientation:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsDcmClock:Z

.field private mIsNetworkRoaming:Z

.field mIsRotationEnabled:Z

.field private mProfileSettingsObserver:Landroid/database/ContentObserver;

.field private mSecKeyguardClockView:Lcom/android/keyguard/sec/SecKeyguardClockView;

.field private mSecKeyguardProfileView:Lcom/android/keyguard/sec/SecKeyguardProfileView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mCurrentOrientation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsRotationEnabled:Z

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardStatusView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardStatusView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardStatusView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->handleMyProfileSettngsChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateStatusView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsNetworkRoaming:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/SecKeyguardStatusView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsNetworkRoaming:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsDcmClock:Z

    return v0
.end method

.method private handleMyProfileSettngsChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateStatusView()V

    return-void
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

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

.method private updateStatusView()V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isProfileOn(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v2

    const-string/jumbo v3, "SecKeyguardStatusView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateStatusView(): isProfileOn= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isEasyUxOn= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->removeAllViews()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->sec_wallpaper_widget_container:I

    invoke-static {v0, v1, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsDcmClock:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsDcmClock:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_view:I

    invoke-static {v0, v1, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v8, v7}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->addView(Landroid/view/View;II)V

    :goto_1
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sec_clock_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardClockView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/sec/SecKeyguardClockView;

    :goto_2
    return-void

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isJProject()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->sec_keyguard_profile_view:I

    invoke-static {v0, v1, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->addView(Landroid/view/View;)V

    sget v0, Lcom/android/keyguard/R$id;->keyguard_sec_profile_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardProfileView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardProfileView:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->dcm_keyguard_clock_view:I

    invoke-static {v0, v1, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v8, v7}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->addView(Landroid/view/View;II)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardStatusView$3;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardStatusView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardStatusView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfileSettingsObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "my_profile_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfileSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfileSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isProfileOn(Landroid/content/Context;)Z

    move-result v0

    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mCurrentOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    :goto_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsRotationEnabled:Z

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mCurrentOrientation:I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateStatusView()V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfileSettingsObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfileSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->shouldEnableKeyguardScreenRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsRotationEnabled:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateStatusView()V

    return-void
.end method

.method public updateLongShadowImageViews()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/sec/SecKeyguardClockView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateLongShadowImageViews()V

    goto :goto_0
.end method

.method public updateOwnerInfo(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/sec/SecKeyguardClockView;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardProfileView:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateOwnerInfo(ZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardProfileView:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->updateOwnerInfo(ZZ)V

    goto :goto_1
.end method
