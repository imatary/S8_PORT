.class Lcom/android/bluetooth/hid/HidDevService$1;
.super Landroid/os/Handler;
.source "HidDevService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidDevService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hid/HidDevService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hid/HidDevService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19

    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get0()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "handleMessage(): msg.what="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    packed-switch v15, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, [B

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/android/bluetooth/hid/HidDevService;->-wrap0(Lcom/android/bluetooth/hid/HidDevService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    :goto_1
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    if-eqz v15, :cond_3

    const/4 v13, 0x1

    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hid/HidDevService;->-get1(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v4, v0, v13}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback;->onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    new-instance v16, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/hid/HidDevService;->-get1(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;-><init>(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;)V

    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/hid/HidDevService;->-set2(Lcom/android/bluetooth/hid/HidDevService;Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    invoke-interface {v15}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v1, v15, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get0()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "IBinder.linkToDeath() ok"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_4
    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/hid/HidDevService;->-set0(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;)Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/hid/HidDevService;->-set1(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/ISemBluetoothHidDeviceCallback;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v5

    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get0()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "e="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    move-result-object v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    invoke-interface {v15}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v1, v15, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get0()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "IBinder.unlinkToDeath() ok"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get3(Lcom/android/bluetooth/hid/HidDevService;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;->cleanup()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/android/bluetooth/hid/HidDevService;->-set2(Lcom/android/bluetooth/hid/HidDevService;Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    goto/16 :goto_4

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/util/NoSuchElementException;->printStackTrace()V

    goto :goto_5

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, [B

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/android/bluetooth/hid/HidDevService;->-wrap0(Lcom/android/bluetooth/hid/HidDevService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Lcom/android/bluetooth/hid/HidDevService;->-wrap2(I)I

    move-result v12

    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    invoke-interface {v15, v4, v12}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15, v4, v12}, Lcom/android/bluetooth/hid/HidDevService;->-wrap3(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    :pswitch_2
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    int-to-byte v14, v15

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    int-to-byte v8, v15

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v15, :cond_7

    const/4 v2, 0x0

    :goto_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    invoke-interface {v15, v14, v8, v2}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback;->onGetReport(BBI)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_7

    :pswitch_3
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    int-to-byte v11, v15

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    int-to-byte v10, v15

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    invoke-interface {v15, v11, v10, v3}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback;->onSetReport(BB[B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    int-to-byte v9, v15

    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    invoke-interface {v15, v9}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback;->onSetProtocol(B)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    int-to-byte v10, v15

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    invoke-interface {v15, v10, v3}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback;->onIntrData(B[B)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->-get2(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    move-result-object v15

    invoke-interface {v15}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback;->onVirtualCableUnplug()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
