.class Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;
.super Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
.source "SmsSendService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;-><init>(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .locals 24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    const-string/jumbo v4, "SmsSendService"

    const-string/jumbo v6, "[%s] Process IdleState startId=%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    # invokes: Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->token2str(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$200(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v7, v22

    const/16 v22, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v7, v22

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    move/from16 v0, v18

    # invokes: Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->stopService(I)V
    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$300(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v4, "extra_message_body"

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, "extra_sender_imsi"

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v4, "extra_hidden"

    const/4 v6, 0x0

    invoke-virtual {v9, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string/jumbo v4, "extra_bgsender_available"

    const/4 v6, 0x1

    invoke-virtual {v9, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string/jumbo v4, "extra_recipients"

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    const-string/jumbo v6, "SmsSendService"

    const-string/jumbo v7, "Flag hidden=%s bgSenderAvailable=%s bound=%s"

    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/4 v4, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v22, v4

    const/4 v4, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v22, v4

    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    # getter for: Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;
    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$400(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/android/mms/transaction/IMessageBackgroundSender;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v22, v23

    move-object/from16 v0, v22

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v14, :cond_2

    const-string/jumbo v4, "SmsSendService"

    const-string/jumbo v6, "No recipents."

    invoke-static {v4, v6}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    move/from16 v0, v18

    # invokes: Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->stopService(I)V
    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$300(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;I)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    if-nez v11, :cond_3

    if-nez v8, :cond_6

    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->isMultiSimDevice(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getSubIdUsingImsi(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v20, v0

    const-string/jumbo v4, "SmsSendService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "multisim sending, sub Id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v10

    const-string/jumbo v4, "SmsSendService"

    invoke-static {v4, v10}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    move/from16 v0, v18

    # invokes: Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->stopService(I)V
    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$300(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;I)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    goto :goto_2

    :cond_5
    const-string/jumbo v4, "SmsSendService"

    const-string/jumbo v6, "Send Message with SmsManager to %d recipients"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v22, 0x0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v7, v22

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    # getter for: Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;
    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$400(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/android/mms/transaction/IMessageBackgroundSender;

    move-result-object v4

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    # getter for: Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;
    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$500(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    # getter for: Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;
    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$500(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    # getter for: Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mBindState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
    invoke-static {v6}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$600(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto/16 :goto_0

    :cond_7
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.mms.transaction.Send.BACKGROUND_MSG"

    invoke-direct {v12, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    const-string/jumbo v4, "requestApp"

    move/from16 v0, v16

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    const-string/jumbo v4, "recipients"

    invoke-virtual {v12, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "message"

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v13, v6

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    # getter for: Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;
    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$400(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/android/mms/transaction/IMessageBackgroundSender;

    move-result-object v4

    move/from16 v0, v16

    invoke-interface {v4, v0, v13, v12}, Lcom/android/mms/transaction/IMessageBackgroundSender;->sendMessage(IILandroid/content/Intent;)V

    const-string/jumbo v4, "SmsSendService"

    const-string/jumbo v6, "Send Message with Background Sender to %d recipients"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v22, 0x0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v7, v22

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$IdleState;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    move/from16 v0, v18

    # invokes: Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->stopService(I)V
    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$300(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;I)V

    goto/16 :goto_0

    :catch_1
    move-exception v10

    const-string/jumbo v4, "SmsSendService"

    invoke-static {v4, v10}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
