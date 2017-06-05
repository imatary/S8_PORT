.class public Lcom/android/keyguard/sec/KeyguardFMMView;
.super Lcom/android/keyguard/KeyguardPINView;
.source "Unknown"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardFMMView"

.field public static final UNLOCK_FMM_ALERT_ACTION:Ljava/lang/String; = "com.samsung.Keyguard.UNLOCK_FMM_ALERT"


# instance fields
.field private mFMMCallButton:Landroid/widget/Button;

.field private mFMMPhoneNumber:Ljava/lang/String;

.field private mFMMTitle:Landroid/widget/TextView;

.field private mOwnerContactInfo:Landroid/widget/TextView;

.field private mOwnerMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardFMMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardFMMView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardFMMView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardFMMView;)Landroid/widget/TextView;
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private setFMMInfo()V
    .locals 3

    sget v0, Lcom/android/keyguard/R$id;->keyguard_fmm_phone_locked:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMTitle:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_fmm_message:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerMessage:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_fmm_owner_phone_num:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_fmm_emergency_btn:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMCallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_fmm_Message"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_fmm_phone"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_fmm_owner_phone:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$id;->pinEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 7

    const/16 v6, 0x8

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->setFMMInfo()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120053

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v3, "KeyguardFMMView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isVoiceCapacity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " disableCallButton = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    sget v0, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardFMMView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardFMMView$1;-><init>(Lcom/android/keyguard/sec/KeyguardFMMView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/android/keyguard/sec/KeyguardFMMView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardFMMView$2;-><init>(Lcom/android/keyguard/sec/KeyguardFMMView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method protected resetState()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->resetState()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_pin_instructions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/keyguard/sec/KeyguardFMMView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$plurals;->kg_password_wrong_pin_code:I

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, v3}, Lcom/android/keyguard/sec/KeyguardFMMView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkFMMPassword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->getWrongPasswordStringId()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/android/keyguard/sec/KeyguardFMMView;->setHintOrMessageText(IZ)V

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardFMMView;->resetPasswordText(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.SEND_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string/jumbo v0, "KeyguardFMMView"

    const-string/jumbo v1, "send Broadcast (UNLOCK_FMM_ALERT_ACTION)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->disableDevicePermanently()V

    goto :goto_0

    :cond_2
    rem-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->getWrongPasswordStringId()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/android/keyguard/sec/KeyguardFMMView;->setHintOrMessageText(IZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardFMMView;->handleAttemptLockout(J)V

    goto :goto_2
.end method
