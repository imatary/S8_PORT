.class public Lcom/android/keyguard/KeyguardSecurityContainer;
.super Landroid/widget/FrameLayout;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityContainer$3;,
        Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_VZW:I = 0xa

.field private static final TAG:Ljava/lang/String; = "KeyguardSecurityView"

.field private static final USER_TYPE_PRIMARY:I = 0x1

.field private static final USER_TYPE_SECONDARY_USER:I = 0x3

.field private static final USER_TYPE_WORK_PROFILE:I = 0x2

.field public static mIsAutoWipe:Z


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mDialogTheme:I

.field private mEnableFallback:Z

.field protected mFailedAttempts:I

.field private mIsBouncing:Z

.field private mIsVerifyUnlockOnly:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

.field private mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialogTheme:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecurityContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->reportFailedUnlockAttempt()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method private checkSecurityPolicy()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v2

    if-gtz v2, :cond_3

    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAutoWipeFeature()Z

    move-result v3

    if-nez v3, :cond_6

    sput-boolean v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    :goto_1
    const-string/jumbo v0, "KeyguardSecurityView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkSecurityPolicy : AUTO_WIPE = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v6, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " , IT Policy = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_8

    :cond_0
    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v0

    const-string/jumbo v1, "KeyguardSecurityView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkSecurityPolicy( failedAttempts : #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v1, :cond_9

    :cond_1
    move v1, v2

    :goto_2
    if-gtz v1, :cond_a

    const v1, 0x7fffffff

    :goto_3
    if-lez v1, :cond_b

    :goto_4
    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    return-void

    :cond_2
    const-string/jumbo v0, "KeyguardSecurityView"

    const-string/jumbo v1, "checkSecurityPolicy : not Secure lockscreen or SIM Lockscreen!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v6, :cond_5

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v6, :cond_4

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->UniversalLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v6, :cond_4

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v6, :cond_4

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v6, :cond_4

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v6, :cond_4

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "auto_swipe_main_user"

    invoke-static {v3, v6, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eq v3, v0, :cond_7

    move v0, v1

    :cond_7
    sput-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    goto/16 :goto_1

    :cond_8
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    goto :goto_4

    :cond_9
    if-gtz v2, :cond_1

    const/16 v1, 0xa

    goto :goto_2

    :cond_a
    sub-int/2addr v1, v0

    goto :goto_3

    :cond_b
    const-string/jumbo v1, "KeyguardSecurityView"

    const-string/jumbo v2, "Too many unlock attempts; device will be wiped!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardReset;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardReset;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/KeyguardReset;->wipeOut(I)V

    goto :goto_4
.end method

.method private getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-nez v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    return-object v0
.end method

.method private getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v2

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/keyguard/R$layout;->keyguard_unlock_view:I

    return v0

    :cond_0
    sget v0, Lcom/android/keyguard/R$layout;->dcm_keyguard_unlock_view:I

    return v0

    :pswitch_2
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_universal_lock_view:I

    return v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, v3, :cond_2

    :cond_1
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_pattern_view:I

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/android/keyguard/R$layout;->keyguard_pattern_view_onehand:I

    return v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, v3, :cond_4

    :cond_3
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_pin_view:I

    return v0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/android/keyguard/R$layout;->keyguard_pin_view_onehand:I

    return v0

    :pswitch_5
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_password_view:I

    return v0

    :pswitch_6
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_signature_view:I

    return v0

    :pswitch_7
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_account_view:I

    return v0

    :pswitch_8
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_sim_pin_view:I

    return v0

    :pswitch_9
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_sim_puk_view:I

    return v0

    :pswitch_a
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_sim_perso_view:I

    return v0

    :pswitch_b
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_backup_pin_view:I

    return v0

    :pswitch_c
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_recovery_view:I

    return v0

    :pswitch_d
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_spass_unlock_view:I

    return v0

    :pswitch_e
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_spass_password_view:I

    return v0

    :pswitch_f
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_fmm_unlock_view:I

    return v0

    :pswitch_10
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_smartcardpin_view:I

    return v0

    :pswitch_11
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_carrierlockplus_unlock_view:I

    return v0

    :pswitch_12
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_carrierlock_password_view:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_d
        :pswitch_4
        :pswitch_b
        :pswitch_e
        :pswitch_5
        :pswitch_10
        :pswitch_f
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_11
        :pswitch_12
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method private getSecurityModeInSignature()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    const-string/jumbo v0, "KeyguardSecurityView"

    const-string/jumbo v1, "Signature lock mode, but failed to unlock within fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSignatureBackupSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method private getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v4

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_1

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v1

    if-eqz v0, :cond_3

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v3, "KeyguardSecurityView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "inflating id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->addView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsBouncing:Z

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityView(Landroid/view/View;Z)V

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    goto :goto_2
.end method

.method private getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v2

    :pswitch_1
    sget v0, Lcom/android/keyguard/R$id;->keyguard_unlock_view:I

    return v0

    :pswitch_2
    sget v0, Lcom/android/keyguard/R$id;->keyguard_direction_view:I

    return v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, v3, :cond_1

    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->keyguard_pattern_view:I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->keyguard_pattern_view_onehand:I

    return v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, v3, :cond_3

    :cond_2
    sget v0, Lcom/android/keyguard/R$id;->keyguard_pin_view:I

    return v0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/android/keyguard/R$id;->keyguard_pin_view_onehand:I

    return v0

    :pswitch_5
    sget v0, Lcom/android/keyguard/R$id;->keyguard_password_view:I

    return v0

    :pswitch_6
    sget v0, Lcom/android/keyguard/R$id;->keyguard_signature_view:I

    return v0

    :pswitch_7
    sget v0, Lcom/android/keyguard/R$id;->keyguard_account_view:I

    return v0

    :pswitch_8
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim_pin_view:I

    return v0

    :pswitch_9
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim_puk_view:I

    return v0

    :pswitch_a
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim_perso_view:I

    return v0

    :pswitch_b
    sget v0, Lcom/android/keyguard/R$id;->keyguard_backup_pin_view:I

    return v0

    :pswitch_c
    sget v0, Lcom/android/keyguard/R$id;->keyguard_recovery_view:I

    return v0

    :pswitch_d
    sget v0, Lcom/android/keyguard/R$id;->keyguard_spass_unlock_view:I

    return v0

    :pswitch_e
    sget v0, Lcom/android/keyguard/R$id;->keyguard_spass_password_view:I

    return v0

    :pswitch_f
    sget v0, Lcom/android/keyguard/R$id;->keyguard_fmm_unlock_view:I

    return v0

    :pswitch_10
    sget v0, Lcom/android/keyguard/R$id;->keyguard_smartcardpin_view:I

    return v0

    :pswitch_11
    sget v0, Lcom/android/keyguard/R$id;->keyguard_carrierlockplus_unlock_view:I

    return v0

    :pswitch_12
    sget v0, Lcom/android/keyguard/R$id;->keyguard_carrierlock_password_view:I

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_d
        :pswitch_4
        :pswitch_b
        :pswitch_e
        :pswitch_5
        :pswitch_10
        :pswitch_f
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_11
        :pswitch_12
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method private reportFailedUnlockAttempt()V
    .locals 15

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    const-string/jumbo v0, "KeyguardSecurityView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportFailedPatternAttempt: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v10

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v11

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v6, v0, :cond_b

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v6, v1, :cond_c

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_d

    const/4 v2, 0x0

    move v8, v2

    :goto_2
    if-eqz v8, :cond_e

    :cond_2
    const/4 v2, 0x1

    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v11, v3, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v4

    if-gtz v4, :cond_f

    const/4 v3, 0x0

    move v7, v3

    :goto_4
    if-nez v7, :cond_10

    sget-boolean v3, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v3, :cond_12

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v3

    :goto_5
    add-int/lit8 v3, v3, 0x1

    :goto_6
    iput v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    sget-boolean v5, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v5, :cond_14

    :cond_3
    move v5, v4

    :goto_7
    if-gtz v5, :cond_15

    const v4, 0x7fffffff

    :goto_8
    const-string/jumbo v12, "KeyguardSecurityView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "reportFailedUnlockAttempt( mIsAutoWipe = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , IT Policy = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " )"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "KeyguardSecurityView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "reportFailedUnlockAttempt( failedAttempts: # "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , failedAttemptsBeforeWipe: #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v13, ", remainingBeforeWipe = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v13, " mode = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    sget-boolean v5, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    const/4 v12, 0x5

    if-ge v4, v12, :cond_16

    :cond_4
    invoke-virtual {v11, v10}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v11

    const/4 v0, 0x1

    if-eq v11, v10, :cond_1b

    const/16 v1, -0x2710

    if-ne v11, v1, :cond_1c

    :cond_5
    move v1, v0

    :goto_9
    if-gtz v4, :cond_1d

    const-string/jumbo v0, "KeyguardSecurityView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Too many unlock attempts; user "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " will be wiped!"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordRecoverable()Z

    move-result v5

    if-nez v5, :cond_20

    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardReset;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardReset;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Lcom/android/keyguard/sec/KeyguardReset;->wipeOut(II)V

    :goto_a
    move v1, v6

    :goto_b
    move v5, v0

    :goto_c
    if-nez v7, :cond_37

    :cond_7
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v0, :cond_39

    :goto_d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    :cond_8
    :goto_e
    const-string/jumbo v0, "KeyguardSecurityView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mIsAutoWipe - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " showAutowipeDialog - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v0, :cond_3a

    :cond_9
    :goto_f
    const-string/jumbo v0, "KeyguardSecurityView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "KeyguardProperties.isLegacyUX()  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mIsAutoWipe - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " showTimeout - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_a
    if-nez v1, :cond_3d

    :goto_10
    return-void

    :cond_b
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->UniversalLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v6, v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v6, v1, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v2, 0x1

    move v8, v2

    goto/16 :goto_2

    :cond_e
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->UniversalLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_2

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_f
    const/4 v3, 0x1

    move v7, v3

    goto/16 :goto_4

    :cond_10
    if-nez v8, :cond_11

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v3

    goto/16 :goto_5

    :cond_11
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v3

    :goto_11
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_12
    if-nez v2, :cond_13

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v3

    goto/16 :goto_5

    :cond_13
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v3

    goto :goto_11

    :cond_14
    if-nez v2, :cond_3

    if-gtz v4, :cond_3

    const/16 v4, 0xa

    move v5, v4

    goto/16 :goto_7

    :cond_15
    sub-int v4, v5, v3

    goto/16 :goto_8

    :cond_16
    sget-boolean v12, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v12, :cond_1a

    :goto_12
    rem-int/lit8 v6, v3, 0x5

    if-eqz v6, :cond_21

    const/4 v6, 0x0

    :goto_13
    if-nez v0, :cond_22

    :cond_17
    move v0, v6

    :cond_18
    :goto_14
    if-nez v1, :cond_2e

    :cond_19
    move v1, v0

    goto/16 :goto_c

    :cond_1a
    if-eqz v2, :cond_4

    goto :goto_12

    :cond_1b
    if-eqz v11, :cond_5

    const/4 v0, 0x3

    move v1, v0

    goto/16 :goto_9

    :cond_1c
    const/4 v0, 0x2

    move v1, v0

    goto/16 :goto_9

    :cond_1d
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v0, :cond_1e

    invoke-direct {p0, v3, v4, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtWipeDialog(III)V

    move v0, v5

    move v1, v6

    goto/16 :goto_b

    :cond_1e
    rem-int/lit8 v0, v3, 0x5

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    :goto_15
    const-string/jumbo v1, "KeyguardSecurityView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "reportFailedUnlockAttempt(showTimeout= "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    move v0, v5

    goto/16 :goto_b

    :cond_1f
    const/4 v0, 0x1

    goto :goto_15

    :cond_20
    const/4 v5, 0x2

    if-eq v1, v5, :cond_6

    const-string/jumbo v1, "KeyguardSecurityView"

    const-string/jumbo v5, "Too many unlock attempts; device will be display recovery screen!"

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->recoverPassword()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->setRecoveryScreenLocked(Z)V

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_a

    :cond_21
    const/4 v6, 0x1

    goto :goto_13

    :cond_22
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mEnableFallback:Z

    if-nez v0, :cond_26

    :cond_23
    move v0, v6

    :goto_16
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v6

    if-eqz v6, :cond_18

    if-nez v3, :cond_2a

    :cond_24
    :goto_17
    const/16 v6, 0xf

    if-eq v3, v6, :cond_2b

    const/16 v6, 0x14

    if-lt v3, v6, :cond_18

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :goto_18
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_14

    :cond_25
    if-eqz v3, :cond_17

    rem-int/lit8 v0, v3, 0x5

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_18

    :cond_26
    const/16 v0, 0xf

    if-eq v3, v0, :cond_27

    const/16 v0, 0x14

    if-lt v3, v0, :cond_23

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :goto_19
    const/4 v0, 0x0

    goto :goto_16

    :cond_27
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_28
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtAccountLoginDialog()V

    goto :goto_19

    :cond_29
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v0, :cond_28

    goto :goto_19

    :cond_2a
    rem-int/lit8 v6, v3, 0x5

    if-nez v6, :cond_24

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    goto :goto_17

    :cond_2b
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_2c
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtBackupPininDialog()V

    goto :goto_18

    :cond_2d
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v0, :cond_2c

    goto :goto_18

    :cond_2e
    sget-boolean v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v1, :cond_30

    :cond_2f
    if-eqz v3, :cond_19

    rem-int/lit8 v1, v3, 0x5

    if-nez v1, :cond_19

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAlternativePasswordBegin()V

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :goto_1a
    const/4 v1, 0x0

    goto/16 :goto_c

    :cond_30
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGENIFeature()Z

    move-result v1

    if-nez v1, :cond_2f

    if-nez v7, :cond_32

    if-nez v3, :cond_33

    :cond_31
    :goto_1b
    const/16 v1, 0xf

    if-eq v3, v1, :cond_34

    const/16 v1, 0x14

    if-lt v3, v1, :cond_19

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAlternativePasswordBegin()V

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_1a

    :cond_32
    const/4 v1, 0x5

    if-ne v3, v1, :cond_19

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAlternativePasswordBegin()V

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_1a

    :cond_33
    rem-int/lit8 v1, v3, 0x5

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    goto :goto_1b

    :cond_34
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_35
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtAlternativePasswordinDialog()V

    goto :goto_1a

    :cond_36
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v0, :cond_35

    goto :goto_1a

    :cond_37
    if-eqz v8, :cond_7

    :cond_38
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    const/16 v0, 0x14

    if-lt v3, v0, :cond_8

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    goto/16 :goto_e

    :cond_39
    if-nez v2, :cond_38

    goto/16 :goto_d

    :cond_3a
    if-eqz v5, :cond_9

    if-eqz v8, :cond_3b

    const/4 v0, 0x0

    :goto_1c
    invoke-direct {p0, v3, v4, v2, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWarningAtAutoWipeDialog(IIZZ)V

    goto/16 :goto_f

    :cond_3b
    const/4 v0, 0x1

    goto :goto_1c

    :cond_3c
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v0, :cond_a

    goto/16 :goto_10

    :cond_3d
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showTimeoutDialog()V

    goto/16 :goto_10
.end method

.method private showAlmostAtAccountLoginDialog()V
    .locals 6

    const/16 v5, 0x1e

    const/16 v4, 0xf

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_login:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showAlmostAtAlternativePasswordinDialog()V
    .locals 7

    const/16 v6, 0x1e

    const/16 v5, 0xf

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->fail_attempt_unlock_popup_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_spass:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showAlmostAtBackupPininDialog()V
    .locals 7

    const/16 v6, 0x1e

    const/16 v5, 0xf

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->fail_attempt_unlock_popup_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_pattern:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showAlmostAtWipeDialog(III)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    packed-switch p3, :pswitch_data_0

    move-object v0, v1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    if-eq p1, v5, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_wipe:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_1_failed_attempt_almost_at_wipe:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_erase_user:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_erase_profile:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2

    const-string/jumbo v0, "KeyguardSecurityView"

    const-string/jumbo v1, "showBackupSecurity()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getBackupSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v1, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->ok:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_1
.end method

.method private showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v1, "KeyguardSecurityView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSecurityScreen("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v1

    if-nez v2, :cond_3

    :goto_0
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v2, :cond_4

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v3

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    move v2, v0

    :goto_2
    if-lt v2, v3, :cond_5

    :goto_3
    if-nez v1, :cond_7

    :cond_1
    :goto_4
    return-void

    :cond_2
    return-void

    :cond_3
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2, v3}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_0

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5, v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setDisplayedChild(I)V

    goto :goto_3

    :cond_7
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v3, :cond_9

    :cond_8
    :goto_5
    invoke-interface {v2, p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityView;->needsShowClockandNotifications()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onKeyguardClockandNotificationsChanged(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    if-eqz v0, :cond_1

    instance-of v0, v1, Lcom/android/keyguard/sec/KeyguardUnlockView;

    if-nez v0, :cond_a

    :goto_6
    instance-of v0, v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    if-eqz v0, :cond_1

    check-cast v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setAttributionInfoView(Landroid/view/View;)V

    goto :goto_4

    :cond_9
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    move-object v0, v1

    check-cast v0, Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/KeyguardUnlockView;->setAttributionInfoView(Landroid/view/View;)V

    goto :goto_6
.end method

.method private showTimeoutDialog()V
    .locals 9

    const/16 v8, 0x1e

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v3, v1

    :goto_1
    if-nez v3, :cond_6

    :goto_2
    return-void

    :cond_1
    sget-boolean v3, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/android/keyguard/R$string;->kg_too_many_failed_universal_lock_attempts_dialog_message:I

    :goto_3
    move v3, v0

    move v0, v1

    goto :goto_1

    :pswitch_2
    sget v0, Lcom/android/keyguard/R$string;->kg_too_many_failed_pattern_attempts_dialog_message:I

    goto :goto_3

    :pswitch_3
    sget v0, Lcom/android/keyguard/R$string;->kg_too_many_failed_spass_attempts_dialog_message:I

    goto :goto_3

    :pswitch_4
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v0, :cond_2

    sget v0, Lcom/android/keyguard/R$string;->kg_too_many_failed_pin_attempts_dialog_message:I

    goto :goto_3

    :cond_2
    sget v0, Lcom/android/keyguard/R$string;->kg_too_many_failed_pin_attempts_dialog_message_with_auto_wipe:I

    :goto_4
    move v3, v0

    move v0, v2

    goto :goto_1

    :pswitch_5
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v0, :cond_3

    sget v0, Lcom/android/keyguard/R$string;->kg_too_many_failed_pattern_attempts_dialog_message:I

    goto :goto_3

    :cond_3
    sget v0, Lcom/android/keyguard/R$string;->kg_too_many_failed_backup_pin_attempts_dialog_message_with_auto_wipe:I

    goto :goto_4

    :pswitch_6
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v0, :cond_4

    sget v0, Lcom/android/keyguard/R$string;->kg_too_many_failed_spass_attempts_dialog_message:I

    goto :goto_3

    :cond_4
    sget v0, Lcom/android/keyguard/R$string;->kg_too_many_failed_backup_password_attempts_dialog_message_with_auto_wipe:I

    goto :goto_4

    :pswitch_7
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v0, :cond_5

    sget v0, Lcom/android/keyguard/R$string;->kg_too_many_failed_password_attempts_dialog_message:I

    goto :goto_3

    :cond_5
    sget v0, Lcom/android/keyguard/R$string;->kg_too_many_failed_password_attempts_dialog_message_with_auto_wipe:I

    goto :goto_4

    :pswitch_8
    sget v0, Lcom/android/keyguard/R$string;->kg_too_many_failed_pin_attempts_dialog_message:I

    goto :goto_3

    :pswitch_9
    sget v0, Lcom/android/keyguard/R$string;->kg_too_many_failed_signature_attempts_dialog_message:I

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    rsub-int/lit8 v0, v0, 0xa

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showWarningAtAutoWipeDialog(IIZZ)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-nez p3, :cond_1

    if-eq p2, v3, :cond_3

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_5

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    if-nez p4, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_5_attempts_to_show_backup_password_with_auto_wipe:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_5_attempts_to_show_backup_pin_with_auto_wipe:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_remained_1_attempts_with_auto_wipe_subuser:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_remained_1_attempts_with_auto_wipe:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showWipeDialog(II)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    packed-switch p2, :pswitch_data_0

    move-object v0, v1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_now_wiping:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_now_erasing_user:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_now_erasing_profile:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateSecurityView(Landroid/view/View;Z)V
    .locals 3

    const/4 v1, 0x0

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsBouncing:Z

    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityView;

    if-nez v0, :cond_1

    const-string/jumbo v0, "KeyguardSecurityView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a KeyguardSecurityView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/android/keyguard/KeyguardSecurityView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    if-nez p2, :cond_2

    invoke-interface {p1, v1}, Lcom/android/keyguard/KeyguardSecurityView;->hideBouncer(I)V

    :goto_1
    sget v0, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v1}, Lcom/android/keyguard/KeyguardSecurityView;->showBouncer(I)V

    goto :goto_1
.end method


# virtual methods
.method public addAttributionInfoViewIfNecessary()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isRichLockEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardSecurityView"

    const-string/jumbo v1, "addAttributionInfoViewIfNecessary"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v1, Lcom/android/keyguard/sec/SecAttributionInfoView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/sec/SecAttributionInfoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v1, p0, v2}, Lcom/android/keyguard/sec/SecAttributionInfoView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    return-void
.end method

.method public announceCurrentSecurityMethod()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public dismiss(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    const/4 v6, -0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v3, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x7f

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x7e

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x57

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x58

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x59

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_2
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sidesync_source_connect"

    invoke-static {v3, v4, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "KMS_SERVICE_CONNECTED"

    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eq v4, v2, :cond_6

    move v4, v1

    :goto_3
    if-eqz v3, :cond_7

    :cond_3
    const-string/jumbo v0, "KeyguardSecurityView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dispatchKeyEvent : isSideSync ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " isKms = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_4
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const-string/jumbo v3, "KeyguardSecurityView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dispatchKeyEvent : getDevice is null!! or isExternal ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/InputDevice;->isExternal()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "KeyguardSecurityView"

    const-string/jumbo v3, "dispatchKeyEvent : blueTooth"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_1

    :cond_5
    move v3, v1

    goto/16 :goto_2

    :cond_6
    move v4, v2

    goto/16 :goto_3

    :cond_7
    if-nez v4, :cond_3

    goto :goto_4
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method public getCurrentSecurityModeContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSecuritySelection()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->hideBouncer(I)V

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->needsInput()Z

    move-result v0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->needsShowClockandNotifications()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    sget v0, Lcom/android/keyguard/R$id;->view_flipper:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardReset;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardReset;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardReset;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->checkSecurityPolicy()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->addAttributionInfoViewIfNecessary()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v1

    if-gt v1, v0, :cond_2

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    return-void
.end method

.method public onResume(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->reset()V

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method public setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    return-void
.end method

.method public showBouncer(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->showBouncer(I)V

    goto :goto_0
.end method

.method showNextSecurityScreenOrFinish(Z)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "KeyguardSecurityView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showNextSecurityScreenOrFinish("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_3

    if-nez p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    :cond_0
    :goto_0
    if-nez v0, :cond_7

    :goto_1
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v2, :cond_0

    :cond_2
    :goto_2
    :pswitch_0
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v2, :cond_2

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    const-string/jumbo v1, "KeyguardSecurityView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad security screen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", fail safe"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    :goto_3
    move v1, v0

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->finish()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method showPrimarySecurityScreen(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    const-string/jumbo v1, "KeyguardSecurityView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    goto :goto_0
.end method

.method public showUnlockAffordance()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, v0, Lcom/android/keyguard/sec/KeyguardUnlockView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->showUnlockAffordance()V

    goto :goto_0
.end method

.method public showUsabilityHint()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->showUsabilityHint()V

    return-void
.end method

.method public startAppearAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->startAppearAnimation()V

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method updateSecurityViews(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityView(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public verifyUnlock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsVerifyUnlockOnly:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method
