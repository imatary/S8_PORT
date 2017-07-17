.class Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v19, :cond_0

    const-string/jumbo v19, "BluetoothMapService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "onReceive: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v19, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    const-string/jumbo v19, "android.bluetooth.adapter.extra.STATE"

    const/high16 v20, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const/16 v19, 0xd

    move/from16 v0, v19

    if-ne v15, v0, :cond_4

    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v19, :cond_1

    const-string/jumbo v19, "BluetoothMapService"

    const-string/jumbo v20, "STATE_TURNING_OFF"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-get8(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_2

    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v19, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v19, "com.android.settings"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v19, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/16 v20, 0x3

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v19, "android.bluetooth.device.extra.DEVICE"

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get5()Landroid/bluetooth/BluetoothDevice;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    const-string/jumbo v20, "android.permission.BLUETOOTH_ADMIN"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap9(Lcom/android/bluetooth/map/BluetoothMapService;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/16 v19, 0xc

    move/from16 v0, v19

    if-ne v15, v0, :cond_3

    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v19, :cond_5

    const-string/jumbo v19, "BluetoothMapService"

    const-string/jumbo v20, "STATE_ON"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap4(Lcom/android/bluetooth/map/BluetoothMapService;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v19, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v19, :cond_7

    const-string/jumbo v19, "BluetoothMapService"

    const-string/jumbo v20, "USER_CONFIRM_TIMEOUT ACTION Received."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap8(Lcom/android/bluetooth/map/BluetoothMapService;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v19, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    const-string/jumbo v19, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/16 v20, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v19, :cond_9

    const-string/jumbo v19, "BluetoothMapService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Received ACTION_CONNECTION_ACCESS_REPLY:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "isWaitingAuthorization:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/map/BluetoothMapService;->-get3(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-get3(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v12, v0, :cond_b

    :cond_a
    const-string/jumbo v19, "BluetoothMapService"

    const-string/jumbo v20, "The connection access reply is not for MAP, so return it"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/bluetooth/map/BluetoothMapService;->-set0(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-get6(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v19

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-get8(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap2(Lcom/android/bluetooth/map/BluetoothMapService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap10(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    :cond_c
    const-string/jumbo v19, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/16 v20, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/android/bluetooth/map/BluetoothMapService;->-set1(Lcom/android/bluetooth/map/BluetoothMapService;I)I

    const-string/jumbo v19, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get5()Landroid/bluetooth/BluetoothDevice;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    move-result v14

    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v19, :cond_d

    const-string/jumbo v19, "BluetoothMapService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "setMessageAccessPermission(ACCESS_ALLOWED) result="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get5()Landroid/bluetooth/BluetoothDevice;

    move-result-object v19

    sget-object v20, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    invoke-virtual/range {v19 .. v20}, Landroid/bluetooth/BluetoothDevice;->sdpSearch(Landroid/os/ParcelUuid;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/android/bluetooth/map/BluetoothMapService;->-set2(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Lcom/android/bluetooth/map/BluetoothMapService;->-set1(Lcom/android/bluetooth/map/BluetoothMapService;I)I

    const-string/jumbo v19, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get5()Landroid/bluetooth/BluetoothDevice;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    move-result v14

    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v19, :cond_f

    const-string/jumbo v19, "BluetoothMapService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "setMessageAccessPermission(ACCESS_REJECTED) result="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap6(Lcom/android/bluetooth/map/BluetoothMapService;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v19, "android.bluetooth.device.action.SDP_RECORD"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v19, :cond_11

    const-string/jumbo v19, "BluetoothMapService"

    const-string/jumbo v20, "Received ACTION_SDP_RECORD."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string/jumbo v19, "android.bluetooth.device.extra.UUID"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/os/ParcelUuid;

    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v19, :cond_12

    const-string/jumbo v19, "BluetoothMapService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Received UUID: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v19, "BluetoothMapService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "expected UUID: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    sget-object v19, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    invoke-virtual/range {v18 .. v19}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v20, v0

    const-string/jumbo v19, "android.bluetooth.device.extra.SDP_RECORD"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/bluetooth/SdpMnsRecord;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    const-string/jumbo v19, "android.bluetooth.device.extra.SDP_SEARCH_STATUS"

    const/16 v20, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v19, :cond_13

    const-string/jumbo v19, "BluetoothMapService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " -> MNS Record:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v19, "BluetoothMapService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " -> status: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "MapSvc-received MNS SDP Record status: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-get1(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object v19

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-get7(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v19

    if-eqz v19, :cond_17

    :cond_14
    :goto_1
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/SdpMnsRecord;->getSupportedFeatures()I

    move-result v10

    const/16 v19, 0x7f

    move/from16 v0, v19

    if-le v10, v0, :cond_15

    and-int/lit8 v10, v10, 0x7f

    :cond_15
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-get4(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v4

    :goto_2
    if-ge v8, v4, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-get4(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-get4(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setRemoteFeatureMask(I)V

    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v19, :cond_16

    const-string/jumbo v19, "BluetoothMapService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mMasInstances.valueAt("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ").setRemoteFeatureMask()"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-get1(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->setMnsRecord(Landroid/bluetooth/SdpMnsRecord;)V

    goto/16 :goto_1

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-get7(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/bluetooth/map/BluetoothMapService;->-set2(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-static/range {v19 .. v20}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap7(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v19, "android.btmap.intent.action.SHOW_MAPS_SETTINGS"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v19, :cond_1a

    const-string/jumbo v19, "BluetoothMapService"

    const-string/jumbo v20, "Received ACTION_SHOW_MAPS_SETTINGS."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    new-instance v9, Landroid/content/Intent;

    const-class v19, Lcom/android/bluetooth/map/BluetoothMapSettings;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v19, 0x14000000

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v19, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->getResultCode()I

    move-result v13

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-get9(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v19

    if-eqz v19, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-get4(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v19

    if-eqz v19, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-get4(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    if-eqz v11, :cond_1c

    const-string/jumbo v19, "result"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->handleSmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/4 v7, 0x1

    :cond_1c
    if-nez v7, :cond_3

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v13}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->actionMessageSentDisconnected(Landroid/content/Context;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    return-void

    :cond_1d
    const-string/jumbo v19, "android.bluetooth.device.action.ACL_DISCONNECTED"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-get3(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v19

    if-eqz v19, :cond_3

    const-string/jumbo v19, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get5()Landroid/bluetooth/BluetoothDevice;

    move-result-object v19

    if-eqz v19, :cond_1e

    if-nez v5, :cond_1f

    :cond_1e
    const-string/jumbo v19, "BluetoothMapService"

    const-string/jumbo v20, "Unexpected error!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v19, :cond_20

    const-string/jumbo v19, "BluetoothMapService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "ACL disconnected for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get5()Landroid/bluetooth/BluetoothDevice;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-get8(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap2(Lcom/android/bluetooth/map/BluetoothMapService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap8(Lcom/android/bluetooth/map/BluetoothMapService;)V

    goto/16 :goto_0
.end method
