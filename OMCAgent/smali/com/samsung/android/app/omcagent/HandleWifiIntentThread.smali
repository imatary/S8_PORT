.class public Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;
.super Ljava/lang/Object;
.source "HandleWifiIntentThread.java"


# static fields
.field public static instance:Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;

.field private static isRun:Ljava/lang/Boolean;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->isRun:Ljava/lang/Boolean;

    new-instance v0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->instance:Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->context:Landroid/content/Context;

    return-void
.end method

.method private onPostExecute()V
    .locals 5

    const/4 v4, 0x1

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "connected"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getWaitWifiType(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->removeWaitWifi(Landroid/content/Context;Z)V

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getWaitWifiType(Landroid/content/Context;)I

    move-result v2

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "waiting for wifi."

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->installSelectedContents(Landroid/content/Context;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->removeWaitWifi(Landroid/content/Context;Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getWaitWifiType(Landroid/content/Context;)I

    move-result v1

    if-ne v4, v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "registered waiting for wifi. start install waiting contents."

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/db/TaskPref;->getOMCState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_4

    new-instance v1, Lcom/samsung/android/app/omcagent/ProcessOMC;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/ProcessOMC;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.omcagent.intent.REGISTER_DEVICEINFO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/omcagent/ProcessOMC;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    const/16 v1, 0xa

    if-ne v1, v0, :cond_5

    new-instance v1, Lcom/samsung/android/app/omcagent/ProcessOMC;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/ProcessOMC;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.omcagent.intent.WIFI_CONNECTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/omcagent/ProcessOMC;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_5
    const/16 v1, 0x64

    if-eq v1, v0, :cond_6

    const-string v1, "persist.sys.setupwizard"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FINISH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->checkAndUpdateAppItemListState(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->installMandatoryContents(Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "cur_state is READY_TO_INSTALL. do not install mandatory apps automatically"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private run()V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HandleWifiIntentThread start run....................."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->isRun:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    :goto_0
    sget-object v4, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->isRun:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->context:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "HandleWifiIntentThread connected....................."

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->isRun:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->onPostExecute()V

    :cond_0
    return-void

    :cond_1
    const/16 v4, 0x3c

    if-ge v3, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :try_start_0
    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "HandleWifiIntentThread Wait....................."

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->isRun:Ljava/lang/Boolean;

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HandleWifiIntentThread EX....................."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->isRun:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public setContext(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleWifiIntentThread set context....................."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->isRun:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->context:Landroid/content/Context;

    goto :goto_0
.end method

.method public setRun(Ljava/lang/Boolean;)V
    .locals 5

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->isRun:Ljava/lang/Boolean;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HandleWifiIntentThread setRun....................."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->isRun:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->isRun:Ljava/lang/Boolean;

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->run()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    sput-object p1, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->isRun:Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
