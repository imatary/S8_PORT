.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SLog;
.super Ljava/lang/Object;
.source "SLog.java"


# static fields
.field private static mAppId:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mEnabled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SLog;->mEnabled:Ljava/lang/Boolean;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SLog;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->isSurveyModeEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SLog;->mEnabled:Ljava/lang/Boolean;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SLog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SLog;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    sput-object p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SLog;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->isSurveyModeEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SLog;->mEnabled:Ljava/lang/Boolean;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SLog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SLog;->mAppId:Ljava/lang/String;

    return-void
.end method

.method private static send(Landroid/content/ContentValues;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.providers.context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SLog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static single(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SLog;->mEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SLog.single("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "single2"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "app_id"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SLog;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "feature"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SLog;->send(Landroid/content/ContentValues;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "SLog"

    const-string/jumbo v2, "LOG disabled"

    const-string/jumbo v3, "single2"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
