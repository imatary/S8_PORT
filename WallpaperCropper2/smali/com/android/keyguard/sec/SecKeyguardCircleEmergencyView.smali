.class public Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;
.super Lcom/android/keyguard/sec/SecKeyguardCircleView;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$7;
    }
.end annotation


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final ACTION_EMERGENCY_LIST:Ljava/lang/String; = "com.samsung.phone.EmergencyDialer.LIST"

.field private static final SIM_SLOT1:I = 0x0

.field private static final SIM_SLOT2:I = 0x1

.field private static final SKT_UNREG_SIM:I = 0x13

.field private static final SYSTEM_SIMTYPE:Ljava/lang/String; = "ril.simtype"

.field private static final TAG:Ljava/lang/String; = "SecKeyguardCircleEmergencyView"


# instance fields
.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsCallStateOffHook:Z

.field private mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

.field private mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

.field private mPasswordEntryView:Landroid/view/View;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mServiceState:I

.field private mServiceState2:I

.field private mTelephony:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    sget v0, Lcom/android/keyguard/R$id;->circle_arrow_emergnecy:I

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mArrowResId:I

    sget v0, Lcom/android/keyguard/R$id;->emergency_button:I

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentResId:I

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->PHONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mType:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    return-void
.end method

.method private VoIPIsInUse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->updateEmergencyCallButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    return p1
.end method

.method private callToEmergencyLine(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecKeyguardCircleEmergencyView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find the component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMultiSimLocked()Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "SecKeyguardCircleEmergencyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMultiSimLocked()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private launchEmergencyAUSDialer()V
    .locals 3

    const-string/jumbo v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/keyguard/PasswordTextView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    :goto_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->launchEmergencyDialler()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/PasswordTextView;->reset(Z)V

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->callToEmergencyLine(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private launchEmergencyDialler()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_1
    return-void

    :cond_0
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawnTarget(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecKeyguardCircleEmergencyView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot launch activity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showEmergencyCallList()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-eq v3, v1, :cond_4

    if-eqz v3, :cond_5

    const/4 v4, 0x5

    if-eq v3, v4, :cond_6

    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104091c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return v1

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_6
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSktModel()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "ril.simtype"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "ril.simtype"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x13

    if-ne v4, v3, :cond_3

    return v1
.end method

.method private updateCurrentView()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    const-string/jumbo v0, "SecKeyguardCircleEmergencyView"

    const-string/jumbo v3, "updateCurrentView()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->setArrowVisibility(I)V

    if-eq v0, v2, :cond_5

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "SecKeyguardCircleEmergencyView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CMCC :: serviceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    if-ne v0, v6, :cond_b

    :cond_3
    const-string/jumbo v0, "SecKeyguardCircleEmergencyView"

    const-string/jumbo v1, "view to gone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->setArrowVisibility(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v3

    const-string/jumbo v4, "getLockScreenHiddenItems"

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getKnoxIntValue(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SecKeyguardCircleEmergencyView"

    const-string/jumbo v3, "KnoxCustom: Emergency Button is disabled"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    const-string/jumbo v0, "SecKeyguardCircleEmergencyView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CMCC :: serviceState1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SecKeyguardCircleEmergencyView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CMCC :: serviceState2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    if-ne v0, v6, :cond_9

    :cond_7
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    if-ne v0, v6, :cond_a

    :cond_8
    const-string/jumbo v0, "SecKeyguardCircleEmergencyView"

    const-string/jumbo v1, "view to gone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    if-eq v0, v7, :cond_7

    goto :goto_3

    :cond_a
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    if-eq v0, v7, :cond_8

    goto/16 :goto_3

    :cond_b
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    if-eq v0, v7, :cond_3

    goto/16 :goto_3
.end method

.method private updateEmergencyCallButton()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->updateCurrentView()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104039b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_phone_shortcut_tts:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_phone_shortcut_tts:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected getShortcutReleasedTextResId()I
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Lcom/android/keyguard/R$string;->kg_shortcut_empty:I

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "kids_home_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_0

    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_empty:I

    :goto_2
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_emergencycall:I

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->isMultiSimLocked()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_phonecall:I

    goto :goto_2
.end method

.method protected getShortcutTextResId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_empty:I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    if-nez v0, :cond_3

    sget v0, Lcom/android/keyguard/R$string;->kg_emergency_call_label:I

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_emergencycall_au:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_empty:I

    goto :goto_0

    :cond_3
    const v0, 0x104039b

    goto :goto_0
.end method

.method protected getToastTextResId()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_emergencycall:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_5

    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onFinishInflate()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->updateEmergencyCallButton()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    :goto_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_9

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "SecKeyguardCircleEmergencyView"

    const-string/jumbo v1, "Slot 1 : subscription Id is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "SecKeyguardCircleEmergencyView"

    const-string/jumbo v1, "Slot 2 : subscription Id is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$2;

    aget v0, v0, v2

    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;I)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    goto :goto_4

    :cond_4
    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$3;

    aget v0, v0, v2

    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;I)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_7

    :goto_6
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_8

    :goto_7
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1
.end method

.method public onUnlockExecuted()V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onUnlockExecuted()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->isSecure()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->startPreviewAnimation(Z)V

    :goto_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "kids_home_mode"

    const/4 v5, -0x2

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eq v3, v1, :cond_4

    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_1
    :goto_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->takeEmergencyCallAction()V

    :goto_4
    return-void

    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->isMultiSimLocked()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->showEmergencyCallList()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->takePhoneShortcut()V

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_9
    if-eqz v2, :cond_7

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->takeEmergencyCallList()V

    goto :goto_4
.end method

.method public onUnlockViewPressed()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onUnlockViewPressed()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviewShortcutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCircleView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->showSwipeCircleEffect(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCircleView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->showSwipeCircleEffect(Z)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->reset()V

    goto :goto_0
.end method

.method public setPasswordEntryView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    return-void
.end method

.method public setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$7;->$SwitchMap$com$android$keyguard$sec$SecKeyguardCircleView$ContentStates:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_phone_shortcut_tts:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "SecKeyguardCircleEmergencyView"

    const-string/jumbo v1, "setShortCutImageResource() mEmergencyCallButton is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$7;->$SwitchMap$com$android$keyguard$sec$SecKeyguardCircleView$ContentStates:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_phone_shortcut_tts:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_press:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104039b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal_press:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public takeEmergencyCallAction()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->VoIPIsInUse()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->launchEmergencyDialler()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->launchEmergencyAUSDialer()V

    goto :goto_0
.end method

.method public takeEmergencyCallList()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.phone.EmergencyDialer.LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecKeyguardCircleEmergencyView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find the component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public takePhoneShortcut()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez v0, :cond_2

    const-string/jumbo v0, "SecKeyguardCircleEmergencyView"

    const-string/jumbo v1, "mKeyguardSecurityCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V

    invoke-interface {v0, v1, v5, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    goto :goto_0
.end method
