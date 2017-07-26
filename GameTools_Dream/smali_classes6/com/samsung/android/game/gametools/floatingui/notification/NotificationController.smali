.class public Lcom/samsung/android/game/gametools/floatingui/notification/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeAndShowHeadUpNotification(Landroid/content/Context;Z)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->stat_gamelauncher:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setSmallIcon(I)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->game_launcher:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setLargeIcon(I)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_MBODY_INTRODUCING_GAME_LAUNCHER_ABB:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setContentTitle(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_SBODY_TAP_HERE_TO_START_USING_GAME_LAUNCHER:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setContentText(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_POP_MANAGE_ALL_YOUR_GAMES_IN_ONE_PLACE_AND_TRY_OUT_ADDITIONAL_GAME_FEATURES:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setBigText(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    const-string/jumbo v3, "SELECT_1ST_HUN"

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setContentAction(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    const-string/jumbo v3, "CLOSE_GAMEHOME"

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setSwipeAction(Ljava/lang/String;Z)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "CLOSE_GAMEHOME"

    aput-object v4, v3, v6

    const-string/jumbo v4, "ENABLE_GAMEHOME"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_CANCEL_ABB3:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_ENABLE_ABB:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    new-array v5, v8, [Z

    aput-boolean p1, v5, v6

    aput-boolean p1, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setButtonArrays([Ljava/lang/String;[Ljava/lang/String;[Z)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    const-string/jumbo v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x3e9

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string/jumbo v2, "004"

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method public static makeEnableLauncherNotification(Landroid/content/Context;)V
    .locals 8

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->stat_gamelauncher:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setSmallIcon(I)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->game_launcher:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setLargeIcon(I)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$string;->DREAM_GH_TPOP_GAME_LAUNCHER_TURNED_ON_ABB:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setContentTitle(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$string;->DREAM_GH_SBODY_GAME_LAUNCHER_WAS_TURNED_ON_AUTOMATICALLY_MSG:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setContentText(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$string;->DREAM_GH_SBODY_GAME_LAUNCHER_WAS_TURNED_ON_AUTOMATICALLY_MSG:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setBigText(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    const-string/jumbo v3, "SELECT_3RD_HUN"

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setContentAction(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    const-string/jumbo v3, "SWIPE_3RD_HUN"

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setSwipeAction(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "GO_TO_SETTINGS"

    aput-object v4, v3, v6

    const-string/jumbo v4, "GO_TO_LAUNCHER"

    aput-object v4, v3, v7

    new-array v4, v5, [Ljava/lang/String;

    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$string;->DREAM_GH_BUTTON_GO_TO_SETTINGS_15:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$string;->DREAM_GH_BUTTON_OK_8:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setButtonArrays([Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    const-string/jumbo v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x3e9

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string/jumbo v2, "005"

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    const-string/jumbo v2, "005"

    const-string/jumbo v3, "0055"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showTemperatureWarningHUN(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->stat_gametools_nmr:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setSmallIcon(I)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->game_tools:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setLargeIcon(I)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$string;->DREAM_GH_TMBODY_SCREEN_TOUCH_LOCK_TURNED_ON:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setContentTitle(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$string;->DREAM_GH_SBODY_YOUR_PHONE_TEMPERATURE_IS_HIGH_SO_THE_BRIGHTNESS_OF_THE_SCREEN_HAS_BEEN_REDUCED:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setContentText(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setShowWhen(Z)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    const-string/jumbo v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x3eb

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
