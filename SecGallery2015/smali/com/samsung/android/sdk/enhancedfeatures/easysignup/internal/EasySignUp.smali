.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/EasySignUp;
.super Ljava/lang/Object;
.source "EasySignUp.java"


# direct methods
.method private static checkAppUpdated(Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "gcm_registered_app_version"

    const/high16 v7, -0x80000000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getInt(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->getAppVersionCode()I

    move-result v0

    if-eq v3, v0, :cond_0

    const-string/jumbo v6, "App version changed."

    const-string/jumbo v7, "EasySignUp"

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "imsi"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/UpdateTransaction;

    invoke-direct {v5, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/UpdateTransaction;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/EasySignUp$1;

    invoke-direct {v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/EasySignUp$1;-><init>()V

    invoke-virtual {v5, v2, v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/UpdateTransaction;->updateGCMID(Landroid/content/Intent;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "security exception at checkAppUpdated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "EasySignUp"

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/EasySignUpLib;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/EasySignUp;->checkAppUpdated(Landroid/content/Context;)V

    return-void
.end method
