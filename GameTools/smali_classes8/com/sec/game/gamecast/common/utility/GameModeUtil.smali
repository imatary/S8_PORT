.class public Lcom/sec/game/gamecast/common/utility/GameModeUtil;
.super Ljava/lang/Object;
.source "GameModeUtil.java"


# static fields
.field static bindStatus:Z

.field private static mGameManagerService:Lcom/samsung/android/game/SemGameManager;

.field private static mGameModeUil:Lcom/sec/game/gamecast/common/utility/GameModeUtil;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mGameManagerService:Lcom/samsung/android/game/SemGameManager;

    sput-object v0, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mGameModeUil:Lcom/sec/game/gamecast/common/utility/GameModeUtil;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->bindStatus:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "GameModeUtil"

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/GameModeUtil;
    .locals 2

    sget-object v1, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mGameModeUil:Lcom/sec/game/gamecast/common/utility/GameModeUtil;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/game/gamecast/common/utility/GameModeUtil;

    invoke-direct {v1, p0}, Lcom/sec/game/gamecast/common/utility/GameModeUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mGameModeUil:Lcom/sec/game/gamecast/common/utility/GameModeUtil;

    :try_start_0
    sget-object v1, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mGameManagerService:Lcom/samsung/android/game/SemGameManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/game/SemGameManager;

    invoke-direct {v1}, Lcom/samsung/android/game/SemGameManager;-><init>()V

    sput-object v1, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mGameManagerService:Lcom/samsung/android/game/SemGameManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mGameModeUil:Lcom/sec/game/gamecast/common/utility/GameModeUtil;

    return-object v1

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->bindStatus:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->bindStatus:Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mGameModeUil:Lcom/sec/game/gamecast/common/utility/GameModeUtil;

    iput-object p0, v1, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mContext:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method public getBatterySaveMode()I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mGameManagerService:Lcom/samsung/android/game/SemGameManager;

    invoke-virtual {v2}, Lcom/samsung/android/game/SemGameManager;->getMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string/jumbo v2, "GameModeUtil"

    const-string/jumbo v3, "getBattry Saving Mode Failed"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "GameModeUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getForegroundApp()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mGameManagerService:Lcom/samsung/android/game/SemGameManager;

    invoke-virtual {v2}, Lcom/samsung/android/game/SemGameManager;->getForegroundApp()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GameModeUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getGameList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    sget-object v6, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mGameManagerService:Lcom/samsung/android/game/SemGameManager;

    invoke-virtual {v6}, Lcom/samsung/android/game/SemGameManager;->getGameList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mContext:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "GameModeUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Not installed game in GameManager gameList : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v4

    :goto_1
    const-string/jumbo v6, "GameModeUtil"

    const-string/jumbo v7, "getGameList Failed"

    invoke-static {v6, v7}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "GameModeUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_2
    return-object v6

    :cond_0
    :try_start_2
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "GameModeUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Duplicated games in GameManager gameList : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_2
    move-object v3, v4

    :cond_3
    move-object v6, v3

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getVersion()F
    .locals 5

    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v3, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mGameManagerService:Lcom/samsung/android/game/SemGameManager;

    if-eqz v3, :cond_1

    :try_start_0
    sget-object v3, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mGameManagerService:Lcom/samsung/android/game/SemGameManager;

    invoke-virtual {v3}, Lcom/samsung/android/game/SemGameManager;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "failed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    :goto_0
    return v3

    :cond_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_1
    move v3, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "GameModeUtil"

    const-string/jumbo v4, "NoSuchMethodError getVersion"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    goto :goto_0
.end method

.method public identifyGamePackageOnForeground()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mGameManagerService:Lcom/samsung/android/game/SemGameManager;

    invoke-virtual {v2}, Lcom/samsung/android/game/SemGameManager;->isForegroundGame()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string/jumbo v2, "GameModeUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBatterySaveMode(I)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/game/gamecast/common/utility/GameModeUtil;->mGameManagerService:Lcom/samsung/android/game/SemGameManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/game/SemGameManager;->setMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GameModeUtil"

    const-string/jumbo v3, "setBattry Saving Mode Failed"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "GameModeUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
