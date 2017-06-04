.class public Lcom/samsung/android/game/gametools/floatingui/notification/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeAndShowHeadUpNotification(Landroid/content/Context;)V
    .locals 23

    invoke-static/range {p0 .. p0}, Lcom/sec/game/gamecast/common/model/SettingData;->isGameHomeEnableSync(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string/jumbo v20, "Game Launcher is already enabled !!"

    invoke-static/range {v20 .. v20}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v20, Landroid/app/Notification$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v21, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->stat_game_launcher:I

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v20

    const-string/jumbo v21, "msg"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v18

    sget v20, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_MBODY_INTRODUCING_GAME_LAUNCHER_ABB:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    sget v20, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_SBODY_TAP_HERE_TO_START_USING_GAME_LAUNCHER:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget v21, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->notification_icon:I

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_1

    instance-of v0, v13, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    check-cast v13, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v13}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_1
    new-instance v20, Landroid/app/Notification$BigTextStyle;

    invoke-direct/range {v20 .. v20}, Landroid/app/Notification$BigTextStyle;-><init>()V

    sget v21, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_POP_MANAGE_ALL_YOUR_GAMES_IN_ONE_PLACE_AND_TRY_OUT_ADDITIONAL_GAME_FEATURES:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    new-instance v19, Landroid/content/Intent;

    const-class v20, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v20, 0x10000000

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v20, 0x0

    const/high16 v21, 0x10000000

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    new-instance v11, Landroid/content/Intent;

    const-class v20, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v20, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->START_GUIDE:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v20, 0x20000000

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v5, Landroid/content/Intent;

    const-class v20, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v20, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->CLOSE_GAMEHOME:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/16 v20, 0x0

    sget v21, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_CANCEL_ABB3:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v6}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v14, Landroid/content/Intent;

    const-class v20, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v20, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->LATER_GAMEHOME:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    const/16 v20, 0x0

    sget v21, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_LATER_ABB:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v15}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v8, Landroid/content/Intent;

    const-class v20, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v20, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->ENABLE_GAMEHOME:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    const/16 v20, 0x0

    sget v21, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_ENABLE_ABB:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v9}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v20, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->CLOSE_GAMEHOME:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const-string/jumbo v20, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/NotificationManager;

    const/16 v20, 0x3e9

    move-object/from16 v0, v16

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string/jumbo v20, "001"

    invoke-static/range {v20 .. v20}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public static makeAndShowHeadUpNotificationCustom(Landroid/content/Context;)V
    .locals 33

    invoke-static/range {p0 .. p0}, Lcom/sec/game/gamecast/common/model/SettingData;->isGameHomeEnableSync(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_0

    const-string/jumbo v31, "Game Launcher is already enabled !!"

    invoke-static/range {v31 .. v31}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v31, Landroid/app/Notification$Builder;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v32, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->stat_game_launcher:I

    invoke-virtual/range {v31 .. v32}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v31

    const-string/jumbo v32, "msg"

    invoke-virtual/range {v31 .. v32}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v31

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v28

    new-instance v29, Landroid/content/Intent;

    const-class v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v31, 0x10000000

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v31, 0x0

    const/high16 v32, 0x10000000

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v29

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    const/16 v31, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v12, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    new-instance v16, Landroid/content/Intent;

    const-class v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v31, 0x20000000

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v31, 0x0

    const/high16 v32, 0x10000000

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v16

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual/range {v28 .. v28}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v27

    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v31

    sget v32, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_notification_default:I

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-direct {v7, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    sget v32, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_MBODY_INTRODUCING_GAME_LAUNCHER_ABB:I

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    sget v32, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_SBODY_TAP_HERE_TO_START_USING_GAME_LAUNCHER:I

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v31, Lcom/samsung/android/game/gametools/floatingui/R$id;->notification_title_text:I

    move/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v31, Lcom/samsung/android/game/gametools/floatingui/R$id;->notification_contents_text:I

    move/from16 v0, v31

    invoke-virtual {v7, v0, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object/from16 v0, v27

    iput-object v7, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-instance v22, Landroid/content/Intent;

    const-class v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->START_GUIDE:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v31, 0x0

    const/high16 v32, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v22

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    sget v31, Lcom/samsung/android/game/gametools/floatingui/R$id;->notification_contents_button:I

    move/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v15, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v31

    sget v32, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_notification_head:I

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-direct {v15, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v27

    iput-object v15, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    new-instance v23, Landroid/content/Intent;

    const-class v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->START_GUIDE:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v31, 0x0

    const/high16 v32, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v23

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    sget v31, Lcom/samsung/android/game/gametools/floatingui/R$id;->notification_contents_button:I

    move/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v4, Landroid/content/Intent;

    const-class v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->CLOSE_GAMEHOME:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v31, 0x0

    const/high16 v32, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    sget v31, Lcom/samsung/android/game/gametools/floatingui/R$id;->notification_cancel_button:I

    move/from16 v0, v31

    invoke-virtual {v15, v0, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v18, Landroid/content/Intent;

    const-class v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->LATER_GAMEHOME:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v31, 0x0

    const/high16 v32, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v18

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    sget v31, Lcom/samsung/android/game/gametools/floatingui/R$id;->notification_later_button:I

    move/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v9, Landroid/content/Intent;

    const-class v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->ENABLE_GAMEHOME:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v31, 0x0

    const/high16 v32, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    sget v31, Lcom/samsung/android/game/gametools/floatingui/R$id;->notification_enable_button:I

    move/from16 v0, v31

    invoke-virtual {v15, v0, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0x10

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_1

    new-instance v11, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v31

    sget v32, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_notification_expanded:I

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-direct {v11, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v27

    iput-object v11, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    new-instance v21, Landroid/content/Intent;

    const-class v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->START_GUIDE:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v31, 0x0

    const/high16 v32, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v21

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    sget v31, Lcom/samsung/android/game/gametools/floatingui/R$id;->notification_contents_button:I

    move/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v13, Landroid/content/Intent;

    const-class v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->ENABLE_GAMEHOME:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v31, 0x0

    const/high16 v32, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    sget v31, Lcom/samsung/android/game/gametools/floatingui/R$id;->notification_enable_button:I

    move/from16 v0, v31

    invoke-virtual {v11, v0, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_1
    new-instance v8, Landroid/content/Intent;

    const-class v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v31, Lcom/samsung/android/game/gametools/floatingui/activity/NotificationResultActivity;->CLOSE_GAMEHOME:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v31, 0x0

    const/high16 v32, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const-string/jumbo v31, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationManager;

    const/16 v31, 0x3e9

    move-object/from16 v0, v20

    move/from16 v1, v31

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method
