.class public Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BtServiceBroadcastReceiver.java"


# static fields
.field private static final IT_POLICY_MSG_EXTRA:Ljava/lang/String; = "ToastMsg"

.field public static final TAG:Ljava/lang/String; = "BtServiceBroadcastReceiver"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method private cancelNotification(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string/jumbo v17, "BtServiceBroadcastReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onReceive :: action : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    const-string/jumbo v17, "ATT"

    invoke-static {}, Lcom/android/bluetooth/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "bluetooth_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    move-result v17

    if-nez v17, :cond_0

    const-string/jumbo v17, "BtServiceBroadcastReceiver"

    const-string/jumbo v18, "Factory Reset processed unsuccessfully"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v17, "BtServiceBroadcastReceiver"

    const-string/jumbo v18, "getAction() : null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v17, "BtServiceBroadcastReceiver"

    const-string/jumbo v18, "BluetoothAdatper is null, Can\'t process factory reset about bluetooth"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v17, "BtServiceBroadcastReceiver"

    const-string/jumbo v18, "Does not support Soft Reset"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v17, "com.samsung.intent.action.SETTINGS_SOFT_NETWORK_RESET"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v18, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "bluetooth_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    move-result v17

    if-nez v17, :cond_0

    const-string/jumbo v17, "BtServiceBroadcastReceiver"

    const-string/jumbo v18, "Factory Reset processed unsuccessfully"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string/jumbo v17, "BtServiceBroadcastReceiver"

    const-string/jumbo v18, "BluetoothAdatper is null, Can\'t process factory reset about bluetooth"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string/jumbo v17, "BtServiceBroadcastReceiver"

    const-string/jumbo v18, "Does not support Soft Network Reset"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const-string/jumbo v17, "com.samsung.server.BT_IT_POLICY"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const-string/jumbo v17, "ToastMsg"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v5, Landroid/view/ContextThemeWrapper;

    const v17, 0x103012b

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-direct {v5, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v5, v9, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    move-object/from16 p1, v5

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v17, "com.samsung.bluetooth.a2dp.intent.action.DUAL_PLAY_NOTI_SELECTED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const-string/jumbo v17, "com.samsung.bluetooth.a2dp.intent.extra.DUAL_PLAY_NOTI_SELECT_TYPE"

    const/16 v18, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string/jumbo v17, "com.samsung.bluetooth.a2dp.intent.extra.DUAL_PLAY_NOTI_TYPE"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string/jumbo v17, "BtServiceBroadcastReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Bluetooth Dual Play notification action selected, type = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", noti type = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v6, 0x0

    packed-switch v14, :pswitch_data_0

    const-string/jumbo v17, "BtServiceBroadcastReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "not match, dual play select type = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    if-eqz v7, :cond_0

    if-eqz v6, :cond_c

    const v17, 0x7f0a00e7

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v7, v6}, Lcom/android/bluetooth/Utils;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v17, "dual_play"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->cancelNotification(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_9

    const v17, 0x7f0a00eb

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v17, 0x7f0a00ee

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :pswitch_1
    const-string/jumbo v17, "dual_play"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->cancelNotification(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_b

    const v17, 0x7f0a00eb

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v17, 0x7f0a00ed

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_a
    :goto_2
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v17, "com.samsung.settings.BLUETOOTH_DUAL_PLAY_SETTINGS"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_b
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v13, v0, :cond_a

    const v17, 0x7f0a00ec

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_c
    const v17, 0x7f0a00e7

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/android/bluetooth/Utils;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v17, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const-string/jumbo v17, "android.bluetooth.adapter.extra.STATE"

    const/high16 v18, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v15, v0, :cond_0

    const-string/jumbo v17, "dual_play"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->cancelNotification(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v17, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string/jumbo v17, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    invoke-virtual {v12}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    const/16 v17, 0x0

    array-length v0, v11

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    aget-object v10, v11, v17

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_10

    :cond_f
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_10
    const-string/jumbo v19, "dual_play"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/bluetooth/Utils;->launchDualPlayNotification(Landroid/content/Context;Z)V

    goto :goto_4

    :cond_11
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/Utils;->launchDualPlayOnGoingNotification(Landroid/content/Context;)V

    goto :goto_4

    :cond_12
    const-string/jumbo v19, "BtServiceBroadcastReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "found Dual Play notification, but not match notification id, id = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
