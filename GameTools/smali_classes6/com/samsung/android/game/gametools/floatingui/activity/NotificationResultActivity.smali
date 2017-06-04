.class public Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;
.super Landroid/app/Activity;
.source "NotificationResultActivity.java"


# static fields
.field public static CLOSE_GAMEHOME:Ljava/lang/String;

.field public static ENABLE_GAMEHOME:Ljava/lang/String;

.field public static LATER_GAMEHOME:Ljava/lang/String;

.field public static START_GUIDE:Ljava/lang/String;

.field public static notificationId:Ljava/lang/String;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "CLOSE_GAMEHOME"

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->CLOSE_GAMEHOME:Ljava/lang/String;

    const-string/jumbo v0, "LATER_GAMEHOME"

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->LATER_GAMEHOME:Ljava/lang/String;

    const-string/jumbo v0, "ENABLE_GAMEHOME"

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->ENABLE_GAMEHOME:Ljava/lang/String;

    const-string/jumbo v0, "START_GUIDE"

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->START_GUIDE:Ljava/lang/String;

    const-string/jumbo v0, "notificationId"

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->notificationId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getPackageNameFromBundle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "onCreate NotificationResultActivity"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->mAction:Ljava/lang/String;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 11

    const/4 v4, 0x0

    const/16 v3, 0x3e9

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResume NotificationResultActivity  mAction ::  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gamecast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Notification clicked !!!!!!!!"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "notificationId"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setGameHomeEnableSync(Landroid/content/Context;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->mAction:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->CLOSE_GAMEHOME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->CLOSE_GAMEHOME:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    invoke-virtual {v9, v3}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setChooseNotificationClose(Landroid/content/Context;Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GL31"

    const-string/jumbo v3, "Close"

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GLFHUN"

    const-string/jumbo v3, "value"

    const-string/jumbo v4, "close"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/utility/UserDataCollector;->makeJsonObj(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/UserDataCollector;->sendBroadIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "001"

    const-string/jumbo v1, "0002"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->mAction:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->LATER_GAMEHOME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->LATER_GAMEHOME:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    invoke-virtual {v9, v3}, Landroid/app/NotificationManager;->cancel(I)V

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GL31"

    const-string/jumbo v3, "Later"

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GLFHUN"

    const-string/jumbo v3, "value"

    const-string/jumbo v4, "later"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/utility/UserDataCollector;->makeJsonObj(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/UserDataCollector;->sendBroadIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "001"

    const-string/jumbo v1, "0003"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->finish()V

    goto/16 :goto_0

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->mAction:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->ENABLE_GAMEHOME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->ENABLE_GAMEHOME:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "notificationId"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->ENABLE_GAMEHOME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    invoke-virtual {v9, v3}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setChooseNotificationClose(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setGameHomeEnableSync(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingUtil;->get(Landroid/content/Context;)Lcom/sec/game/gamecast/common/model/SettingUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/game/gamecast/common/model/SettingUtil;->launchGameHomeApplication()V

    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GL31"

    const-string/jumbo v3, "Enable"

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GLFHUN"

    const-string/jumbo v3, "value"

    const-string/jumbo v4, "enable"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/utility/UserDataCollector;->makeJsonObj(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/UserDataCollector;->sendBroadIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "001"

    const-string/jumbo v1, "0004"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->finish()V

    goto/16 :goto_0

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->mAction:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->START_GUIDE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->START_GUIDE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    invoke-virtual {v9, v3}, Landroid/app/NotificationManager;->cancel(I)V

    :try_start_3
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.game.gamehome.action.TOOLSSETTING"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "deeplink"

    const-string/jumbo v1, "FRAGMENT_GAMEHOME_ONOFF"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    const-string/jumbo v0, "001"

    const-string/jumbo v1, "0001"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->finish()V

    goto/16 :goto_0

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->finish()V

    goto/16 :goto_0
.end method
