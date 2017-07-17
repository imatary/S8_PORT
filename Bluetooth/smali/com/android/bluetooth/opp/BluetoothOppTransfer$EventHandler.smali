.class Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
.super Landroid/os/Handler;
.source "BluetoothOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    const-string/jumbo v13, "BtOppTransfer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "OppTransfer Handler receive : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    new-instance v15, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v15, v0, v13, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;Z)V

    invoke-static {v14, v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-set0(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get3(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->start()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string/jumbo v13, "BtOppTransfer"

    const-string/jumbo v14, "receive RFCOMM_ERROR msg"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-set1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    const-string/jumbo v13, "BtOppTransfer"

    const-string/jumbo v14, "Opp transfer is stopped by RFCOMM ERROR. Send ACTION_OPP_TRANSFER_STOP intent to block starting new opptransfer for same timestamp"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v13

    if-eqz v13, :cond_2

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v13, "com.samsung.btopp.intent.action.OPP_TRANSFER_STOP"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "android.btopp.intent.extra.TIMESTAMP"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v14

    iget-wide v14, v14, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-virtual {v4, v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-set0(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    const/16 v14, 0x1f1

    invoke-static {v13, v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v13

    const/4 v14, 0x3

    iput v14, v13, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v14

    iget v14, v14, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    iget-object v15, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v13, v14, v15}, Lcom/android/bluetooth/opp/Constants;->sendIntentSessionError(Landroid/content/Context;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v13

    if-eqz v13, :cond_3

    const-string/jumbo v13, "BtOppTransfer"

    const-string/jumbo v14, "Transfer receive RFCOMM_CONNECTED msg"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-set0(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljavax/obex/ObexTransport;

    invoke-static {v14, v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-set2(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v13

    const-string/jumbo v14, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v13

    iget v13, v13, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    const/4 v14, 0x5

    if-eq v13, v14, :cond_0

    const-string/jumbo v13, "BAOI"

    const-string/jumbo v14, "RFC_CONNECTED"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x3e8

    move/from16 v0, v16

    invoke-static {v13, v0, v14, v15}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->insertGSIMLog(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v13

    if-eqz v13, :cond_4

    const-string/jumbo v13, "BtOppTransfer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "receive MSG_SHARE_COMPLETE for info "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v13

    iget v13, v13, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-set1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v13

    if-eqz v13, :cond_5

    const-string/jumbo v13, "BtOppTransfer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "continue session for info "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v15

    iget v15, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " from batch "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    iget v15, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v13

    iget v13, v13, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iget v14, v8, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    if-ne v13, v14, :cond_8

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v13

    iget v13, v13, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iget v14, v8, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    if-ne v13, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-set1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v13

    if-nez v13, :cond_6

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v13

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get6(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->stop()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap3(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v13

    if-eqz v13, :cond_a

    const-string/jumbo v13, "BtOppTransfer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Batch "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    iget v15, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " is done"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get6(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->stop()V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v13

    if-eqz v13, :cond_b

    const-string/jumbo v13, "BtOppTransfer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "receive MSG_SESSION_COMPLETE for batch "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    iget v15, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v13

    const/4 v14, 0x2

    iput v14, v13, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13, v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    monitor-enter p0

    const-wide/16 v14, 0x64

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v13

    if-eqz v13, :cond_c

    const-string/jumbo v13, "BtOppTransfer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "receive MSG_SESSION_COMPLETE mStatus : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget v13, v9, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v14, 0xc8

    if-eq v13, v14, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v13

    iget v14, v9, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v13, v14}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusOfRecord(Landroid/content/Context;I)I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get2(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v14

    iget v14, v14, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    iget-object v15, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v13, v14, v15}, Lcom/android/bluetooth/opp/Constants;->sendIntentSessionCompleted(Landroid/content/Context;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    const-string/jumbo v13, "BtOppTransfer"

    const-string/jumbo v14, "Interrupted waiting for BluetoothOppObexSession.MSG_SESSION_COMPLETE"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    :pswitch_6
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v13

    if-eqz v13, :cond_e

    const-string/jumbo v13, "BtOppTransfer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "receive MSG_SESSION_ERROR for batch "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    iget v15, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get6(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->stop()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget v14, v10, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v13, v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v13

    const/4 v14, 0x3

    iput v14, v13, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v14

    iget v14, v14, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    iget-object v15, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v13, v14, v15}, Lcom/android/bluetooth/opp/Constants;->sendIntentSessionError(Landroid/content/Context;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v13

    if-eqz v13, :cond_f

    const-string/jumbo v13, "BtOppTransfer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "receive MSG_SHARE_INTERRUPTED for batch "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    iget v15, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v13

    iget v13, v13, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v13, :cond_11

    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get8(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v13

    if-nez v13, :cond_12

    const-string/jumbo v13, "BtOppTransfer"

    const-string/jumbo v14, "receive MSG_SHARE_INTERRUPTED but mTransport = null"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v13

    if-eqz v13, :cond_10

    const-string/jumbo v13, "BtOppTransfer"

    const-string/jumbo v14, "mTransport closed "

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v13

    const/4 v14, 0x3

    iput v14, v13, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    if-eqz v11, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget v14, v11, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v13, v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v13

    const/4 v14, 0x3

    iput v14, v13, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v14

    iget v14, v14, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    iget-object v15, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v13, v14, v15}, Lcom/android/bluetooth/opp/Constants;->sendIntentSessionError(Landroid/content/Context;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :cond_12
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get8(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v13

    invoke-interface {v13}, Ljavax/obex/ObexTransport;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string/jumbo v13, "BtOppTransfer"

    const-string/jumbo v14, "failed to close mTransport"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap0(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    goto :goto_3

    :pswitch_8
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v13

    if-eqz v13, :cond_14

    const-string/jumbo v13, "BtOppTransfer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "receive MSG_CONNECT_TIMEOUT for batch "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v15

    iget v15, v15, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get1(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v13

    iget v13, v13, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v13, :cond_16

    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get8(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v13

    if-nez v13, :cond_15

    const-string/jumbo v13, "BtOppTransfer"

    const-string/jumbo v14, "receive MSG_SHARE_INTERRUPTED but mTransport = null"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get0()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "BtOppTransfer"

    const-string/jumbo v14, "mTransport closed "

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_15
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get8(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v13

    invoke-interface {v13}, Ljavax/obex/ObexTransport;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    const-string/jumbo v13, "BtOppTransfer"

    const-string/jumbo v14, "failed to close mTransport"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "notification"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v13

    iget v13, v13, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v12, v13}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v13, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v13, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v13}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get4(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/os/UserHandle;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-direct {v14, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_5

    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-get5(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->-wrap2(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
