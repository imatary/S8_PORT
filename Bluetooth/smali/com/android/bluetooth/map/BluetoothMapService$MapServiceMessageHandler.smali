.class final Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;
.super Landroid/os/Handler;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MapServiceMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/Looper;Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "BluetoothMapService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Handler(): got msg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", arg1 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    :cond_1
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_1

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapService;->-get4(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap11(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    goto :goto_0

    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v8, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap1(Lcom/android/bluetooth/map/BluetoothMapService;I)Z

    goto :goto_0

    :sswitch_3
    const-string/jumbo v8, "1"

    const-string/jumbo v9, "service.bt.security.policy.mode"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "BluetoothMapService"

    const-string/jumbo v9, "MAP service is disabled; IT Policy is Handsfree Only"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapService;->-get0(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap11(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    goto :goto_0

    :sswitch_4
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap5(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    goto :goto_0

    :sswitch_5
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap12(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    goto :goto_0

    :sswitch_6
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapService;->-get3(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "com.android.settings"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "android.bluetooth.device.extra.DEVICE"

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get5()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v8, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v9, 0x3

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const-string/jumbo v9, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v8, v4, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v8, 0xf0

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    new-instance v9, Landroid/os/UserHandle;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v10, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap2(Lcom/android/bluetooth/map/BluetoothMapService;)V

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->-set0(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap12(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapService;->-get2(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap12(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v8}, Lcom/android/bluetooth/map/BluetoothMapService;->disconnectMap(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_0

    :sswitch_9
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapService;->-wrap3(Lcom/android/bluetooth/map/BluetoothMapService;)V

    goto/16 :goto_0

    :sswitch_a
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "BluetoothMapService"

    const-string/jumbo v9, "Acquire Wake Lock request message"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapService;->-get10(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const-string/jumbo v9, "power"

    invoke-virtual {v8, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const-string/jumbo v9, "StartingObexMapTransaction"

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->-set3(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapService;->-get10(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_5
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapService;->-get10(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapService;->-get10(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string/jumbo v8, "BluetoothMapService"

    const-string/jumbo v9, "  Acquired Wake Lock by message"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapService;->-get8(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object v8

    const/16 v9, 0x138e

    invoke-virtual {v8, v9}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapService;->-get8(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v9}, Lcom/android/bluetooth/map/BluetoothMapService;->-get8(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object v9

    const/16 v10, 0x138e

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x2710

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_b
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v8, :cond_7

    const-string/jumbo v8, "BluetoothMapService"

    const-string/jumbo v9, "Release Wake Lock request message"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapService;->-get10(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapService;->-get10(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string/jumbo v8, "BluetoothMapService"

    const-string/jumbo v9, "  Released Wake Lock by message"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_c
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get5()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    if-eqz v8, :cond_9

    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v8, :cond_8

    const-string/jumbo v8, "BluetoothMapService"

    const-string/jumbo v9, "MNS SDP Initiate Search .."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->-get5()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    sget-object v9, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothDevice;->sdpSearch(Landroid/os/ParcelUuid;)Z

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v8, "BluetoothMapService"

    const-string/jumbo v9, "remoteDevice info not available"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_d
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v8, :cond_a

    const-string/jumbo v8, "BluetoothMapService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ContentObserver Registration MASID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " Enable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapService;->-get4(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    if-eqz v6, :cond_1

    iget-object v8, v6, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v8, :cond_1

    :try_start_0
    iget v8, p1, Landroid/os/Message;->arg2:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    iget-object v8, v6, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->registerObserver()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v8, "BluetoothMapService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ContentObserverRegistarion Failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    :try_start_1
    iget-object v8, v6, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unregisterContentObserver()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_6
        0x3 -> :sswitch_8
        0x4 -> :sswitch_9
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0x1388 -> :sswitch_7
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_0
        0x138b -> :sswitch_4
        0x138c -> :sswitch_5
        0x138d -> :sswitch_a
        0x138e -> :sswitch_b
        0x138f -> :sswitch_c
        0x1390 -> :sswitch_d
    .end sparse-switch
.end method
