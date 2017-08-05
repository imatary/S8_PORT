.class final Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;
.super Landroid/os/Handler;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AvrcpMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 76

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleMessage, msg="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v27

    const-string/jumbo v5, "BdAddress"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v48

    new-instance v54, Landroid/os/Bundle;

    invoke-direct/range {v54 .. v54}, Landroid/os/Bundle;-><init>()V

    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    const/16 v26, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_0
    if-nez v46, :cond_2

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "##event was not sent##"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap3(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0xd2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_5

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "send MegDelayed MSG_REMOVE_PROCESS_PENDING_PLAYSTATE"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v5, 0xd3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0xd3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v5

    const/16 v7, 0xd3

    invoke-virtual {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-static {v5, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->-set1(Lcom/android/bluetooth/avrcp/Avrcp;J)J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v7, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->-set13(Lcom/android/bluetooth/avrcp/Avrcp;J)J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v5

    const-wide/16 v12, 0x5dc

    move-object/from16 v0, v50

    invoke-virtual {v5, v0, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v74

    move-wide/from16 v0, v74

    invoke-static {v7, v6, v12, v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap44(Lcom/android/bluetooth/avrcp/Avrcp;[BIJ)V

    goto/16 :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/media/MediaMetadata;

    invoke-static {v7, v6, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap41(Lcom/android/bluetooth/avrcp/Avrcp;[BLandroid/media/MediaMetadata;)V

    goto/16 :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "Queue observer expired"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/4 v7, 0x2

    const/4 v12, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v5, v0, v7, v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v46

    if-eqz v46, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/4 v7, 0x2

    const/4 v12, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v5, v0, v7, v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "Track is changed"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get33(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    move-result-object v7

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v12

    move-object/from16 v0, v46

    invoke-static {v5, v6, v0, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap36(Lcom/android/bluetooth/avrcp/Avrcp;[BLjava/util/ArrayList;J)V

    goto/16 :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Queue changed, mBtAddr : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v48

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v5

    const/16 v7, 0xce

    invoke-virtual {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "remove MSG_OBSERVE_QUEUE_NOT_CHANGED"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v5

    const/16 v7, 0xce

    invoke-virtual {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v48

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap42(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/4 v7, 0x2

    const/4 v12, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v5, v0, v7, v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v46

    if-eqz v46, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/4 v7, 0x2

    const/4 v12, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v5, v0, v7, v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap3(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "Sending pseudo track changed notification after DB update"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-wide/16 v60, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v46

    move-wide/from16 v1, v60

    invoke-static {v5, v6, v0, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap36(Lcom/android/bluetooth/avrcp/Avrcp;[BLjava/util/ArrayList;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v5

    const/16 v7, 0xca

    invoke-virtual {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v5

    const-wide/16 v12, 0x12c

    move-object/from16 v0, v52

    invoke-virtual {v5, v0, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get33(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    move-result-object v7

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v12

    move-object/from16 v0, v46

    invoke-static {v5, v6, v0, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap36(Lcom/android/bluetooth/avrcp/Avrcp;[BLjava/util/ArrayList;J)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v5, v5, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    invoke-virtual {v5}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getNowPlayingList()[J

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->checkNowPlayingList([J)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v48

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap42(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/4 v7, 0x2

    const/4 v12, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v5, v0, v7, v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v46

    if-eqz v46, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/4 v7, 0x2

    const/4 v12, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v5, v0, v7, v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap3(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "Sending pseudo track changed notification after DB update"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const-wide/16 v60, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v46

    move-wide/from16 v1, v60

    invoke-static {v5, v6, v0, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap36(Lcom/android/bluetooth/avrcp/Avrcp;[BLjava/util/ArrayList;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v5

    const/16 v7, 0xca

    invoke-virtual {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v5

    const-wide/16 v12, 0x12c

    move-object/from16 v0, v52

    invoke-virtual {v5, v0, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get33(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    move-result-object v7

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v12

    move-object/from16 v0, v46

    invoke-static {v5, v6, v0, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap36(Lcom/android/bluetooth/avrcp/Avrcp;[BLjava/util/ArrayList;J)V

    goto/16 :goto_0

    :sswitch_5
    if-nez v48, :cond_f

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "addr is null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get41()Z

    move-result v5

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get35(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/Stack;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get35(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get35(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-set0(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_10

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "changed path is "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get2()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get2()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Samsung Mobile Phone 0515"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get42(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get21(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v45

    :cond_11
    :goto_1
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual/range {v44 .. v44}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get43(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_12

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "found search item"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get42(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get42(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v53

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_14

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "no of searched items : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v53

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x4

    const/4 v12, 0x0

    move/from16 v0, v53

    invoke-static {v5, v6, v7, v12, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap13(Lcom/android/bluetooth/avrcp/Avrcp;[BBII)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get35(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap27(Lcom/android/bluetooth/avrcp/Avrcp;)V

    goto/16 :goto_0

    :cond_15
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-set14(Z)Z

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get35(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/Stack;

    move-result-object v5

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get35(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x7

    const/4 v12, 0x0

    invoke-static {v5, v6, v7, v12}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap14(Lcom/android/bluetooth/avrcp/Avrcp;[BBI)Z

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get35(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-set0(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_19

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "changed path is "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get2()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, ", Items are "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v12}, Lcom/android/bluetooth/avrcp/Avrcp;->getItems()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->getItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v12, 0x4

    invoke-static {v5, v6, v12, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap14(Lcom/android/bluetooth/avrcp/Avrcp;[BBI)Z

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    if-nez v22, :cond_1a

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "rc addr is null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v59

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MESSAGE_GET_RC_FEATURES: rc_device="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v59

    invoke-virtual {v12, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, ", features="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v46

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v46, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    const/4 v12, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v5, v0, v12, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v59

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap24(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const-string/jumbo v7, "RCSF"

    move-object/from16 v0, v30

    invoke-virtual {v5, v7, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->sendBigdata(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get17(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a00e7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get17(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v12, 0x7f0a00e9

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1c

    const-string/jumbo v5, "1"

    :goto_2
    invoke-static {v7, v12, v5}, Lcom/android/bluetooth/Utils;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-set4(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1d

    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v21

    const/16 v36, 0x0

    :goto_3
    const/4 v5, 0x6

    move/from16 v0, v36

    if-ge v0, v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get15(Lcom/android/bluetooth/avrcp/Avrcp;)[B

    move-result-object v5

    aget-byte v7, v21, v36

    aput-byte v7, v5, v36

    add-int/lit8 v36, v36, 0x1

    goto :goto_3

    :cond_1c
    const-string/jumbo v5, "2"

    goto :goto_2

    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get19(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v5, v7, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v31

    if-eqz v31, :cond_1e

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1e

    new-instance v40, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.bluetooth.a2dp.intent.action.AVRCP_CONNECTED_WITH_AVC"

    move-object/from16 v0, v40

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get17(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap22(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get9(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/AudioManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v22

    invoke-static {v7, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap2(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v7}, Landroid/media/AudioManager;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    :cond_1f
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mCurrentDevice = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp;->-get19(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_7
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_20

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "MESSAGE_GET_PLAY_STATUS"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get46(Lcom/android/bluetooth/avrcp/Avrcp;)J

    move-result-wide v12

    const-wide/16 v74, 0x0

    cmp-long v5, v12, v74

    if-lez v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get46(Lcom/android/bluetooth/avrcp/Avrcp;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap25(Lcom/android/bluetooth/avrcp/Avrcp;)J

    move-result-wide v10

    cmp-long v5, v10, v8

    if-lez v5, :cond_21

    move-wide v10, v8

    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp;->-get20(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v12

    invoke-static {v7, v12}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap16(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-result v7

    invoke-static/range {v5 .. v11}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap1(Lcom/android/bluetooth/avrcp/Avrcp;[BIJJ)Z

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    int-to-byte v0, v5

    move/from16 v55, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_22

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MESSAGE_GET_ELEM_ATTRS:numAttr="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v55

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    move/from16 v0, v55

    new-array v0, v0, [I

    move-object/from16 v23, v0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v70, v0

    const/16 v36, 0x0

    :goto_4
    move/from16 v0, v36

    move/from16 v1, v55

    if-ge v0, v1, :cond_23

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v23, v36

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    aget v7, v23, v36

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap23(Lcom/android/bluetooth/avrcp/Avrcp;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v70, v36

    add-int/lit8 v36, v36, 0x1

    goto :goto_4

    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move/from16 v0, v55

    move-object/from16 v1, v23

    move-object/from16 v2, v70

    invoke-static {v5, v6, v0, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap0(Lcom/android/bluetooth/avrcp/Avrcp;[BB[I[Ljava/lang/String;)Z

    goto/16 :goto_0

    :sswitch_9
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_24

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MESSAGE_REGISTER_NOTIFICATION:event="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, " param="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    invoke-static {v5, v6, v7, v12}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap34(Lcom/android/bluetooth/avrcp/Avrcp;[BII)V

    goto/16 :goto_0

    :sswitch_a
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_25

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "MESSAGE_PLAY_INTERVAL_TIMEOUT"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    invoke-static {v5}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/4 v7, 0x3

    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v7, v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v46

    if-eqz v46, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/4 v7, 0x3

    const/4 v12, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v5, v0, v7, v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    const-string/jumbo v5, "PLAYBACK_POS_CHANGED"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap25(Lcom/android/bluetooth/avrcp/Avrcp;)J

    move-result-wide v12

    move-object/from16 v0, v54

    invoke-virtual {v0, v5, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/4 v7, 0x3

    const/4 v12, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, v54

    invoke-virtual {v5, v0, v7, v12, v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_b
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_26

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MESSAGE_VOLUME_CHANGED: volume="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    int-to-byte v12, v12

    and-int/lit8 v12, v12, 0x7f

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, " ctype="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/16 v72, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/16 v7, 0x9

    if-eq v5, v7, :cond_27

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/16 v7, 0xa

    if-ne v5, v7, :cond_29

    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get50(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-nez v5, :cond_28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get51(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-nez v5, :cond_28

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "Unsolicited response, ignored"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_28
    const/16 v5, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get50(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v72

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set20(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set21(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set2(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    :cond_29
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    int-to-byte v5, v5

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap19(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-result v73

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set19(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    invoke-static {v5}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v62

    if-eqz v62, :cond_32

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get8(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    move-object/from16 v0, v62

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v63

    :goto_5
    if-eqz v63, :cond_2a

    move-object/from16 v0, v46

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/16 v7, 0x8

    move-object/from16 v0, v62

    invoke-virtual {v5, v0, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_2e

    if-eqz v46, :cond_2e

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_2b

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "set remote initial volume : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/16 v7, 0x8

    move-object/from16 v0, v46

    invoke-virtual {v5, v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/16 v7, 0x9

    move-object/from16 v0, v62

    invoke-virtual {v5, v0, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/16 v7, 0x9

    move-object/from16 v0, v46

    invoke-virtual {v5, v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    :cond_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v62

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap2(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get12(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    move/from16 v0, v73

    if-gt v0, v5, :cond_2d

    if-eqz v62, :cond_2d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap22(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v62

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "update initial local volume"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move/from16 v0, v73

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap32(Lcom/android/bluetooth/avrcp/Avrcp;I)V

    :cond_2d
    if-eqz v62, :cond_2e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap22(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v62

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get9(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/AudioManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v62

    invoke-static {v7, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap2(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v0, v62

    invoke-virtual {v5, v0, v7}, Landroid/media/AudioManager;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    :cond_2e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    invoke-static {v5}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap2(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_2f

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "ignore MESSAGE_VOLUME_CHANGED"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get17(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "bluetooth_avc_mode"

    const/4 v12, 0x1

    invoke-static {v5, v7, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/16 v7, 0xd

    if-eq v5, v7, :cond_30

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/16 v7, 0xf

    if-ne v5, v7, :cond_1

    :cond_30
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_31

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ignore MESSAGE_VOLUME_CHANGED and just update remote volume : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    if-eqz v46, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/16 v7, 0x9

    move-object/from16 v0, v62

    invoke-virtual {v5, v0, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/16 v7, 0x9

    move-object/from16 v0, v46

    invoke-virtual {v5, v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    goto/16 :goto_0

    :cond_32
    const/16 v63, 0x0

    goto/16 :goto_5

    :cond_33
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/16 v7, 0xd

    if-eq v5, v7, :cond_34

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/16 v7, 0xf

    if-ne v5, v7, :cond_36

    :cond_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get12(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    move/from16 v0, v73

    if-le v0, v5, :cond_36

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get9(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->isSafeMediaVolumeStateActive()Z

    move-result v5

    if-eqz v5, :cond_36

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "reset volume to "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp;->-get29(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, " from "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v73

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v5

    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get29(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    const/4 v12, -0x1

    if-eq v5, v12, :cond_35

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get29(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    :goto_6
    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v5, v13}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set5(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/16 v7, 0xd

    if-ne v5, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move/from16 v0, v73

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap32(Lcom/android/bluetooth/avrcp/Avrcp;I)V

    goto/16 :goto_0

    :cond_35
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get12(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    goto :goto_6

    :cond_36
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get29(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    move/from16 v0, v73

    if-eq v5, v0, :cond_3f

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/16 v7, 0x9

    if-eq v5, v7, :cond_37

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/16 v7, 0xd

    if-ne v5, v7, :cond_3e

    :cond_37
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move/from16 v0, v73

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-set10(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get27(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_40

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/16 v7, 0x9

    if-ne v5, v7, :cond_40

    const/16 v66, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get27(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    move/from16 v0, v73

    if-eq v5, v0, :cond_3a

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_38

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Remote returned volume does not match desired volume "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp;->-get27(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, " vs "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v73

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get29(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set7(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get28(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    if-eq v5, v4, :cond_3a

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_39

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "update local volume"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    const/16 v66, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get29(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap32(Lcom/android/bluetooth/avrcp/Avrcp;I)V

    :cond_3a
    if-nez v66, :cond_3b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get23(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "update local volume related to ear shock"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get29(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap32(Lcom/android/bluetooth/avrcp/Avrcp;I)V

    :cond_3b
    :goto_7
    if-eqz v46, :cond_3c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/16 v7, 0x9

    move-object/from16 v0, v62

    invoke-virtual {v5, v0, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_3c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/16 v7, 0x9

    move-object/from16 v0, v46

    invoke-virtual {v5, v0, v7, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    :cond_3c
    int-to-long v12, v4

    const-wide/16 v74, 0x64

    mul-long v12, v12, v74

    const-wide/16 v74, 0x7f

    div-long v56, v12, v74

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "percent volume changed: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v56

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, "%, mLocalVolume: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp;->-get29(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, ", remoteVolume: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v13}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v13

    const/16 v74, 0x9

    move-object/from16 v0, v62

    move/from16 v1, v74

    invoke-virtual {v13, v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap19(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set5(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    goto/16 :goto_0

    :cond_3e
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/16 v7, 0xf

    if-eq v5, v7, :cond_37

    :cond_3f
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/16 v7, 0xa

    if-ne v5, v7, :cond_42

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "setAbsoluteVolume call rejected"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_40
    if-eqz v62, :cond_41

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap22(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v62

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get29(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap32(Lcom/android/bluetooth/avrcp/Avrcp;I)V

    goto/16 :goto_7

    :cond_41
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set19(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    goto/16 :goto_7

    :cond_42
    if-eqz v72, :cond_3d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get28(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    if-lez v5, :cond_3d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get28(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    const/16 v7, 0x7f

    if-ge v5, v7, :cond_3d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get29(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    move/from16 v0, v73

    if-ne v5, v0, :cond_3d

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/16 v7, 0x9

    if-ne v5, v7, :cond_3d

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_43

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "Remote device didn\'t tune volume, let\'s try one more step."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get28(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get26(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v7

    add-int/2addr v5, v7

    const/4 v7, 0x0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v7, 0x7f

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v65

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    if-eqz v26, :cond_3d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v26

    move/from16 v1, v65

    invoke-static {v5, v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap15(Lcom/android/bluetooth/avrcp/Avrcp;[BI)Z

    move-result v5

    if-eqz v5, :cond_3d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move/from16 v0, v65

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-set9(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    const/16 v5, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v12, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set20(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    goto/16 :goto_8

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap22(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/lang/String;

    move-result-object v48

    if-nez v48, :cond_44

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "No available connected device."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_44
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v48

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap2(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_45

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "ignore MESSAGE_ADJUST_VOLUME"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_45
    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MESSAGE_ADJUST_VOLUME: direction="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get50(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-nez v5, :cond_46

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get51(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-eqz v5, :cond_47

    :cond_46
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "There is already a volume command in progress."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_47
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/16 v7, 0x8

    move-object/from16 v0, v48

    invoke-virtual {v5, v0, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_48

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "remote "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v48

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, " never tell us initial volume, black list it."

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v48

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap26(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_48
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/16 v7, 0x9

    move-object/from16 v0, v48

    invoke-virtual {v5, v0, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_50

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_49

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_50

    :cond_49
    const/16 v47, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v7

    const/16 v12, 0x9

    move-object/from16 v0, v48

    invoke-virtual {v7, v0, v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap19(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-result v64

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get25(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-eqz v5, :cond_4c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get9(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/AudioManager;

    move-result-object v5

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v47

    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get12(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    move/from16 v0, v47

    if-le v0, v5, :cond_4a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get9(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->isSafeMediaVolumeStateActive()Z

    move-result v5

    if-nez v5, :cond_4b

    :cond_4a
    move/from16 v0, v64

    move/from16 v1, v47

    if-ne v0, v1, :cond_4d

    :cond_4b
    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "local volume: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v47

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, ", remote volume: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v64

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, ", SafeVolumeState: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp;->-get9(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/AudioManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/AudioManager;->isSafeMediaVolumeStateActive()Z

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get9(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/AudioManager;

    move-result-object v5

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v47

    goto :goto_9

    :cond_4d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    move/from16 v0, v47

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap20(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-result v5

    const/16 v7, 0x7f

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v67

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_4e

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "set volume from local volume "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v47

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, "-"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v67

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    invoke-static/range {v48 .. v48}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v26

    if-eqz v26, :cond_4f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v26

    move/from16 v1, v67

    invoke-static {v5, v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap15(Lcom/android/bluetooth/avrcp/Avrcp;[BI)Z

    move-result v5

    if-eqz v5, :cond_4f

    const/16 v5, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v12, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set20(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set6(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move/from16 v0, v67

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-set9(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move/from16 v0, v47

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-set7(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    goto/16 :goto_0

    :cond_4f
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "setVolumeNative failed"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_50
    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "Unknown direction in MESSAGE_ADJUST_VOLUME"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap22(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/lang/String;

    move-result-object v48

    if-nez v48, :cond_51

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "No available connected device."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_51
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v48

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap2(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_52

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "ignore MESSAGE_SET_ABSOLUTE_VOLUME"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_52
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_53

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "MESSAGE_SET_ABSOLUTE_VOLUME"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get51(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-nez v5, :cond_54

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get50(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-eqz v5, :cond_55

    :cond_54
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "There is already a volume command in progress."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_55
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/16 v7, 0x8

    move-object/from16 v0, v48

    invoke-virtual {v5, v0, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_57

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_56

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "remote "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v48

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, " never tell us initial volume, black list it."

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v48

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap26(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_57
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap20(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-result v25

    const/4 v5, 0x0

    move/from16 v0, v25

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v7, 0x7f

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v25

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_58

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Setting volume to "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, "-"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    invoke-static/range {v48 .. v48}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v26

    if-eqz v26, :cond_59

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v5, v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap15(Lcom/android/bluetooth/avrcp/Avrcp;[BI)Z

    move-result v5

    if-eqz v5, :cond_59

    const/16 v5, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v12, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set21(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move/from16 v0, v25

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-set9(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set7(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    goto/16 :goto_0

    :cond_59
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "setVolumeNative failed"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_e
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_5a

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "MESSAGE_ABS_VOL_TIMEOUT: Volume change cmd timed out."

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set20(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set21(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set5(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap22(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/lang/String;

    move-result-object v48

    if-nez v48, :cond_5b

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "No available connected device."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get7(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    const/4 v7, 0x3

    if-lt v5, v7, :cond_5c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set2(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, v48

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap26(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get7(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set2(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    invoke-static/range {v48 .. v48}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v26

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get28(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v7

    move-object/from16 v0, v26

    invoke-static {v5, v0, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap15(Lcom/android/bluetooth/avrcp/Avrcp;[BI)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v12, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set21(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    goto/16 :goto_0

    :sswitch_f
    const/16 v69, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get30(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/session/MediaController;

    move-result-object v5

    if-nez v5, :cond_5d

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "media controller not created"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5d
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const/16 v7, 0x12d

    if-eq v5, v7, :cond_5e

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const/16 v7, 0x12e

    if-ne v5, v7, :cond_68

    :cond_5e
    const/16 v5, 0x12d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    const/16 v68, 0x7d0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get49(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    move-result-object v5

    if-eqz v5, :cond_60

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get49(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;->ff:Z

    if-eqz v5, :cond_60

    const/16 v69, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_64

    const/16 v43, 0x0

    :goto_a
    new-instance v42, Landroid/view/KeyEvent;

    const/16 v5, 0x5a

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-direct {v0, v1, v5}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_65

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_5f

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "KEY_STATE_PRESS"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set17(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get30(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/session/MediaController;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    :cond_60
    :goto_c
    if-eqz v69, :cond_1

    const/16 v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_61

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get45(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    move/from16 v0, v68

    if-eq v0, v5, :cond_61

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "missing release button event:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp;->-get45(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    const/16 v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_62

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get45(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    move/from16 v0, v68

    if-eq v0, v5, :cond_63

    :cond_62
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-static {v5, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->-set16(Lcom/android/bluetooth/avrcp/Avrcp;J)J

    :cond_63
    const/16 v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_6e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move/from16 v0, v68

    invoke-static {v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-set15(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get45(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v7

    int-to-long v12, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap21(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v74, v0

    mul-long v12, v12, v74

    invoke-static {v5, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap29(Lcom/android/bluetooth/avrcp/Avrcp;J)V

    const/16 v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v58

    const/4 v5, 0x1

    move-object/from16 v0, v58

    iput v5, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v12, 0x190

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_64
    const/16 v43, 0x1

    goto/16 :goto_a

    :cond_65
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_67

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_66

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "KEY_STATE_RELEASE"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set17(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set18(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    goto/16 :goto_b

    :cond_67
    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "key state error"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_68
    const/16 v5, 0x12f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    const/16 v68, -0x7d0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get49(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    move-result-object v5

    if-eqz v5, :cond_60

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get49(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;->rew:Z

    if-eqz v5, :cond_60

    const/16 v69, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_6a

    const/16 v43, 0x0

    :goto_d
    new-instance v42, Landroid/view/KeyEvent;

    const/16 v5, 0x59

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-direct {v0, v1, v5}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_6b

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_69

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "KEY_STATE_PRESS"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set18(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get30(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/session/MediaController;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_c

    :cond_6a
    const/16 v43, 0x1

    goto :goto_d

    :cond_6b
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_6d

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_6c

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "KEY_STATE_RELEASE"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set18(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set17(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    goto :goto_e

    :cond_6d
    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "key state error"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_6e
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get37(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    const/16 v7, 0xff

    if-eq v5, v7, :cond_6f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get37(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap25(Lcom/android/bluetooth/avrcp/Avrcp;)J

    move-result-wide v12

    invoke-static {v5, v6, v7, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap44(Lcom/android/bluetooth/avrcp/Avrcp;[BIJ)V

    goto/16 :goto_0

    :cond_6f
    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "Key release state error : changed PLAYSTATE_PLAYING"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap25(Lcom/android/bluetooth/avrcp/Avrcp;)J

    move-result-wide v12

    const/4 v7, 0x3

    invoke-static {v5, v6, v7, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap44(Lcom/android/bluetooth/avrcp/Avrcp;[BIJ)V

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get30(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/session/MediaController;

    move-result-object v5

    if-nez v5, :cond_70

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "media controller not created"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_70
    new-instance v34, Landroid/os/Bundle;

    invoke-direct/range {v34 .. v34}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "repeat"

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "shuffle"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp;->-get44(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v12

    invoke-static {v7, v12}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap18(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-result v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get30(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/session/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v5

    const-string/jumbo v7, "com.samsung.android.bt.AVRCP"

    move-object/from16 v0, v34

    invoke-virtual {v5, v7, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get30(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/session/MediaController;

    move-result-object v5

    if-nez v5, :cond_71

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "media controller not created"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_71
    new-instance v35, Landroid/os/Bundle;

    invoke-direct/range {v35 .. v35}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "repeat"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp;->-get39(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v12

    invoke-static {v7, v12}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap17(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-result v7

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "shuffle"

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get30(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/session/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v5

    const-string/jumbo v7, "com.samsung.android.bt.AVRCP"

    move-object/from16 v0, v35

    invoke-virtual {v5, v7, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v0, v48

    invoke-static {v7, v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap40(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_13
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_72

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MESSAGE_CHANGE_PLAY_POS:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get30(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/session/MediaController;

    move-result-object v5

    if-nez v5, :cond_73

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "media controller not created"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_73
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get47(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-eqz v5, :cond_75

    new-instance v42, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v7, 0x5a

    move-object/from16 v0, v42

    invoke-direct {v0, v5, v7}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get30(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/session/MediaController;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    :cond_74
    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get45(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v7

    int-to-long v12, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap21(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v74, v0

    mul-long v12, v12, v74

    invoke-static {v5, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap29(Lcom/android/bluetooth/avrcp/Avrcp;J)V

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    mul-int/lit16 v5, v5, 0x190

    const/16 v7, 0x4e20

    if-ge v5, v7, :cond_76

    const/16 v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v58

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v58

    iput v5, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v12, 0x190

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_75
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get48(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-eqz v5, :cond_74

    new-instance v42, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v7, 0x59

    move-object/from16 v0, v42

    invoke-direct {v0, v5, v7}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get30(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/session/MediaController;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    goto :goto_f

    :cond_76
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_77

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "play position change is done, reset seek state"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get47(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-eqz v5, :cond_79

    new-instance v42, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/16 v7, 0x5a

    move-object/from16 v0, v42

    invoke-direct {v0, v5, v7}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get30(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/session/MediaController;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    :cond_78
    :goto_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set17(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set18(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    goto/16 :goto_0

    :cond_79
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get48(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-eqz v5, :cond_78

    new-instance v42, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/16 v7, 0x59

    move-object/from16 v0, v42

    invoke-direct {v0, v5, v7}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get30(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/session/MediaController;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    goto :goto_10

    :sswitch_14
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_7a

    const-string/jumbo v5, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MESSAGE_SET_A2DP_AUDIO_STATE:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get18(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-nez v5, :cond_7b

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "mCurrentA2dpDevice is null"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get10(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-eqz v5, :cond_7d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get32(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-nez v5, :cond_7c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get9(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v5

    if-eqz v5, :cond_7e

    :cond_7c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set11(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    :cond_7d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-static {v5, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap39(Lcom/android/bluetooth/avrcp/Avrcp;[BI)V

    goto/16 :goto_0

    :cond_7e
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "Don\'t update avrcp play state until Media started for AutoPlayCarkit(VW&AUDI)"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_15
    new-instance v40, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.musicplus.intent.action.PLAY_CONTENTS"

    move-object/from16 v0, v40

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "base_uri"

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v7, "list"

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [J

    move-object/from16 v0, v40

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string/jumbo v5, "listPosition"

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get1()I

    move-result v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get17(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v5, 0xf0

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :goto_11
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get17(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/content/Context;

    move-result-object v5

    new-instance v7, Landroid/os/UserHandle;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v7, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v40

    invoke-virtual {v5, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_11

    :cond_7f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap3(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0xd2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_80

    const/16 v5, 0xd2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    :cond_80
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v5

    const/16 v7, 0xd2

    invoke-virtual {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v5

    const-wide/16 v12, 0xbb8

    move-object/from16 v0, v50

    invoke-virtual {v5, v0, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_16
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_81

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "MESSAGE_A2DP_CONNECTION_STATE_CHANGED"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v12, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->a2dpConnectionState(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :sswitch_17
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_82

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "MESSAGE_AVRCP_UPDATE_PLAYSTATE_EVT"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get34(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-set12(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get5(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get20(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_83

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get20(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    :cond_83
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get38(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_84

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "AVRCP_UPDATE_PLAYSTATE_EVT. forcely update play state as PLAYING"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v7, 0x3

    const-wide/16 v12, -0x2

    invoke-static {v5, v6, v7, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap43(Lcom/android/bluetooth/avrcp/Avrcp;[BIJ)V

    goto/16 :goto_0

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/4 v7, 0x2

    const/4 v12, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v5, v0, v7, v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v46

    if-eqz v46, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-result-object v5

    const/4 v7, 0x2

    const/4 v12, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v5, v0, v7, v12}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_85

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "Sending track changed notification after DB update"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get33(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    move-result-object v7

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v12

    move-object/from16 v0, v46

    invoke-static {v5, v6, v0, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap36(Lcom/android/bluetooth/avrcp/Avrcp;[BLjava/util/ArrayList;J)V

    goto/16 :goto_0

    :sswitch_19
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "Remove message of MSG_REMOVE_PROCESS_PLAY_ITEM"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_1a
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_86

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "Process MSG_REMOVE_PROCESS_PENDING_PLAYSTATE"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    const/16 v5, 0xd2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_87

    const/16 v5, 0xd2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    :cond_87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get3(Lcom/android/bluetooth/avrcp/Avrcp;)J

    move-result-wide v12

    sub-long v32, v28, v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get36(Lcom/android/bluetooth/avrcp/Avrcp;)J

    move-result-wide v12

    add-long v12, v12, v32

    invoke-static {v5, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->-set13(Lcom/android/bluetooth/avrcp/Avrcp;J)J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get36(Lcom/android/bluetooth/avrcp/Avrcp;)J

    move-result-wide v12

    const/4 v7, 0x3

    invoke-static {v5, v6, v7, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap44(Lcom/android/bluetooth/avrcp/Avrcp;[BIJ)V

    goto/16 :goto_0

    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get31(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_88

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get31(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_88
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap35(Lcom/android/bluetooth/avrcp/Avrcp;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap38(Lcom/android/bluetooth/avrcp/Avrcp;)V

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v5, "Start"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string/jumbo v5, "End"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string/jumbo v5, "FolderItems"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object v13, v6

    invoke-static/range {v12 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap30(Lcom/android/bluetooth/avrcp/Avrcp;[BJJ[BZ)V

    goto/16 :goto_0

    :sswitch_1d
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v5

    if-eqz v5, :cond_89

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v7, "Respond to setBrowsedPlayer"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    const/16 v41, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp;->-get15(Lcom/android/bluetooth/avrcp/Avrcp;)[B

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp;->-get40(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v12

    move/from16 v0, v41

    invoke-static {v5, v7, v12, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap31(Lcom/android/bluetooth/avrcp/Avrcp;[BIZ)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0x4 -> :sswitch_9
        0x5 -> :sswitch_a
        0x6 -> :sswitch_b
        0x7 -> :sswitch_c
        0x8 -> :sswitch_d
        0x9 -> :sswitch_e
        0xc -> :sswitch_13
        0xd -> :sswitch_14
        0xe -> :sswitch_10
        0xf -> :sswitch_11
        0x10 -> :sswitch_12
        0x11 -> :sswitch_16
        0x12 -> :sswitch_17
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0xc9 -> :sswitch_15
        0xca -> :sswitch_18
        0xcb -> :sswitch_5
        0xcc -> :sswitch_3
        0xcd -> :sswitch_4
        0xce -> :sswitch_2
        0xd2 -> :sswitch_19
        0xd3 -> :sswitch_1a
        0xdc -> :sswitch_1b
        0xe6 -> :sswitch_1d
        0x12d -> :sswitch_f
        0x12e -> :sswitch_f
        0x12f -> :sswitch_f
        0x130 -> :sswitch_f
        0x136 -> :sswitch_1c
    .end sparse-switch
.end method
