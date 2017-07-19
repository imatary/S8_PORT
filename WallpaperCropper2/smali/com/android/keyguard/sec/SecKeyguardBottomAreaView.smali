.class public Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;
.super Landroid/widget/LinearLayout;
.source "Unknown"


# static fields
.field static final MODE_CAMERA_SHORTCUT:I = 0x1

.field static final MODE_MULTIPLE_SHORTCUT:I = 0x2

.field static final TAG:Ljava/lang/String; = "SecKeyguardBottomAreaView"

.field private static final USE_CIRCLE_EM_CALL:Z = true

.field private static final USE_DUMMY_CIRCLE_EM_CALL:Z


# instance fields
.field private final MSG_SHORTCUT_MESSAGE_RESET:I

.field private mBouncerFrame:Landroid/view/View;

.field private mCameraImageView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsHelpTextEnabled:Z

.field private mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mKidsModeEnabled:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMessageAreaMinWidth:I

.field private mMessageAreaStartMargin:I

.field private mPhoneImageView:Landroid/view/View;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

.field private mShortcutMode:I

.field private mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

.field private mUseBackUp:Z

.field private mUseCenteredMessageArea:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, -0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaStartMargin:I

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseBackUp:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseCenteredMessageArea:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKidsModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mIsHelpTextEnabled:Z

    const/16 v2, 0x8a3

    iput v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->MSG_SHORTCUT_MESSAGE_RESET:I

    new-instance v2, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/keyguard/R$styleable;->SecKeyguardBottomAreaView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    :try_start_0
    sget v3, Lcom/android/keyguard/R$styleable;->SecKeyguardBottomAreaView_useBackUp:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseBackUp:Z

    sget v3, Lcom/android/keyguard/R$styleable;->SecKeyguardBottomAreaView_useCenteredMessageArea:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseCenteredMessageArea:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const-string/jumbo v2, "SecKeyguardBottomAreaView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUseBackUp= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseBackUp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mUseCenteredMessageArea= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseCenteredMessageArea:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "set_shortcuts_mode"

    invoke-static {v2, v3, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutMode:I

    const-string/jumbo v2, "SecKeyguardBottomAreaView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shortcut value[0-off / 1-camera] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "kids_home_mode"

    invoke-static {v2, v3, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKidsModeEnabled:Z

    const-string/jumbo v0, "SecKeyguardBottomAreaView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mKidsModeEnabled= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKidsModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method private isCallStateDisabled()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDataOnlyDevice(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private isCameraDisabledByDpm()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    :cond_1
    move v3, v1

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v2

    :goto_2
    return v0

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_4
    if-nez v3, :cond_2

    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SecKeyguardBottomAreaView"

    const-string/jumbo v3, "Can\'t get userId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isLeftCallShortCutButton()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private isSecure()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return v0

    :cond_1
    sget-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVerticalCenteredMessageArea()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseCenteredMessageArea:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCameraView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCameraImageView:Landroid/view/View;

    return-object v0
.end method

.method public getPhoneView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mPhoneImageView:Landroid/view/View;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mBouncerFrame:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->sec_keyguard_camera_circle:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    sget v1, Lcom/android/keyguard/R$id;->sec_keyguard_emergency_circle:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    sget v2, Lcom/android/keyguard/R$id;->sec_gms_smart_lock_circle:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    :cond_1
    :goto_1
    if-nez v2, :cond_9

    :goto_2
    return-void

    :cond_2
    const/4 v3, 0x4

    new-array v4, v3, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mBouncerFrame:Landroid/view/View;

    aput-object v3, v4, v5

    aput-object v1, v4, v6

    if-nez v2, :cond_3

    sget v3, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    :goto_3
    aput-object v3, v4, v7

    sget v3, Lcom/android/keyguard/R$id;->sec_keyguard_unlock_view_help_text:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-virtual {v0, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setAnimatingViews([Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setMessageHelper(Lcom/android/keyguard/KeyguardMessageArea$Helper;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isVerticalCenteredMessageArea()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortcutReleaseMessage(Landroid/widget/TextView;Landroid/os/Handler;)V

    goto :goto_0

    :cond_3
    move-object v3, v2

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    :goto_4
    new-array v3, v8, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mBouncerFrame:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    aput-object v2, v3, v7

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setAnimatingViews([Landroid/view/View;)V

    :goto_5
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setMessageHelper(Lcom/android/keyguard/KeyguardMessageArea$Helper;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isVerticalCenteredMessageArea()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortcutReleaseMessage(Landroid/widget/TextView;Landroid/os/Handler;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    const/4 v3, 0x4

    new-array v4, v3, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mBouncerFrame:Landroid/view/View;

    aput-object v3, v4, v5

    aput-object v0, v4, v6

    if-nez v2, :cond_8

    sget v3, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    :goto_6
    aput-object v3, v4, v7

    sget v3, Lcom/android/keyguard/R$id;->sec_keyguard_unlock_view_help_text:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-virtual {v1, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setAnimatingViews([Landroid/view/View;)V

    goto :goto_5

    :cond_7
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_8
    move-object v3, v2

    goto :goto_6

    :cond_9
    new-array v3, v8, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mBouncerFrame:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setAnimatingViews([Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setMessageHelper(Lcom/android/keyguard/KeyguardMessageArea$Helper;)V

    goto/16 :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const v5, 0x800003

    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "unlock_text"

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v3, :cond_9

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_a

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mIsHelpTextEnabled:Z

    const-string/jumbo v0, "SecKeyguardBottomAreaView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsHelpTextEnabled= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mIsHelpTextEnabled:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isSecure()Z

    move-result v4

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isLeftCallShortCutButton()Z

    move-result v0

    if-nez v0, :cond_b

    sget v0, Lcom/android/keyguard/R$id;->stub_message_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-nez v0, :cond_10

    :goto_2
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    :cond_1
    :goto_3
    if-eqz v4, :cond_12

    :cond_2
    :goto_4
    sget v0, Lcom/android/keyguard/R$id;->stub_carrier_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-nez v0, :cond_3

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-nez v0, :cond_15

    :goto_5
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutMode:I

    if-eq v0, v3, :cond_18

    :cond_4
    if-eqz v4, :cond_1a

    :cond_5
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_6
    :goto_6
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseBackUp:Z

    if-nez v0, :cond_1d

    :cond_7
    :goto_7
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSktModel()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_8
    :goto_8
    sget v0, Lcom/android/keyguard/R$id;->camera_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCameraImageView:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->emergency_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mPhoneImageView:Landroid/view/View;

    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_show_info"

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    goto/16 :goto_0

    :cond_a
    move v0, v3

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isCallStateDisabled()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    :goto_9
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isVerticalCenteredMessageArea()Z

    move-result v0

    if-nez v0, :cond_f

    sget v0, Lcom/android/keyguard/R$id;->stub_secure_message_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    :cond_d
    :goto_a
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_e
    sget v0, Lcom/android/keyguard/R$id;->stub_emergency_circle:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_9

    :cond_f
    sget v0, Lcom/android/keyguard/R$id;->stub_secure_message_area_usa:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v1

    if-eqz v1, :cond_d

    sget v1, Lcom/android/keyguard/R$id;->textview_keyguard_release_message:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    goto :goto_a

    :cond_10
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto/16 :goto_2

    :cond_11
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/keyguard/R$id;->stub_keyguard_shortcut_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto/16 :goto_3

    :cond_12
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/keyguard/R$id;->stub_gms_smart_lock_circle:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_14

    :cond_13
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_trusted_shortcut_margin_left_without_phone_shortcut:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v2, v1

    invoke-virtual {v0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_14
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isCallStateDisabled()Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_4

    :cond_15
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutMode:I

    if-eq v0, v3, :cond_17

    :cond_16
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_5

    :cond_17
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_5

    :cond_18
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKidsModeEnabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isCameraDisabledByDpm()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->hideCameraShortCutonLegacyModel()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lcom/android/keyguard/R$id;->stub_camera_circle:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-nez v0, :cond_19

    :goto_b
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isCallStateDisabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportPhoneShortcutOnLDU()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->securityview_overlay_message_area_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_simpin_start_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaStartMargin:I

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isVerticalCenteredMessageArea()Z

    move-result v0

    if-nez v0, :cond_6

    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x800005

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaStartMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    :cond_19
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_b

    :cond_1a
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_6

    :cond_1b
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->securityview_overlay_message_area_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_simpin_start_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaStartMargin:I

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isVerticalCenteredMessageArea()Z

    move-result v0

    if-nez v0, :cond_6

    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isCallStateDisabled()Z

    move-result v2

    if-nez v2, :cond_1c

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaStartMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :goto_c
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    :cond_1c
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_c

    :cond_1d
    sget v0, Lcom/android/keyguard/R$id;->stub_keyguard_emergency_carrier_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto/16 :goto_7

    :cond_1e
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1f
    sget v0, Lcom/android/keyguard/R$id;->stub_skt_carrier_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto/16 :goto_8

    :cond_20
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto/16 :goto_8
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget v0, Lcom/android/keyguard/R$id;->sec_keyguard_camera_circle:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    if-nez v0, :cond_1

    :goto_0
    sget v0, Lcom/android/keyguard/R$id;->sec_keyguard_emergency_circle:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    if-nez v0, :cond_2

    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    goto :goto_1

    :cond_3
    sget v0, Lcom/android/keyguard/R$id;->sec_keyguard_shortcut_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/KeyguardShortcutView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    goto :goto_2
.end method
