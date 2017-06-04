.class public Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;
.super Landroid/app/IntentService;
.source "GameToolsIntentService.java"


# static fields
.field public static final ADDED:I = 0x2

.field public static final CLOSE_FLOATING_NOTIFICATION:I = 0x3e9

.field public static final GAMETOOLS_DEAD_PACKAGE_NAME:Ljava/lang/String; = "KILL_YOURSELF"

.field public static final GAMETOOLS_NOTIFICATION_OFF_CLICK:I = 0x3ec

.field public static final GAMETOOLS_NOTIFICATION_SHOW_BUTTON_CLICK:I = 0x3eb

.field public static final MODE_CHANGED:I = 0x3

.field public static final NONE:I = -0x3e7

.field private static final NOTIFI_ID_FLOATING_WINDOW_PERMISSION:I = 0x12aff

.field public static final PAUSED:I = 0x1

.field public static final RESUMED:I = 0x0

.field public static final SHOW_FLOATING_SETTING:I = 0x3ea

.field public static final TAG:Ljava/lang/String; = "GameToolsIntentService"

.field public static final UNKNOWN:I = -0x1

.field private static isGameOn:Z


# instance fields
.field private mBound:Z

.field private mGameToolsRefreshConnection:Landroid/content/ServiceConnection;

.field private mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->isGameOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "GameToolsIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mBound:Z

    new-instance v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;-><init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mGameToolsRefreshConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;)Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mBound:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mGameToolsRefreshConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private changeGameToolsShowStatus(Z)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sec/game/gamecast/common/model/SettingData;->setShowGameTools(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mBound:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->showToolkit()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->mGameToolsRefreshConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method private closeFloatingWindowPermissionNotification()V
    .locals 3

    const-string/jumbo v1, "GameToolsIntentService"

    const-string/jumbo v2, "closeFloatingWindowPermissionNotification"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x12aff

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private getValueResolutionForLog()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/game/gamecast/common/model/SettingData;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/game/gamecast/common/model/SettingData;->RESOLUTION_PRESET_LIST:[Ljava/lang/String;

    array-length v0, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sget-object v3, Lcom/sec/game/gamecast/common/model/SettingData;->RESOLUTION_PRESET_LIST:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/game/gamecast/common/constant/BigData;->BIGDATA_RESOLUTION_LIST:[Ljava/lang/String;

    aget-object v3, v3, v1

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sec/game/gamecast/common/constant/BigData;->BIGDATA_RESOLUTION_LIST:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    goto :goto_1
.end method

.method public static declared-synchronized isGameOn()Z
    .locals 2

    const-class v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->isGameOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static registerSuicideAlarm(Landroid/content/Context;Z)V
    .locals 8

    const/4 v4, 0x0

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/game/gametools/floatingui/receiver/IdleSuicideReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "gametools.killbymyself"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string/jumbo v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz p1, :cond_0

    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string/jumbo v3, "GameToolsIntentService"

    const-string/jumbo v4, "registerSuicideAlarm"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string/jumbo v3, "GameToolsIntentService"

    const-string/jumbo v4, "unregisterSuicideAlarm"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized setIsGameOn(Z)V
    .locals 2

    const-class v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->isGameOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public closeGametoolsNotification()V
    .locals 3

    const-string/jumbo v1, "GameToolsIntentService"

    const-string/jumbo v2, "closeGametoolsNotification"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x3086

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/16 v1, 0x3085

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public isGameToolsServiceRunning()Z
    .locals 6

    const-class v4, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-super {p0, p1}, Landroid/app/IntentService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 24
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->isDaydreamConnected()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v19, -0x1

    const-string/jumbo v2, "type"

    const/16 v3, -0x3e7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const-string/jumbo v2, "GameToolsIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TYPE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pkgName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v2, "isGame"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v15, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->isPerformanceGameModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "com.android."

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "com.sec."

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "com.samsung."

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "com.google."

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "android"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "GameToolsIntentService"

    const-string/jumbo v3, "Ignoring samsung & android & google packages"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->getPrevDefaultLauncher(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "GameToolsIntentService"

    const-string/jumbo v3, "Ignoring Prv Default Launcher"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->isDefaultLauncher(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "GameToolsIntentService"

    const-string/jumbo v3, "Ignoring Home Launcher"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v15}, Lcom/sec/game/gamecast/common/model/SettingData;->setPrevDefaultLauncher(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.mirrorlink.android.service.ACCESS_PERMISSION"

    invoke-static {v2, v3, v15}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->hasPermissionOnPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "GameToolsIntentService"

    const-string/jumbo v3, "Ignoring Mirror Link package"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v12, 0x1

    :cond_7
    :goto_1
    sparse-switch v19, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_1
    if-eqz v15, :cond_0

    const-string/jumbo v2, "GameToolsIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RESUMED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->isGameOn()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->setIsGameOn(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15, v12}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->startToolsService(ILjava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->registerSuicideAlarm(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "GameToolsIntentService"

    const-string/jumbo v3, "PackageName null"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->closeFloatingWindowPermissionNotification()V

    goto/16 :goto_0

    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->closeFloatingWindowPermissionNotification()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->showFloatingSetting(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "sem_statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/SemStatusBarManager;

    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    :cond_9
    const-string/jumbo v2, "GameToolsIntentService"

    const-string/jumbo v3, "CollapsePanels"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    if-eqz v14, :cond_a

    const/16 v2, 0x3086

    invoke-virtual {v14, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_a
    const-string/jumbo v2, "GameToolsIntentService"

    const-string/jumbo v3, "dismiss notification"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->changeGameToolsShowStatus(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "GT22"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v2, "4010"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "GT22"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v2, "4010"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->changeGameToolsShowStatus(Z)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "GameToolsIntentService"

    const-string/jumbo v3, "canDrawOverLays false"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisplayGameTools(Landroid/content/Context;)Z

    move-result v18

    const-string/jumbo v2, "GameToolsIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "canDrawOverLays toolsOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v18, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$1;-><init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v2, "GameToolsIntentService"

    const-string/jumbo v3, "canDrawOverLays showFloatingWindowPermissionNotification"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    if-eqz v15, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->setIsGameOn(Z)V

    const-string/jumbo v2, "KILL_YOURSELF"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, "GameToolsIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "KillMySelf "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->isGameToolsServiceRunning()Z

    move-result v16

    const-string/jumbo v2, "GameToolsIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isGameToolsServiceRunning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->isGameToolsServiceRunning()Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "GameToolsIntentService"

    const-string/jumbo v3, "KillMySelf request ignored"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v2, "GameToolsIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PAUSED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x6

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "GT19"

    aput-object v3, v6, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "GT21"

    aput-object v3, v6, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "GT01"

    aput-object v3, v6, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "GT02"

    aput-object v3, v6, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "GT03"

    aput-object v3, v6, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "GT47"

    aput-object v3, v6, v2

    const/4 v2, 0x6

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/game/gamecast/common/constant/BigData;->BIGDATA_NONE:Ljava/lang/String;

    aput-object v3, v7, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/game/gamecast/common/constant/BigData;->BIGDATA_NONE:Ljava/lang/String;

    aput-object v3, v7, v2

    const/4 v2, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getValueResolutionForLog()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/game/gamecast/common/constant/BigData;->BIGDATA_AUDIOSOURCE_LIST:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sec/game/gamecast/common/model/SettingData;->getAudioSource(Landroid/content/Context;)I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    aget-object v3, v3, v20

    aput-object v3, v7, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/game/gamecast/common/constant/BigData;->BIGDATA_PROFILESOURCE_LIST:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sec/game/gamecast/common/model/SettingData;->getProfileSource(Landroid/content/Context;)I

    move-result v20

    aget-object v3, v3, v20

    aput-object v3, v7, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/game/gamecast/common/constant/BigData;->BIGDATA_BITRATE_LIST:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sec/game/gamecast/common/model/SettingData;->getBitrateUI(Landroid/content/Context;)I

    move-result v20

    aget-object v3, v3, v20

    aput-object v3, v7, v2

    const/4 v2, 0x6

    new-array v0, v2, [J

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->isKeyLocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-wide/16 v2, 0x3e8

    :goto_2
    aput-wide v2, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->isNoAlertsOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-wide/16 v2, 0x3e8

    :goto_3
    aput-wide v2, v20, v21

    const/4 v2, 0x2

    const-wide/16 v22, 0x0

    aput-wide v22, v20, v2

    const/4 v2, 0x3

    const-wide/16 v22, 0x0

    aput-wide v22, v20, v2

    const/4 v2, 0x4

    const-wide/16 v22, 0x0

    aput-wide v22, v20, v2

    const/4 v2, 0x5

    const-wide/16 v22, 0x0

    aput-wide v22, v20, v2

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertMultipleStatusLog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_d
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15, v12}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->startToolsService(ILjava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v15, v12}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->requestNoAlertsOnRuntime(ZLjava/lang/String;Z)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->registerSuicideAlarm(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_e
    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_f
    const-wide/16 v2, 0x0

    goto :goto_3

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :sswitch_7
    if-eqz v15, :cond_0

    const-string/jumbo v2, "GameToolsIntentService"

    const-string/jumbo v3, "ADDED"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->isSetupWizardFinished(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "GameToolsIntentService"

    const-string/jumbo v3, "SetupWizard is not finished, skip making a notification."

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->isGameHomeEnableSync(Landroid/content/Context;)Z

    move-result v13

    sget-wide v8, Lcom/sec/game/gamecast/common/constant/Define;->AFTER_1HOUR_OOBE_TIME:J

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->isVerizonDevice()Z

    move-result v2

    if-eqz v2, :cond_11

    sget-wide v8, Lcom/sec/game/gamecast/common/constant/Define;->AFTER_3HOUR_OOBE_TIME:J

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isKidsMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string/jumbo v2, "GameToolsIntentService"

    const-string/jumbo v3, "Return by KidsMode"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v9}, Lcom/sec/game/gamecast/common/model/SettingData;->isAfterFromSetupWizardComplete(Landroid/content/Context;J)Z

    move-result v11

    const-string/jumbo v2, "GameToolsIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isHomeEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "GameToolsIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SetupWizard Time Duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->isGameHomeEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v11, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->isSelectedNotificationClose(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "GameToolsIntentService"

    const-string/jumbo v3, "isAfterSetupWizardCompleteTime and isNotSelectedNotificationClose"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isGameLauncherPreloadVersion(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/notification/NotificationController;->makeAndShowHeadUpNotification(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x3e7 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_6
        0x2 -> :sswitch_7
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_5
    .end sparse-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public showFloatingSetting(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v1, "GameToolsIntentService"

    const-string/jumbo v2, "showFloatingSetting"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showFloatingWindowPermissionNotification(Landroid/content/Context;)V
    .locals 21
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    sget v18, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_MBODY_GAME_TOOLS:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v18, Lcom/samsung/android/game/gametools/floatingui/R$string;->IDS_ST_OPT_APPS_THAT_CAN_APPEAR_ON_TOP:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v18, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_POP_THE_P1SS_SETTING_IN_P2SS_IS_DISABLED:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const/16 v20, 0x1

    aput-object v4, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v16, Landroid/content/Intent;

    const-class v18, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v18, "type"

    const/16 v19, 0x3ea

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v18, 0x3ea

    const/high16 v19, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v16

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    new-instance v6, Landroid/content/Intent;

    const-class v18, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v18, "type"

    const/16 v19, 0x3e9

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v18, 0x3e9

    const/high16 v19, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    new-instance v18, Landroid/app/Notification$Action$Builder;

    const/16 v19, 0x0

    sget v20, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_CLOSE:I

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v7}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v8

    new-instance v18, Landroid/app/Notification$Action$Builder;

    const/16 v19, 0x0

    sget v20, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TBOPT_SETTINGS:I

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v15

    new-instance v18, Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v19, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->gametools_noti:I

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v18

    const-string/jumbo v19, "msg"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_MBODY_GAME_TOOLS:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v14, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->gametools_noti:I

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_0

    instance-of v0, v11, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    check-cast v11, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v11}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_0
    invoke-virtual {v14, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_0
    new-instance v18, Landroid/app/Notification$BigTextStyle;

    invoke-direct/range {v18 .. v18}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v14}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    iget-object v0, v13, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const-string/jumbo v18, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    const v18, 0x12aff

    move/from16 v0, v18

    invoke-virtual {v12, v0, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_1
    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
.end method

.method startToolsService(ILjava/lang/String;Z)V
    .locals 4

    const-string/jumbo v1, "GameToolsIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startToolsService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.game.gametools.GAMETOOLS_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.game.gametools"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "isGame"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
