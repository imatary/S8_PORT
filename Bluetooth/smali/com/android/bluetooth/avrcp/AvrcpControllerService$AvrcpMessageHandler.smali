.class final Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;
.super Landroid/os/Handler;
.source "AvrcpControllerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/AvrcpControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AvrcpMessageHandler"
.end annotation


# instance fields
.field private mBroadcastMetadata:Z

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->mBroadcastMetadata:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;-><init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30

    const-string/jumbo v26, "AvrcpControllerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, " HandleMessage: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerConstants;->dumpMessageString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v27, " Remote Connected "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_1

    const/16 v25, 0x0

    :goto_0
    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getA2dpSinkService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v25, 0x1

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayTime:J

    move-wide/from16 v26, v0

    const/16 v28, 0x2

    move/from16 v0, v28

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpUtils;->mapBtPlayStatustoPlayBackState(BJ)Landroid/media/session/PlaybackState;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap8(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/media/session/PlaybackState;)V

    :cond_2
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->mBroadcastMetadata:Z

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Landroid/media/session/PlaybackState;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap8(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/media/session/PlaybackState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap1(Lcom/android/bluetooth/avrcp/AvrcpControllerService;II)Landroid/media/MediaMetadata;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap7(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/media/MediaMetadata;)V

    :cond_3
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->mBroadcastMetadata:Z

    goto/16 :goto_1

    :sswitch_2
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v11}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap6(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    invoke-static/range {v25 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap5(Lcom/android/bluetooth/avrcp/AvrcpControllerService;[BII)Z

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_0

    const-string/jumbo v25, "AvrcpControllerService"

    const-string/jumbo v26, " inform AVRCP Commands to A2DP Sink "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v11, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->informAvrcpPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_1

    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap6(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    invoke-static/range {v25 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap4(Lcom/android/bluetooth/avrcp/AvrcpControllerService;[BII)Z

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/nio/ByteBuffer;

    move/from16 v0, v19

    new-array v7, v0, [B

    move/from16 v0, v19

    new-array v8, v0, [B

    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v25

    if-eqz v25, :cond_4

    move/from16 v0, v19

    if-ge v13, v0, :cond_4

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v25

    aput-byte v25, v7, v13

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v25

    aput-byte v25, v8, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mBTDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap6(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v7, v8}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap12(Lcom/android/bluetooth/avrcp/AvrcpControllerService;[BB[B[B)V

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/bluetooth/BluetoothDevice;

    const/16 v25, 0x2

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    move-object/from16 v25, v0

    if-nez v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/bluetooth/avrcp/RemoteDevice;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/RemoteDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v25, v0

    if-nez v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;-><init>(Lcom/android/bluetooth/avrcp/RemoteDevice;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    new-instance v15, Lcom/android/bluetooth/avrcp/PlayerInfo;

    invoke-direct {v15}, Lcom/android/bluetooth/avrcp/PlayerInfo;-><init>()V

    const/16 v25, 0x0

    move/from16 v0, v25

    iput-char v0, v15, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayerId:C

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->addPlayer(Lcom/android/bluetooth/avrcp/PlayerInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->setAddressedPlayer(Lcom/android/bluetooth/avrcp/PlayerInfo;)V

    :cond_5
    :goto_3
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v25, "android.bluetooth.avrcp-controller.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v25, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v25, "android.bluetooth.profile.extra.STATE"

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v25, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    const-string/jumbo v26, "android.permission.BLUETOOTH"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    if-nez v18, :cond_5

    const/16 v25, 0x2

    move/from16 v0, v20

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->resetRemoteData()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/bluetooth/avrcp/RemoteDevice;->mRemoteFeatures:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/bluetooth/avrcp/RemoteDevice;->isMetaDataSupported()Z

    move-result v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;

    move-object/from16 v25, v0

    if-nez v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/bluetooth/avrcp/NowPlaying;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Lcom/android/bluetooth/avrcp/NowPlaying;-><init>(Lcom/android/bluetooth/avrcp/RemoteDevice;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;

    :cond_7
    new-instance v16, Lcom/android/bluetooth/avrcp/TrackInfo;

    invoke-direct/range {v16 .. v16}, Lcom/android/bluetooth/avrcp/TrackInfo;-><init>()V

    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/bluetooth/avrcp/TrackInfo;->mItemUid:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/NowPlaying;->addTrack(Lcom/android/bluetooth/avrcp/TrackInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/NowPlaying;->setCurrTrack(Lcom/android/bluetooth/avrcp/TrackInfo;)V

    goto/16 :goto_1

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/bluetooth/avrcp/RemoteDevice;->mAbsVolNotificationState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap11(Lcom/android/bluetooth/avrcp/AvrcpControllerService;II)V

    goto/16 :goto_1

    :sswitch_8
    new-instance v12, Landroid/content/IntentFilter;

    const-string/jumbo v25, "android.media.VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/bluetooth/avrcp/RemoteDevice;->mNotificationLabel:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/bluetooth/avrcp/RemoteDevice;->mAbsVolNotificationState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get1(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Landroid/content/BroadcastReceiver;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get0()Landroid/media/AudioManager;

    move-result-object v25

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v17

    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get0()Landroid/media/AudioManager;

    move-result-object v25

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    mul-int/lit8 v25, v10, 0x7f

    div-int v22, v25, v17

    const-string/jumbo v25, "AvrcpControllerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, " Sending Interim Response = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " label "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mBTDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap6(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mAvrcpRemoteDevice:Lcom/android/bluetooth/avrcp/RemoteDevice;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mNotificationLabel:I

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v22

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap10(Lcom/android/bluetooth/avrcp/AvrcpControllerService;[BBII)V

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/bluetooth/avrcp/TrackInfo;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/NowPlaying;->updateCurrentTrack(Lcom/android/bluetooth/avrcp/TrackInfo;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->mBroadcastMetadata:Z

    move/from16 v25, v0

    if-nez v25, :cond_8

    const-string/jumbo v25, "AvrcpControllerService"

    const-string/jumbo v26, "Metadata is not broadcasted, ignoring."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/bluetooth/avrcp/NowPlaying;->getCurrentTrack()Lcom/android/bluetooth/avrcp/TrackInfo;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/bluetooth/avrcp/AvrcpUtils;->getMediaMetaData(Lcom/android/bluetooth/avrcp/TrackInfo;)Landroid/media/MediaMetadata;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap7(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/media/MediaMetadata;)V

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayTime:J

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->mBroadcastMetadata:Z

    move/from16 v25, v0

    if-nez v25, :cond_9

    const-string/jumbo v25, "AvrcpControllerService"

    const-string/jumbo v26, "Metadata is not broadcasted, ignoring."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget-byte v0, v0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayStatus:B

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v27

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayTime:J

    move-wide/from16 v28, v0

    move/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpUtils;->mapBtPlayStatustoPlayBackState(BJ)Landroid/media/session/PlaybackState;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap8(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/media/session/PlaybackState;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteNowPlayingList:Lcom/android/bluetooth/avrcp/NowPlaying;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/bluetooth/avrcp/NowPlaying;->getCurrentTrack()Lcom/android/bluetooth/avrcp/TrackInfo;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/bluetooth/avrcp/TrackInfo;->mTrackLen:J

    goto/16 :goto_1

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-byte v0, v1, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayStatus:B

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Ljava/util/ArrayList;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/bluetooth/BluetoothDevice;

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->informTGStatePlaying(Landroid/bluetooth/BluetoothDevice;Z)V

    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->mBroadcastMetadata:Z

    move/from16 v25, v0

    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget-byte v0, v0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayStatus:B

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v27

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/bluetooth/avrcp/PlayerInfo;->mPlayTime:J

    move-wide/from16 v28, v0

    move/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpUtils;->mapBtPlayStatustoPlayBackState(BJ)Landroid/media/session/PlaybackState;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap8(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/media/session/PlaybackState;)V

    goto/16 :goto_1

    :cond_c
    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_d

    if-nez v24, :cond_b

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Ljava/util/ArrayList;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/bluetooth/BluetoothDevice;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->informTGStatePlaying(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_4

    :cond_e
    const-string/jumbo v25, "AvrcpControllerService"

    const-string/jumbo v26, "Metadata is not broadcasted, ignoring."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/nio/ByteBuffer;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/PlayerInfo;->setSupportedPlayerAppSetting(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteMediaPlayers:Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/bluetooth/avrcp/RemoteMediaPlayers;->getAddressedPlayer()Lcom/android/bluetooth/avrcp/PlayerInfo;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/nio/ByteBuffer;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcp/PlayerInfo;->updatePlayerAppSetting(Ljava/nio/ByteBuffer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap0(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap9(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x65 -> :sswitch_c
        0x66 -> :sswitch_d
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_9
        0x6a -> :sswitch_a
        0x6b -> :sswitch_b
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0x44c -> :sswitch_6
        0x4b0 -> :sswitch_5
    .end sparse-switch
.end method
