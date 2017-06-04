.class Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$3;
.super Ljava/lang/Object;
.source "ContextProviderUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertMultipleStatusLog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$extras:[Ljava/lang/String;

.field final synthetic val$features:[Ljava/lang/String;

.field final synthetic val$values:[J


# direct methods
.method constructor <init>(Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[J)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$3;->this$0:Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    iput-object p2, p0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$3;->val$features:[Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$3;->val$appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$3;->val$extras:[Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$3;->val$values:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$3;->val$features:[Ljava/lang/String;

    array-length v3, v3

    new-array v1, v3, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$3;->val$features:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    aput-object v3, v1, v2

    aget-object v3, v1, v2

    const-string/jumbo v4, "app_id"

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$3;->val$appId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v3, v1, v2

    const-string/jumbo v4, "feature"

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$3;->val$features:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v3, v1, v2

    const-string/jumbo v4, "extra"

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$3;->val$extras:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v3, v1, v2

    const-string/jumbo v4, "value"

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$3;->val$values:[J

    aget-wide v6, v5, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.providers.context.log.action.REPORT_MULTI_APP_STATUS_SURVEY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "data"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.providers.context"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil$3;->this$0:Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    # getter for: Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->access$000(Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
