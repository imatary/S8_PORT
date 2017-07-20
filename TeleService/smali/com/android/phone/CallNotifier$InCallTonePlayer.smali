.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ")..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->-wrap1(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v11}, Lcom/android/phone/CallNotifier;->-get3(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Bad toneId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :pswitch_1
    const/16 v9, 0x16

    const/16 v10, 0x50

    const v8, 0x7fffffeb

    :goto_0
    :try_start_0
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v11, v11, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v11, v11, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v6, 0x6

    :goto_1
    new-instance v7, Landroid/media/ToneGenerator;

    invoke-direct {v7, v6, v10}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v7, :cond_3

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v11}, Lcom/android/phone/CallNotifier;->-get2(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    const/4 v11, 0x2

    if-ne v4, v11, :cond_12

    const/16 v11, 0x5d

    if-ne v9, v11, :cond_b

    if-eqz v5, :cond_1

    const/4 v11, 0x1

    if-eq v5, v11, :cond_1

    invoke-static {}, Lcom/android/phone/CallNotifier;->-get0()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->-wrap1(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x1

    const/4 v2, 0x0

    :cond_1
    :goto_3
    monitor-enter p0

    if-eqz v3, :cond_2

    :try_start_1
    iget v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_2

    const/4 v11, 0x1

    iput v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    invoke-virtual {v7, v9}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v11, v8, 0x14

    int-to-long v12, v11

    :try_start_2
    invoke-virtual {p0, v12, v13}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v7}, Landroid/media/ToneGenerator;->stopTone()V

    :cond_2
    invoke-virtual {v7}, Landroid/media/ToneGenerator;->release()V

    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    :cond_3
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v11}, Lcom/android/phone/CallNotifier;->-get3(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v11, v12, :cond_4

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v11}, Lcom/android/phone/CallNotifier;->-wrap2(Lcom/android/phone/CallNotifier;)V

    :cond_4
    return-void

    :pswitch_2
    const/4 v11, 0x2

    if-ne v4, v11, :cond_5

    const/16 v9, 0x60

    const/16 v10, 0x32

    const/16 v8, 0x3e8

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x1

    if-eq v4, v11, :cond_6

    const/4 v11, 0x3

    if-ne v4, v11, :cond_7

    :cond_6
    const/16 v9, 0x11

    const/16 v10, 0x50

    const/16 v8, 0xfa0

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x5

    if-eq v4, v11, :cond_6

    const/4 v11, 0x4

    if-eq v4, v11, :cond_6

    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unexpected phone type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    :pswitch_3
    const/16 v9, 0x12

    const/16 v10, 0x50

    const/16 v8, 0xfa0

    goto/16 :goto_0

    :pswitch_4
    const/16 v9, 0x1b

    const/16 v10, 0x50

    const/16 v8, 0xc8

    goto/16 :goto_0

    :pswitch_5
    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v11}, Lcom/android/phone/CallNotifier;->-get1(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v11, v11, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    const/16 v9, 0x5d

    const/16 v10, 0x50

    const/16 v8, 0x2ee

    goto/16 :goto_0

    :cond_8
    const/16 v9, 0x1b

    const/16 v10, 0x50

    const/16 v8, 0xc8

    goto/16 :goto_0

    :pswitch_6
    const/16 v9, 0x56

    const/16 v10, 0x50

    const/16 v8, 0x1388

    goto/16 :goto_0

    :pswitch_7
    const/16 v9, 0x26

    const/16 v10, 0x50

    const/16 v8, 0xfa0

    goto/16 :goto_0

    :pswitch_8
    const/16 v9, 0x25

    const/16 v10, 0x32

    const/16 v8, 0x1f4

    goto/16 :goto_0

    :pswitch_9
    const/16 v9, 0x5f

    const/16 v10, 0x32

    const/16 v8, 0x177

    goto/16 :goto_0

    :pswitch_a
    const/16 v9, 0x57

    const/16 v10, 0x32

    const/16 v8, 0x1388

    goto/16 :goto_0

    :pswitch_b
    const/16 v9, 0x15

    const/16 v10, 0x50

    const/16 v8, 0xfa0

    goto/16 :goto_0

    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v11, "CallNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_b
    const/16 v11, 0x60

    if-eq v9, v11, :cond_c

    const/16 v11, 0x26

    if-ne v9, v11, :cond_e

    :cond_c
    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/phone/CallNotifier;->-get0()Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->-wrap1(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    :cond_d
    const/4 v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_e
    const/16 v11, 0x27

    if-eq v9, v11, :cond_c

    const/16 v11, 0x25

    if-eq v9, v11, :cond_c

    const/16 v11, 0x5f

    if-eq v9, v11, :cond_c

    const/16 v11, 0x57

    if-eq v9, v11, :cond_f

    const/16 v11, 0x56

    if-ne v9, v11, :cond_11

    :cond_f
    if-eqz v5, :cond_1

    const/4 v11, 0x1

    if-eq v5, v11, :cond_1

    invoke-static {}, Lcom/android/phone/CallNotifier;->-get0()Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/CallNotifier;->-wrap1(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    :cond_10
    const/4 v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_11
    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_12
    const/4 v3, 0x1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    :try_start_4
    const-string/jumbo v11, "CallNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "InCallTonePlayer stopped: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method
