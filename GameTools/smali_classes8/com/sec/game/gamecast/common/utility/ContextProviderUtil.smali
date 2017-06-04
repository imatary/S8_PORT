.class public Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;
.super Ljava/lang/Object;
.source "ContextProviderUtil.java"


# static fields
.field private static mContextProviderUtil:Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;
    .locals 1

    sget-object v0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->mContextProviderUtil:Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    invoke-direct {v0, p0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->mContextProviderUtil:Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    :goto_0
    sget-object v0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->mContextProviderUtil:Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->mContextProviderUtil:Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    iput-object p0, v0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->mContext:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method public insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$1;-><init>(Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public insertMultipleFeatureLog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[J)V
    .locals 8

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    array-length v4, p2

    new-array v1, v4, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v1, v3

    aget-object v4, v1, v3

    const-string/jumbo v5, "app_id"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v1, v3

    const-string/jumbo v5, "feature"

    aget-object v6, p2, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v1, v3

    const-string/jumbo v5, "extra"

    aget-object v6, p3, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v1, v3

    const-string/jumbo v5, "value"

    aget-wide v6, p4, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "data"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.providers.context"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public insertMultipleStatusLog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[J)V
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    new-instance v0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$3;-><init>(Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[J)V

    invoke-static {v7, v0}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public insertStatusLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10

    const/4 v8, 0x1

    :try_start_0
    new-instance v1, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$2;-><init>(Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v8, v1}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
