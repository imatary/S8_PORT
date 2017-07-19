.class public Lcom/android/keyguard/sec/KeyguardReset;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final SEC_FACTORY_RESET_WITHOUT_FACTORY_UI:Ljava/lang/String; = "com.samsung.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

.field public static final TAG:Ljava/lang/String; = "KeyguardReset"

.field public static final USER_TYPE_PRIMARY:I = 0x1

.field public static final USER_TYPE_SECONDARY_USER:I = 0x3

.field public static final USER_TYPE_WORK_PROFILE:I = 0x2

.field private static sKeyguardReset:Lcom/android/keyguard/sec/KeyguardReset;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string/jumbo v0, "KeyguardReset"

    const-string/jumbo v1, "KeyguardReset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private findSDCard()Landroid/os/storage/StorageVolume;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string/jumbo v0, "KeyguardReset"

    const-string/jumbo v2, "findSDCard ()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "KeyguardReset"

    const-string/jumbo v1, "findSDCard ( null )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "storage"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v1, v2, v0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "KeyguardReset"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findSDCard ( storageVolumes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v0, v2, v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardReset;
    .locals 2

    const-string/jumbo v0, "KeyguardReset"

    const-string/jumbo v1, "getInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/KeyguardReset;->sKeyguardReset:Lcom/android/keyguard/sec/KeyguardReset;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/android/keyguard/sec/KeyguardReset;->sKeyguardReset:Lcom/android/keyguard/sec/KeyguardReset;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/KeyguardReset;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardReset;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardReset;->sKeyguardReset:Lcom/android/keyguard/sec/KeyguardReset;

    goto :goto_0
.end method

.method private removeSubUser(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardReset"

    const-string/jumbo v1, "KeyguardHostView - exception in removeSubuser"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public updateProgressDialog(I)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method public wipeOut(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v2

    const/4 v0, 0x1

    if-eq v2, v1, :cond_1

    const/16 v1, -0x2710

    if-ne v2, v1, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardReset;->wipeOut(II)V

    return-void

    :cond_1
    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public wipeOut(II)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "KeyguardReset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wipeOut() attemptsCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " usertype = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.android.email"

    const-string/jumbo v1, "com.android.email.SecurityPolicy$PolicyAdmin"

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eq p2, v3, :cond_0

    const-string/jumbo v0, "KeyguardReset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wipeOut() removeSubUser usertype : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardReset;->removeSubUser(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardReset;->findSDCard()Landroid/os/storage/StorageVolume;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_progress_erasing_all:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardReset;->updateProgressDialog(I)V

    if-nez v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isATTFeature()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "KeyguardReset"

    const-string/jumbo v1, "wipeOut ( sned ACTION_MASTER_CLEAR )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_1

    const-string/jumbo v0, "KeyguardReset"

    const-string/jumbo v2, "wipeOut ( sned ExternalStorageFormatter.FORMAT_AND_FACTORY_RESET )"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "storage_volume"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "always_reset"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "KeyguardReset"

    const-string/jumbo v1, "wipeOut ( sned SEC_FACTORY_RESET_WITHOUT_FACTORY_UI )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardReset;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardReset;->removeSubUser(I)V

    goto/16 :goto_0
.end method
