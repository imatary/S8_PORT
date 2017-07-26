.class public Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;
.super Landroid/app/IntentService;
.source "HunResultIntentService.java"


# static fields
.field public static final CLOSE_GAMEHOME:Ljava/lang/String; = "CLOSE_GAMEHOME"

.field public static final ENABLE_GAMEHOME:Ljava/lang/String; = "ENABLE_GAMEHOME"

.field public static final GO_TO_LAUNCHER:Ljava/lang/String; = "GO_TO_LAUNCHER"

.field public static final GO_TO_SETTINGS:Ljava/lang/String; = "GO_TO_SETTINGS"

.field public static final HUN_FROM_TOUCHWIZ:Ljava/lang/String; = "HUN_FROM_TOUCHWIZ"

.field public static final SELECT_1ST_HUN:Ljava/lang/String; = "SELECT_1ST_HUN"

.field public static final SELECT_3RD_HUN:Ljava/lang/String; = "SELECT_3RD_HUN"

.field public static final SWIPE_3RD_HUN:Ljava/lang/String; = "SWIPE_3RD_HUN"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAction:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "HunResultIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method private closeNotification()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method


# virtual methods
.method protected goToSettings()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.game.gamehome.action.SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "deeplink"

    const-string/jumbo v3, "FRAGMENT_GAMEHOME_ONOFF"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "action null"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gamecast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Notification clicked"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "notificationId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    invoke-virtual {v10, v11}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {v6, v3}, Lcom/sec/game/gamecast/common/model/SettingData;->setGameHomeEnableSync(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "CLOSE_GAMEHOME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CLOSE_GAMEHOME"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->closeNotification()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "HUN_FROM_TOUCHWIZ"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Notification closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_4

    invoke-static {v6, v3}, Lcom/sec/game/gamecast/common/model/SettingData;->setSelectedNotificationClose(Landroid/content/Context;Z)V

    :cond_4
    :try_start_0
    invoke-static {v6}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GL31"

    const-string/jumbo v3, "Later"

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "004"

    const-string/jumbo v1, "0042"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "ENABLE_GAMEHOME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "notificationId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ENABLE_GAMEHOME "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->closeNotification()V

    invoke-static {v6, v3}, Lcom/sec/game/gamecast/common/model/SettingData;->setGameHomeEnableSync(Landroid/content/Context;Z)V

    invoke-static {v6}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->launchGameLauncher(Landroid/content/Context;)V

    :try_start_1
    invoke-static {v6}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GL31"

    const-string/jumbo v3, "Enable"

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "004"

    const-string/jumbo v1, "0043"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "SELECT_1ST_HUN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SELECT_1ST_HUN"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->closeNotification()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->goToSettings()V

    :try_start_2
    const-string/jumbo v0, "004"

    const-string/jumbo v1, "0041"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "SELECT_3RD_HUN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SELECT_3RD_HUN"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->closeNotification()V

    invoke-static {v6}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->launchGameLauncher(Landroid/content/Context;)V

    :try_start_3
    const-string/jumbo v0, "005"

    const-string/jumbo v1, "0051"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "GO_TO_LAUNCHER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GO_TO_LAUNCHER"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->closeNotification()V

    invoke-static {v6}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->launchGameLauncher(Landroid/content/Context;)V

    :try_start_4
    const-string/jumbo v0, "005"

    const-string/jumbo v1, "0053"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "GO_TO_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GO_TO_SETTINGS"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->closeNotification()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->goToSettings()V

    :try_start_5
    const-string/jumbo v0, "005"

    const-string/jumbo v1, "0052"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "SWIPE_3RD_HUN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SWIPE_3RD_HUN"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_6
    const-string/jumbo v0, "005"

    const-string/jumbo v1, "0054"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
