.class public Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;
.super Ljava/lang/Object;
.source "ActivityManagerProxy.java"


# static fields
.field private static final PROCESS_STATE_CACHED_ACTIVITY:I = 0xe

.field private static final TAG:Ljava/lang/String; = "ActivityManagerProxy"

.field private static mInstance:Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;


# instance fields
.field private mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method public static getInstance()Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;
    .locals 1

    sget-object v0, Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;->mInstance:Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;

    invoke-direct {v0}, Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;-><init>()V

    sput-object v0, Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;->mInstance:Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;

    :cond_0
    sget-object v0, Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;->mInstance:Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;

    return-object v0
.end method


# virtual methods
.method public getPidFromPackageName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    const-string/jumbo v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public isRunningAppProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->semGetProcessState()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setProcessForeground(Landroid/content/Context;IZ)V
    .locals 3

    :try_start_0
    const-string/jumbo v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2, p2, p3}, Landroid/app/ActivityManager;->semSetProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setProcessForeground(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;->getPidFromPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1, v0, p3}, Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;->setProcessForeground(Landroid/content/Context;IZ)V

    :cond_0
    return-void
.end method
