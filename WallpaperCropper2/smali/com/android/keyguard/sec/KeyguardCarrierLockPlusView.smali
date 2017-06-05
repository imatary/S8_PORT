.class public Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;
.super Landroid/widget/LinearLayout;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static final BOUNCER_FRAME_BACKGROUND_COLOR:I

.field static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardCarrierLockPlusView"

.field private static final TIMEOUT:I = 0x1


# instance fields
.field private final CARRIER_LOCK_DISABLED:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallButton:Landroid/widget/Button;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private final mContext:Landroid/content/Context;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardBouncerFrameView:Landroid/view/View;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMaintext:Landroid/widget/TextView;

.field private mMccInfo:Ljava/lang/String;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mPhoneNumber:Ljava/lang/String;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mUnlockButton:Landroid/widget/Button;

.field private mWakelockSequence:I

.field mtelephony:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    sput v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x66ffffff

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "0000"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneNumber:Ljava/lang/String;

    const-string/jumbo v0, "com.sec.android.CarrierLock.DISABLED"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->CARRIER_LOCK_DISABLED:Ljava/lang/String;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$1;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$2;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$3;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$7;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.android.CarrierLock.DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string/jumbo v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMccInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMccInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->updateButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->handleTimeout(I)V

    return-void
.end method

.method private handleTimeout(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "KeyguardCarrierLockPlusView"

    const-string/jumbo v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakelockSequence:I

    if-eq p1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->setKeepScreenOn(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setCarrierLockPlusInfo()V
    .locals 3

    sget v0, Lcom/android/keyguard/R$id;->carrierlockplus_main_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->parsingCarrierLockPlusMsg()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierPasswordSaved()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCarrierLockPlusInfo(I)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/android/keyguard/R$id;->carrierlockplus_owner_info:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mOwnerInfo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v0, :cond_5

    :goto_2
    return-void

    :cond_1
    const-string/jumbo v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_findlostphone_eng:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_findlostphone_kor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_findlostphone_cn:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardCarrierLockPlusView"

    const-string/jumbo v1, "HostView CarrierPassword NOT exist!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.FindingLostPhonePlus.SAVELOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MASTER_CLEAR"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateButtonVisibility(I)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string/jumbo v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_eng:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$9;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$9;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_returntocall_eng:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$8;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_returntocall_kor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_returntocall_cn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_kor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_cn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const-string/jumbo v0, "KeyguardCarrierLockPlusView"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->setCarrierLockPlusInfo()V

    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEcaView:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-nez v0, :cond_1

    :goto_0
    sget v0, Lcom/android/keyguard/R$id;->carrierlockplus_call_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v0, Lcom/android/keyguard/R$id;->carrierlockplus_unlock_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    sget v0, Lcom/android/keyguard/R$id;->carrierlockplus_emergency_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    if-nez v0, :cond_6

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    if-nez v0, :cond_9

    :goto_3
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_eng:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_kor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_cn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$4;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_unlock_eng:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$5;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_unlock_kor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_unlock_cn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_5

    :cond_9
    const-string/jumbo v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_emergencycall_eng:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$6;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_emergencycall_kor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_emergencycall_cn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_6
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->getKeepScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->setKeepScreenOn(Z)V

    goto :goto_0
.end method

.method public onResume(I)V
    .locals 0

    return-void
.end method

.method public pokeWakelock(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "KeyguardCarrierLockPlusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pokeWakelock("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakelockSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakelockSequence:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakelockSequence:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public resetState()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->getKeepScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->setKeepScreenOn(Z)V

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showBouncer(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncerWithScaleAnimation(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
