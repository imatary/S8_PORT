.class final Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;
.super Landroid/os/Handler;
.source "HealthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hdp/HealthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HealthServiceMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hdp/HealthService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/os/Looper;Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "HealthService Handler msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->-wrap14(Lcom/android/bluetooth/hdp/HealthService;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->-get0(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getRole()I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->-wrap10(Lcom/android/bluetooth/hdp/HealthService;I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getChannelType()I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->-wrap7(Lcom/android/bluetooth/hdp/HealthService;I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getDataType()I

    move-result v6

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getName()Ljava/lang/String;

    move-result-object v7

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v3, v6, v0, v7, v1}, Lcom/android/bluetooth/hdp/HealthService;->-wrap11(Lcom/android/bluetooth/hdp/HealthService;IILjava/lang/String;I)I

    move-result v13

    const/4 v3, -0x1

    if-ne v13, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lcom/android/bluetooth/hdp/HealthService;->-wrap13(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    invoke-static {v14}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->-wrap0(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->-get0(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-direct {v3, v6, v5}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;)V

    invoke-static {v14, v3}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->-set1(Lcom/android/bluetooth/hdp/HealthService$AppInfo;Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;)Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    invoke-static {v14}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->-get1(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)Landroid/bluetooth/IBluetoothHealthCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothHealthCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    :try_start_0
    invoke-static {v14}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->-get2(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v15, v3, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v14, v13}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->-set0(Lcom/android/bluetooth/hdp/HealthService$AppInfo;I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/android/bluetooth/hdp/HealthService;->-wrap13(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    goto/16 :goto_0

    :catch_0
    move-exception v19

    const-string/jumbo v3, "HealthService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "LinktoDeath Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->-get0(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->-get0(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->-get0(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-static {v3, v13}, Lcom/android/bluetooth/hdp/HealthService;->-wrap4(Lcom/android/bluetooth/hdp/HealthService;I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "HealthService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to unregister application: id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    const/4 v6, 0x3

    invoke-static {v3, v5, v6}, Lcom/android/bluetooth/hdp/HealthService;->-wrap13(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get3(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->-get0(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get2(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->-get0(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, v18

    invoke-static {v3, v0, v13}, Lcom/android/bluetooth/hdp/HealthService;->-wrap6(Lcom/android/bluetooth/hdp/HealthService;[BI)I

    move-result v3

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-set1(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;I)I

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get1(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get2(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get3(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get0(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get1(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v8

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/bluetooth/hdp/HealthService;->-wrap12(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get2(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get3(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get0(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get1(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static/range {v2 .. v8}, Lcom/android/bluetooth/hdp/HealthService;->-wrap12(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get1(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->-wrap2(Lcom/android/bluetooth/hdp/HealthService;I)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get2(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get3(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get0(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get1(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v8

    const/4 v5, 0x3

    const/4 v6, 0x2

    invoke-static/range {v2 .. v8}, Lcom/android/bluetooth/hdp/HealthService;->-wrap12(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get2(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get3(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get0(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get1(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v8

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-static/range {v2 .. v8}, Lcom/android/bluetooth/hdp/HealthService;->-wrap12(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->-wrap1(Lcom/android/bluetooth/hdp/HealthService;I)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->-wrap9(Lcom/android/bluetooth/hdp/HealthService;I)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move/from16 v0, v23

    invoke-static {v3, v5, v0}, Lcom/android/bluetooth/hdp/HealthService;->-wrap13(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    const/4 v3, 0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    move/from16 v0, v23

    if-ne v0, v3, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->-get0(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    if-eqz v14, :cond_0

    invoke-static {v14}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->-wrap0(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->-get0(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mChannelId:I

    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->-wrap5(Lcom/android/bluetooth/hdp/HealthService;I)Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mAppId:I

    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->-wrap1(Lcom/android/bluetooth/hdp/HealthService;I)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mState:I

    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->-wrap8(Lcom/android/bluetooth/hdp/HealthService;I)I

    move-result v9

    if-nez v9, :cond_3

    if-nez v5, :cond_3

    const-string/jumbo v3, "HealthService"

    const-string/jumbo v6, "Disconnected for non existing app"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mAddr:[B

    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->-wrap0(Lcom/android/bluetooth/hdp/HealthService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v5, :cond_4

    new-instance v2, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getChannelType()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;ILcom/android/bluetooth/hdp/HealthService$HealthChannel;)V

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mChannelId:I

    invoke-static {v2, v3}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-set1(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->-get1(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez v2, :cond_5

    const-string/jumbo v3, "HealthService"

    const-string/jumbo v6, "chan is null. Break"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mState:I

    invoke-static {v3, v6}, Lcom/android/bluetooth/hdp/HealthService;->-wrap8(Lcom/android/bluetooth/hdp/HealthService;I)I

    move-result v9

    const/4 v3, 0x2

    if-ne v9, v3, :cond_7

    :try_start_1
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-set0(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    if-nez v9, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService;->-get1(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get2(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v7

    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get3(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get4(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v10

    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get0(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get1(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v12

    invoke-static/range {v6 .. v12}, Lcom/android/bluetooth/hdp/HealthService;->-wrap12(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    invoke-static {v2, v9}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-set2(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;I)I

    goto/16 :goto_0

    :catch_1
    move-exception v20

    const-string/jumbo v3, "HealthService"

    const-string/jumbo v6, "failed to dup ParcelFileDescriptor"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-set0(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
