.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method

.method private handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_0
    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": CommandException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Unknown exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 56

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    invoke-static {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->-wrap0(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v44

    if-eqz v44, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    invoke-static {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->-wrap0(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v5

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_0
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit v47

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v47

    throw v5

    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5, v12}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_2

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_3
    monitor-enter v47

    :try_start_1
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_3

    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move/from16 v0, v21

    invoke-static {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->-wrap3(Lcom/android/phone/PhoneInterfaceManager;I)V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_2
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v5

    monitor-exit v47

    throw v5

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v5}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallAndHangUpActive()V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move/from16 v0, v33

    invoke-static {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->-wrap1(Lcom/android/phone/PhoneInterfaceManager;I)Lcom/android/internal/telephony/Phone;

    move-result-object v44

    if-eqz v44, :cond_0

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v45

    const/4 v5, 0x2

    move/from16 v0, v45

    if-ne v0, v5, :cond_4

    const-string/jumbo v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsCommon;->isVoLTECall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v36

    :goto_4
    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_3
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_2

    :catchall_3
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move/from16 v0, v33

    invoke-static {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->-wrap1(Lcom/android/phone/PhoneInterfaceManager;I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v36

    goto :goto_4

    :cond_4
    const/4 v5, 0x1

    move/from16 v0, v45

    if-ne v0, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v36

    goto :goto_4

    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    invoke-static {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->-wrap2(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-nez v4, :cond_6

    const-string/jumbo v5, "iccTransmitApduLogicalChannel: No UICC"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    new-instance v6, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/4 v5, 0x0

    check-cast v5, [B

    const/16 v7, 0x6f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v5}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v47

    iput-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_4
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/16 :goto_2

    :catchall_4
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_6
    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, v38

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    move-object/from16 v0, v38

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v38

    iget v7, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v38

    iget v8, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v38

    iget v9, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v38

    iget v10, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v38

    iget-object v11, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual/range {v4 .. v12}, Lcom/android/internal/telephony/uicc/UiccCard;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_8

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_8

    :cond_7
    :goto_5
    monitor-enter v47

    :try_start_5
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/16 :goto_2

    :catchall_5
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_8
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_9

    const-string/jumbo v5, "iccTransmitApduLogicalChannel: Empty response received.Setting result: sw1 = 0x6F and sw2 = 0"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    new-instance v6, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/4 v5, 0x0

    check-cast v5, [B

    const/16 v7, 0x6f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v5}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v47

    iput-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :cond_9
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_a

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "iccTransmitApduLogicalChannel: CommandException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UICC_IO_ERROR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    new-instance v6, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/4 v5, 0x0

    check-cast v5, [B

    const/16 v7, 0x6f

    const/16 v8, 0xfc

    invoke-direct {v6, v7, v8, v5}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v47

    iput-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_5

    :cond_a
    const-string/jumbo v5, "iccTransmitApduLogicalChannel: Unknown exception"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    invoke-static {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->-wrap2(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-nez v4, :cond_b

    const-string/jumbo v5, "iccTransmitApduBasicChannel: No UICC"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    new-instance v6, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/4 v5, 0x0

    check-cast v5, [B

    const/16 v7, 0x6f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v5}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v47

    iput-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_6
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto/16 :goto_2

    :catchall_6
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_b
    const/16 v5, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, v38

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v38

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v38

    iget v7, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v38

    iget v8, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v38

    iget v9, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v38

    iget-object v10, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object v11, v12

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/uicc/UiccCard;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_c

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_c

    :goto_6
    monitor-enter v47

    :try_start_7
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_2

    :catchall_7
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_c
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_d

    const-string/jumbo v5, "iccTransmitApduBasicChannel: Empty response received.Setting result: sw1 = 0x6F and sw2 = 0"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    new-instance v6, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/4 v5, 0x0

    check-cast v5, [B

    const/16 v7, 0x6f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v5}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v47

    iput-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_6

    :cond_d
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "iccTransmitApduBasicChannel: CommandException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    const-string/jumbo v5, "iccTransmitApduBasicChannel: Unknown exception"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    invoke-static {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->-wrap2(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-nez v4, :cond_f

    const-string/jumbo v5, "iccExchangeSimIO: No UICC"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    new-instance v6, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/4 v5, 0x0

    check-cast v5, [B

    const/16 v7, 0x6f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v5}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v47

    iput-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_8
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto/16 :goto_2

    :catchall_8
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_f
    const/16 v5, 0x20

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, v38

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v38

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v38

    iget v7, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v38

    iget v8, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v38

    iget v9, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v38

    iget-object v10, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object v11, v12

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/uicc/UiccCard;->iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_10

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_10

    :goto_7
    monitor-enter v47

    :try_start_9
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto/16 :goto_2

    :catchall_9
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_10
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_11

    const-string/jumbo v5, "ccExchangeSimIO: Empty Response recieved.Setting result: sw1 = 0x6F and sw2 = 0"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    new-instance v6, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/4 v5, 0x0

    check-cast v5, [B

    const/16 v7, 0x6f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v5}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v47

    iput-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_7

    :cond_11
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "iccTransmitApduBasicChannel: CommandException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    const-string/jumbo v5, "iccTransmitApduBasicChannel: Unknown exception"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    invoke-static {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->-wrap2(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-nez v4, :cond_13

    const-string/jumbo v5, "sendEnvelopeWithStatus: No UICC"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    new-instance v6, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/4 v5, 0x0

    check-cast v5, [B

    const/16 v7, 0x6f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v5}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v47

    iput-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_a
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    goto/16 :goto_2

    :catchall_a
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_13
    const/16 v5, 0x1a

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5, v12}, Lcom/android/internal/telephony/uicc/UiccCard;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_14

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_14

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_8
    monitor-enter v47

    :try_start_b
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto/16 :goto_2

    :catchall_b
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_14
    new-instance v6, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/4 v5, 0x0

    check-cast v5, [B

    const/16 v7, 0x6f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v5}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v47

    iput-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_15

    const-string/jumbo v5, "sendEnvelopeWithStatus: Empty response"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_8

    :cond_15
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendEnvelopeWithStatus: CommandException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_8

    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendEnvelopeWithStatus: exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    invoke-static {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->-wrap2(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-nez v4, :cond_17

    const-string/jumbo v5, "iccOpenLogicalChannel: No UICC"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    new-instance v5, Landroid/telephony/IccOpenLogicalChannelResponse;

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(II[B)V

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_c
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto/16 :goto_2

    :catchall_c
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_17
    const/16 v5, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->AID:Ljava/lang/String;

    invoke-virtual {v4, v5, v12}, Lcom/android/internal/telephony/uicc/UiccCard;->iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    invoke-static {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->-wrap2(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-nez v4, :cond_18

    const-string/jumbo v5, "iccOpenLogicalChannel: No UICC"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    new-instance v5, Landroid/telephony/IccOpenLogicalChannelResponse;

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(II[B)V

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_d
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    goto/16 :goto_2

    :catchall_d
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_18
    const/16 v5, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->AID:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-byte v6, v0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->p2:B

    invoke-virtual {v4, v5, v6, v12}, Lcom/android/internal/telephony/uicc/UiccCard;->iccOpenLogicalChannel(Ljava/lang/String;BLandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1a

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_1a

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, [I

    const/4 v5, 0x0

    aget v27, v50, v5

    const/16 v52, 0x0

    move-object/from16 v0, v50

    array-length v5, v0

    const/4 v6, 0x1

    if-le v5, v6, :cond_19

    move-object/from16 v0, v50

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    new-array v0, v5, [B

    move-object/from16 v52, v0

    const/16 v37, 0x1

    :goto_9
    move-object/from16 v0, v50

    array-length v5, v0

    move/from16 v0, v37

    if-ge v0, v5, :cond_19

    add-int/lit8 v5, v37, -0x1

    aget v6, v50, v37

    int-to-byte v6, v6

    aput-byte v6, v52, v5

    add-int/lit8 v37, v37, 0x1

    goto :goto_9

    :cond_19
    new-instance v43, Landroid/telephony/IccOpenLogicalChannelResponse;

    const/4 v5, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v27

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v5, v2}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(II[B)V

    :goto_a
    move-object/from16 v0, v43

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_e
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    goto/16 :goto_2

    :catchall_e
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_1a
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_1b

    const-string/jumbo v5, "iccOpenLogicalChannel: Empty response"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    :cond_1b
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "iccOpenLogicalChannel: Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    :cond_1c
    const/16 v35, 0x4

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1d

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_1d

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "MISSING_RESOURCE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1e

    const/16 v35, 0x2

    :cond_1d
    :goto_b
    new-instance v43, Landroid/telephony/IccOpenLogicalChannelResponse;

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v35

    invoke-direct {v0, v5, v1, v6}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(II[B)V

    goto :goto_a

    :cond_1e
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "NO_SUCH_ELEMENT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1d

    const/16 v35, 0x3

    goto :goto_b

    :pswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    invoke-static {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->-wrap2(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-nez v4, :cond_1f

    const-string/jumbo v5, "iccCloseLogicalChannel: No UICC"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    new-instance v6, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/4 v5, 0x0

    check-cast v5, [B

    const/16 v7, 0x6f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v5}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v47

    iput-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_f
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    goto/16 :goto_2

    :catchall_f
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_1f
    const/16 v5, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccChannelArgument;->channel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v12}, Lcom/android/internal/telephony/uicc/UiccCard;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_13
    const-string/jumbo v5, "iccCloseLogicalChannel"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v5, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v6, v5, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5, v12}, Lcom/android/internal/telephony/Phone;->nvReadItem(ILandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_20

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_20

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_c
    monitor-enter v47

    :try_start_10
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    goto/16 :goto_2

    :catchall_10
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_20
    const-string/jumbo v5, ""

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_21

    const-string/jumbo v5, "nvReadItem: Empty response"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_c

    :cond_21
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_22

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nvReadItem: CommandException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_c

    :cond_22
    const-string/jumbo v5, "nvReadItem: Unknown exception"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_c

    :pswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v5, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v6, v5, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v7, v5, v12}, Lcom/android/internal/telephony/Phone;->nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_17
    const-string/jumbo v5, "nvWriteItem"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v5, 0x12

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v6, v5, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v6, v5, v12}, Lcom/android/internal/telephony/Phone;->nvWriteCdmaPrl([BLandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_19
    const-string/jumbo v5, "nvWriteCdmaPrl"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v5, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v6, v5, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5, v12}, Lcom/android/internal/telephony/Phone;->nvResetConfig(ILandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_1b
    const-string/jumbo v5, "nvResetConfig"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v5, 0x16

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5, v12}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_23

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_23

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_d
    monitor-enter v47

    :try_start_11
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    goto/16 :goto_2

    :catchall_11
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_23
    const/4 v5, 0x0

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_24

    const-string/jumbo v5, "getPreferredNetworkType: Empty response"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_d

    :cond_24
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_25

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPreferredNetworkType: CommandException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_d

    :cond_25
    const-string/jumbo v5, "getPreferredNetworkType: Unknown exception"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_d

    :pswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v5, 0x18

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v42

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move/from16 v0, v42

    invoke-virtual {v5, v0, v12}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_1f
    const-string/jumbo v5, "setPreferredNetworkType"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v5, 0x1c

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, [B

    invoke-static {v6, v7, v5, v12}, Lcom/android/phone/PhoneInterfaceManager;->-wrap5(Lcom/android/phone/PhoneInterfaceManager;I[BLandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_12
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    goto/16 :goto_2

    :catchall_12
    move-exception v5

    monitor-exit v47

    throw v5

    :pswitch_22
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v5, 0x22

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    invoke-static {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->-wrap0(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    move-object/from16 v0, v54

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v54

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v5, v6, v12}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_23
    const-string/jumbo v5, "setVoicemailNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_24
    const-string/jumbo v5, "CMD_ICCPCSC_POWERUP"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap6(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, [B

    const/16 v7, 0x26

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v7, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/android/phone/PhoneInterfaceManager;->-wrap4(Lcom/android/phone/PhoneInterfaceManager;[BLandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_25
    const-string/jumbo v5, "EVENT_ICCPCSC_POWERUP_DONE"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap6(Ljava/lang/String;)V

    const/16 v46, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_27

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_27

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, [B

    const-string/jumbo v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ATR Length :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v7, v49, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v49

    array-length v5, v0

    if-lez v5, :cond_26

    move-object/from16 v0, v49

    array-length v5, v0

    new-array v0, v5, [B

    move-object/from16 v46, v0

    move-object/from16 v0, v49

    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v46

    invoke-static {v0, v6, v1, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_26
    :goto_e
    move-object/from16 v0, v46

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_13
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    goto/16 :goto_2

    :catchall_13
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_27
    const-string/jumbo v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error in EVENT_ICCPCSC_POWERUP_DONE with exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    new-array v0, v5, [B

    move-object/from16 v46, v0

    const/16 v5, 0x6f

    const/4 v6, 0x0

    aput-byte v5, v46, v6

    goto :goto_e

    :pswitch_26
    const-string/jumbo v5, "CMD_ICCPCSC_CONNECT"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap6(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, [B

    const/16 v7, 0x28

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v7, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/android/phone/PhoneInterfaceManager;->-wrap4(Lcom/android/phone/PhoneInterfaceManager;[BLandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_27
    const-string/jumbo v5, "EVENT_ICCPCSC_CONNECT_DONE"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap6(Ljava/lang/String;)V

    const/16 v29, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_29

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_29

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, [B

    move-object/from16 v0, v49

    array-length v5, v0

    if-lez v5, :cond_28

    move-object/from16 v0, v49

    array-length v5, v0

    new-array v0, v5, [B

    move-object/from16 v29, v0

    move-object/from16 v0, v49

    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v29

    invoke-static {v0, v6, v1, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_28
    :goto_f
    move-object/from16 v0, v29

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_14
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    goto/16 :goto_2

    :catchall_14
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_29
    const-string/jumbo v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error in EVENT_ICCPCSC_CONNECT_DONE with exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    new-array v0, v5, [B

    move-object/from16 v29, v0

    const/16 v5, 0x6f

    const/4 v6, 0x0

    aput-byte v5, v29, v6

    goto :goto_f

    :pswitch_28
    const-string/jumbo v5, "CMD_ICCPCSC_DISCONNECT"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap6(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, [B

    const/16 v7, 0x2a

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v7, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/android/phone/PhoneInterfaceManager;->-wrap4(Lcom/android/phone/PhoneInterfaceManager;[BLandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_29
    const-string/jumbo v5, "EVENT_ICCPCSC_DISCONNECT_DONE"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap6(Ljava/lang/String;)V

    const/16 v30, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2b

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_2b

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, [B

    move-object/from16 v0, v49

    array-length v5, v0

    if-lez v5, :cond_2a

    move-object/from16 v0, v49

    array-length v5, v0

    new-array v0, v5, [B

    move-object/from16 v30, v0

    move-object/from16 v0, v49

    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v30

    invoke-static {v0, v6, v1, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_2a
    :goto_10
    move-object/from16 v0, v30

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_15
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    goto/16 :goto_2

    :catchall_15
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_2b
    const-string/jumbo v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error in EVENT_ICCPCSC_DISCONNECT_DONE with exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    new-array v0, v5, [B

    move-object/from16 v30, v0

    const/16 v5, 0x6f

    const/4 v6, 0x0

    aput-byte v5, v30, v6

    goto :goto_10

    :pswitch_2a
    const-string/jumbo v5, "CMD_ICCPCSC_TRANSMIT"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap6(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, [B

    const/16 v7, 0x2c

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v7, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/android/phone/PhoneInterfaceManager;->-wrap4(Lcom/android/phone/PhoneInterfaceManager;[BLandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_2b
    const-string/jumbo v5, "EVENT_ICCPCSC_TRANSMIT_DONE"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap6(Ljava/lang/String;)V

    const/16 v55, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2d

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_2d

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, [B

    const-string/jumbo v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "result Length :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v49

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v49

    array-length v5, v0

    if-lez v5, :cond_2c

    move-object/from16 v0, v49

    array-length v5, v0

    new-array v0, v5, [B

    move-object/from16 v55, v0

    move-object/from16 v0, v49

    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v55

    invoke-static {v0, v6, v1, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_2c
    :goto_11
    move-object/from16 v0, v55

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_16
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    goto/16 :goto_2

    :catchall_16
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_2d
    const-string/jumbo v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error in EVENT_ICCPCSC_TRANSMIT_DONE with exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    new-array v0, v5, [B

    move-object/from16 v55, v0

    const/16 v5, 0x6f

    const/4 v6, 0x0

    aput-byte v5, v55, v6

    goto :goto_11

    :pswitch_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    new-instance v24, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v31, Ljava/io/DataOutputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v41, 0x4

    const/16 v5, 0x11

    :try_start_17
    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x68

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object/from16 v0, v31

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1

    :goto_12
    const-string/jumbo v5, "DELETE_GUTI-TEST"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap6(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/16 v7, 0x34

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v7, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/phone/PhoneInterfaceManager;->-wrap4(Lcom/android/phone/PhoneInterfaceManager;[BLandroid/os/Message;)V

    if-eqz v31, :cond_0

    :try_start_18
    invoke-virtual/range {v31 .. v31}, Ljava/io/DataOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v32

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CMD_DELETE_GUTI : close fail - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap6(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v32

    const-string/jumbo v5, "IOException in open channel"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap6(Ljava/lang/String;)V

    goto :goto_12

    :pswitch_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const-string/jumbo v5, "EVENT_DELETE_GUTI_DONE response came"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap6(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ar.exception and ar.result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap6(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2e

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_13
    monitor-enter v47

    :try_start_19
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_17

    goto/16 :goto_2

    :catchall_17
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_2e
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_13

    :pswitch_2e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    new-instance v23, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v28, Ljava/io/DataOutputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v48

    const-string/jumbo v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Request Set Band mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v48

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x16

    :try_start_1a
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x13

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    move/from16 v0, v48

    int-to-byte v5, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_3

    :goto_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/16 v7, 0x36

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v7, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/phone/PhoneInterfaceManager;->-wrap4(Lcom/android/phone/PhoneInterfaceManager;[BLandroid/os/Message;)V

    if-eqz v28, :cond_0

    :try_start_1b
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    :pswitch_2f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2f

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_2f

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    const-string/jumbo v5, "PhoneInterfaceManager"

    const-string/jumbo v6, "Request Set Band mode Done! "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    monitor-enter v47

    :try_start_1c
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_18

    goto/16 :goto_2

    :catchall_18
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_2f
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    const-string/jumbo v5, "PhoneInterfaceManager"

    const-string/jumbo v6, "Request Set Band mode Fail! "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :pswitch_30
    const-string/jumbo v5, "setAirplaneMode: Send delayed intent"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    new-instance v40, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v40

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "state"

    const/4 v6, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v40

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :pswitch_31
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v5, 0x39

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    invoke-static {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->-wrap0(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_32
    const-string/jumbo v5, "setNetworkSelectionModeAutomatic"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_33
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v5, 0x3d

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    invoke-static {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->-wrap0(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_34
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_30

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_30

    new-instance v25, Lcom/android/internal/telephony/CellNetworkScanResult;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x1

    move-object/from16 v0, v25

    invoke-direct {v0, v6, v5}, Lcom/android/internal/telephony/CellNetworkScanResult;-><init>(ILjava/util/List;)V

    :goto_16
    move-object/from16 v0, v25

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_1d
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_19

    goto/16 :goto_2

    :catchall_19
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_30
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_31

    const-string/jumbo v5, "getCellNetworkScanResults: Empty response"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    :cond_31
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_32

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCellNetworkScanResults: Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    :cond_32
    const/16 v35, 0x4

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_33

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v34

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v34

    if-ne v0, v5, :cond_34

    const/16 v35, 0x2

    :cond_33
    :goto_17
    new-instance v25, Lcom/android/internal/telephony/CellNetworkScanResult;

    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/CellNetworkScanResult;-><init>(ILjava/util/List;)V

    goto :goto_16

    :cond_34
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v34

    if-ne v0, v5, :cond_33

    const/16 v35, 0x3

    goto :goto_17

    :pswitch_35
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Lcom/android/phone/PhoneInterfaceManager$ManualNetworkSelectionArgument;

    const/16 v5, 0x3f

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    invoke-static {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->-wrap0(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    move-object/from16 v0, v51

    iget-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$ManualNetworkSelectionArgument;->operatorInfo:Lcom/android/internal/telephony/OperatorInfo;

    move-object/from16 v0, v51

    iget-boolean v7, v0, Lcom/android/phone/PhoneInterfaceManager$ManualNetworkSelectionArgument;->persistSelection:Z

    invoke-virtual {v5, v6, v7, v12}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_36
    const-string/jumbo v5, "setNetworkSelectionModeManual"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_37
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v5, 0x3b

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5, v12}, Lcom/android/internal/telephony/Phone;->getModemActivityInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_38
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_36

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_36

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_18
    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v5, :cond_35

    new-instance v13, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v13 .. v20}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    move-object/from16 v0, v47

    iput-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :cond_35
    monitor-enter v47

    :try_start_1e
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1a

    goto/16 :goto_2

    :catchall_1a
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_36
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_37

    const-string/jumbo v5, "queryModemActivityInfo: Empty response"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_18

    :cond_37
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_38

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryModemActivityInfo: CommandException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_18

    :cond_38
    const-string/jumbo v5, "queryModemActivityInfo: Unknown exception"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_18

    :pswitch_39
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, v47

    invoke-static {v5, v0}, Lcom/android/phone/PhoneInterfaceManager;->-wrap2(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-nez v4, :cond_39

    const-string/jumbo v5, "getAtr: No UICC"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    const-string/jumbo v5, ""

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v47

    :try_start_1f
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1b

    goto/16 :goto_2

    :catchall_1b
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_39
    const/16 v5, 0x24

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/android/internal/telephony/uicc/UiccCard;->getAtr(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_3a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_3a

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_19
    monitor-enter v47

    :try_start_20
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1c

    goto/16 :goto_2

    :catchall_1c
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_3a
    const-string/jumbo v5, ""

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_3b

    const-string/jumbo v5, "ccExchangeSimIO: Empty Response"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_19

    :cond_3b
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_3c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "iccTransmitApduBasicChannel: CommandException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_19

    :cond_3c
    const-string/jumbo v5, "iccTransmitApduBasicChannel: Unknown exception"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_19

    :pswitch_3b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v5, 0x41

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5, v12}, Lcom/android/internal/telephony/Phone;->getDisable2g(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_3d

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_3d

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_1a
    monitor-enter v47

    :try_start_21
    invoke-virtual/range {v47 .. v47}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->notifyAll()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1d

    goto/16 :goto_2

    :catchall_1d
    move-exception v5

    monitor-exit v47

    throw v5

    :cond_3d
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v47

    iput-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_3e

    const-string/jumbo v5, "disable2g: Empty response"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_1a

    :cond_3e
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_3f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "disable2g: CommandException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_1a

    :cond_3f
    const-string/jumbo v5, "disable2g: Unknown exception"

    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->-wrap7(Ljava/lang/String;)V

    goto :goto_1a

    :pswitch_3d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v5, 0x43

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, v47

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move/from16 v0, v53

    invoke-virtual {v5, v0, v12}, Lcom/android/internal/telephony/Phone;->setDisable2g(ILandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_3e
    const-string/jumbo v5, "setDisable2g"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_d
        :pswitch_e
        :pswitch_20
        :pswitch_21
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_22
        :pswitch_23
        :pswitch_39
        :pswitch_3a
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_37
        :pswitch_38
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
    .end packed-switch
.end method
