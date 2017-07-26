.class public Lcom/sec/game/gamecast/common/utility/GosQueryUtil;
.super Ljava/lang/Object;
.source "GosQueryUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/game/gamecast/common/utility/GosQueryUtil$GosRequestParamData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static gos:Lcom/enhance/gameservice/IGameService;

.field private static instance:Lcom/sec/game/gamecast/common/utility/GosQueryUtil;

.field private static isBound:Z

.field private static isTrying:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-class v0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->TAG:Ljava/lang/String;

    sput-object v2, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->instance:Lcom/sec/game/gamecast/common/utility/GosQueryUtil;

    sput-object v2, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->gos:Lcom/enhance/gameservice/IGameService;

    sput-boolean v1, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->isBound:Z

    sput-boolean v1, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->isTrying:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sec/game/gamecast/common/R$style;->AppTheme:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/enhance/gameservice/IGameService;)Lcom/enhance/gameservice/IGameService;
    .locals 0

    sput-object p0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->gos:Lcom/enhance/gameservice/IGameService;

    return-object p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->isTrying:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->isBound:Z

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/GosQueryUtil;
    .locals 1

    sget-object v0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->instance:Lcom/sec/game/gamecast/common/utility/GosQueryUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;

    invoke-direct {v0, p0}, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->instance:Lcom/sec/game/gamecast/common/utility/GosQueryUtil;

    :cond_0
    sget-object v0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->instance:Lcom/sec/game/gamecast/common/utility/GosQueryUtil;

    return-object v0
.end method

.method private requestWithJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->gos:Lcom/enhance/gameservice/IGameService;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->gos:Lcom/enhance/gameservice/IGameService;

    invoke-interface {v2, p1, p2}, Lcom/enhance/gameservice/IGameService;->requestWithJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestWithJson pkgName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , command :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",  jsonString :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException occurred :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mGameService NULL when requestWithJson"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public connectGOS(Ljava/lang/Runnable;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-boolean v5, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->isTrying:Z

    if-eqz v5, :cond_0

    sget-object v4, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "try connect..."

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    :try_start_0
    sget-object v5, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->gos:Lcom/enhance/gameservice/IGameService;

    if-nez v5, :cond_1

    sget-object v5, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "gos == null"

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    sput-boolean v5, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->isTrying:Z

    new-instance v2, Lcom/sec/game/gamecast/common/utility/GosQueryUtil$1;

    invoke-direct {v2, p0, p1}, Lcom/sec/game/gamecast/common/utility/GosQueryUtil$1;-><init>(Lcom/sec/game/gamecast/common/utility/GosQueryUtil;Ljava/lang/Runnable;)V

    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/enhance/gameservice/IGameService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "com.enhance.gameservice"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v2, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move v3, v4

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "gos != null"

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    sput-boolean v5, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->isBound:Z

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v3, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->isBound:Z

    sput-boolean v3, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->isTrying:Z

    goto :goto_0
.end method

.method public getBindStatus()Z
    .locals 1

    sget-boolean v0, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->isBound:Z

    return v0
.end method

.method public getGlobalDataFromGos(Ljava/lang/String;)Lcom/sec/game/gamecast/common/model/GosGlobalData;
    .locals 4

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string/jumbo v2, "get_global_data"

    new-instance v3, Lcom/sec/game/gamecast/common/utility/GosQueryUtil$GosRequestParamData;

    invoke-direct {v3, p0, p1}, Lcom/sec/game/gamecast/common/utility/GosQueryUtil$GosRequestParamData;-><init>(Lcom/sec/game/gamecast/common/utility/GosQueryUtil;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p1}, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->requestWithJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/game/gamecast/common/model/GosGlobalData;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/game/gamecast/common/model/GosGlobalData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method
