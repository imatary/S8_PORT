.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;
.super Ljava/lang/Object;
.source "ApiInterface.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isSemAvailableValue:Z

.field private static isSemAvailableValueInited:Z

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->mContext:Landroid/content/Context;

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailableValue:Z

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailableValueInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isSemAvailable()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailableValueInited:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSemAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailableValue:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailableValue:Z

    :goto_0
    return v2

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    :try_start_0
    const-string/jumbo v2, "android.os.SemSystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailableValue:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-boolean v3, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailableValueInited:Z

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Context is null: isSemAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailableValue:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailableValue:Z

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailableValue:Z

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.feature.samsung_experience_mobile"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-boolean v3, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailableValue:Z

    :goto_2
    sput-boolean v3, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailableValueInited:Z

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSemAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailableValue:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailableValue:Z

    goto :goto_0

    :cond_2
    sput-boolean v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailableValue:Z

    goto :goto_2
.end method
