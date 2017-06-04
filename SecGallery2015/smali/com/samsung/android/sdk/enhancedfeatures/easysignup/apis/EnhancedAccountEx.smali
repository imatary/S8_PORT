.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;
.super Ljava/lang/Object;
.source "EnhancedAccountEx.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mServiceListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountServiceListener;

.field private static sInstance:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactSyncAgreement(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getContactSyncAgreement(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;
    .locals 2

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isCoreAppsAuthenticated(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "security exception at isCoreAppsAuthenticated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isServiceEnabledInCoreApps(Landroid/content/Context;)Z
    .locals 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v8, "com.samsung.android.enhancedfeatures.sdk.service"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "service ID: : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->TAG:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isSDKServiceEnable(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->TAG:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "security exception at isCoreAppsAuthenticated "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->TAG:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Null pointer exception occus  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->TAG:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static register(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;Landroid/content/Intent;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v5, "register"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.READ_SMS"

    aput-object v5, v0, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "android.permission.SEND_SMS"

    aput-object v6, v0, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "android.permission.RECEIVE_SMS"

    aput-object v6, v0, v5

    const-string/jumbo v5, "AuthRequestFrom"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getAppId()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->isRegistered()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "User already authenticated"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$10;

    invoke-direct {v5, p3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$10;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->supportCoreAppsJoinAuth(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "security exception at register, SMS permissions are missing "

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$11;

    invoke-direct {v5, p3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$11;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "security exception at register "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$12;

    invoke-direct {v5, p3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$12;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.coreapps.easysignup.ACTION_JOIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "auth_type"

    const-string/jumbo v6, "auth_type"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "imsi"

    const-string/jumbo v6, "imsi"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "agreeMarketing"

    const-string/jumbo v6, "agreeMarketing"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "AuthRequestFrom"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "service_id_list"

    const-string/jumbo v6, "service_id_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v5, "auto_mo_handler"

    const-string/jumbo v6, "auto_mo_handler"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v5, "is_anonymous"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->isAnonymous()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "extra_requested_auth_type"

    const-string/jumbo v6, "extra_requested_auth_type"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "auth_code"

    const-string/jumbo v6, "auth_code"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "extra_guid"

    const-string/jumbo v6, "extra_guid"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "extra_sa_duid"

    const-string/jumbo v6, "extra_sa_duid"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "extra_requested_msisdn"

    const-string/jumbo v6, "extra_requested_msisdn"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->join(Landroid/content/Intent;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public addServiceListener(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountServiceListener;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->mServiceListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountServiceListener;

    return-void
.end method

.method public getServiceListener()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountServiceListener;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->mServiceListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountServiceListener;

    return-object v0
.end method
