.class Lcom/android/phone/DsaSetting$ActivateHandler;
.super Landroid/os/Handler;
.source "DsaSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DsaSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DsaSetting;


# direct methods
.method private constructor <init>(Lcom/android/phone/DsaSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/DsaSetting;Lcom/android/phone/DsaSetting$ActivateHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/DsaSetting$ActivateHandler;-><init>(Lcom/android/phone/DsaSetting;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .locals 12

    const/16 v11, 0x1f4

    const/16 v10, 0x64

    const/4 v1, 0x3

    const/4 v0, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "DsaSetting"

    const-string/jumbo v3, "handleGetCFResponse()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v2, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DsaSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleGetCFResponse: ar.exception="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v4, v3}, Lcom/android/phone/DsaSetting;->-wrap0(Lcom/android/phone/DsaSetting;II)V

    :goto_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_2

    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v0, v0, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/DsaSetting;->inputNumber2:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v2}, Lcom/android/phone/DsaSetting;->-get1(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v2

    invoke-virtual {v2, v10, v1, v10}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    :goto_1
    return-void

    :cond_0
    iget-object v7, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Lcom/android/internal/telephony/CallForwardInfo;

    array-length v2, v7

    if-nez v2, :cond_1

    const-string/jumbo v2, "DsaSetting"

    const-string/jumbo v3, "handleGetCFResponse: cfInfoArray.length == 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v4, v3}, Lcom/android/phone/DsaSetting;->-wrap0(Lcom/android/phone/DsaSetting;II)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "DsaSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleGetCFResponse: msg.arg1("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "), msg.arg2("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v2, p1, Landroid/os/Message;->arg2:I

    const/16 v3, 0x7d0

    if-ne v2, v3, :cond_3

    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v0, v0, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/DsaSetting;->inputNumber1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v2}, Lcom/android/phone/DsaSetting;->-get1(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v2

    const/16 v5, 0xc8

    const/16 v10, 0xc8

    invoke-virtual {v2, v5, v1, v10}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_1

    :cond_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_8

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v10, :cond_5

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v1}, Lcom/android/phone/DsaSetting;->-get0(Lcom/android/phone/DsaSetting;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v2}, Lcom/android/phone/DsaSetting;->-get1(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v2}, Lcom/android/phone/DsaSetting;->-get1(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v1}, Lcom/android/phone/DsaSetting;->-get0(Lcom/android/phone/DsaSetting;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v2}, Lcom/android/phone/DsaSetting;->-get1(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v2

    const/16 v3, 0x258

    invoke-virtual {v2, v3}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v1, "DsaSetting"

    const-string/jumbo v2, "end of DSA..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.phone.dsacomplete"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "isActivate"

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v2}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v2

    if-ne v2, v0, :cond_7

    move v4, v0

    :cond_7
    invoke-virtual {v8, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_8
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v10, :cond_a

    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v0}, Lcom/android/phone/DsaSetting;->-get0(Lcom/android/phone/DsaSetting;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v0, v0, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v1}, Lcom/android/phone/DsaSetting;->-get1(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v0, v0, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v1}, Lcom/android/phone/DsaSetting;->-get1(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v1}, Lcom/android/phone/DsaSetting;->-get0(Lcom/android/phone/DsaSetting;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v0, v0, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v1}, Lcom/android/phone/DsaSetting;->-get1(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.phone.dsacomplete"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "isActivate"

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v2}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v2

    if-ne v2, v0, :cond_c

    :goto_2
    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_c
    move v0, v4

    goto :goto_2
.end method

.method private handleGetCallWaitingResponse(Landroid/os/Message;)V
    .locals 12

    const-string/jumbo v0, "DsaSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleGetCallWaitingResponse(), bDualSet("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v2}, Lcom/android/phone/DsaSetting;->-get0(Lcom/android/phone/DsaSetting;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DsaSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleGetCallWaitingResponse: ar.exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/phone/DsaSetting;->-wrap0(Lcom/android/phone/DsaSetting;II)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v0}, Lcom/android/phone/DsaSetting;->-get0(Lcom/android/phone/DsaSetting;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v0}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v0, v0, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/DsaSetting;->inputNumber1:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v1}, Lcom/android/phone/DsaSetting;->-get1(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v1

    const/16 v2, 0x7d0

    const/4 v4, 0x0

    const/16 v5, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "DsaSetting"

    const-string/jumbo v1, "handleGetCallWaitingResponse: CW state successfully queried."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v0, v0, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/DsaSetting;->inputNumber1:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v1}, Lcom/android/phone/DsaSetting;->-get1(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v4, 0x0

    const/16 v5, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "DsaSetting"

    const-string/jumbo v1, "end of DSA..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/DsaSetting;->-set0(Lcom/android/phone/DsaSetting;Z)Z

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "com.android.phone.dsacomplete"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "isActivate"

    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v0}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v7, Lcom/android/phone/DsaResult;

    invoke-direct {v7}, Lcom/android/phone/DsaResult;-><init>()V

    invoke-virtual {v7}, Lcom/android/phone/DsaResult;->CheckDsaResult()Z

    move-result v11

    if-eqz v11, :cond_5

    const-string/jumbo v0, "DsaSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "End of DSA [Success] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v2}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v0}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dsa_is_activate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "DsaSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "End of DSA [Fail] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v2}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v0}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dsa_is_activate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "SelectSimStatus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string/jumbo v0, "SimStatus"

    const/4 v1, 0x0

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    sget v0, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dsa_is_activate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :pswitch_1
    sget v0, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dsa_is_activate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :pswitch_2
    sget v0, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dsa_is_activate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x258

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v0}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v0, v0, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/DsaSetting;->inputNumber1:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v1}, Lcom/android/phone/DsaSetting;->-get1(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v4, 0x3

    const/16 v5, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    const/4 v1, 0x3

    const/4 v2, 0x3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v0, v0, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/DsaSetting;->inputNumber1:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v1}, Lcom/android/phone/DsaSetting;->-get1(Lcom/android/phone/DsaSetting;)Lcom/android/phone/DsaSetting$ActivateHandler;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v4, 0x0

    const/16 v5, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v0, "DsaSetting"

    const-string/jumbo v1, "end of DSA..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "com.android.phone.dsacomplete"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "isActivate"

    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v0}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v7, Lcom/android/phone/DsaResult;

    invoke-direct {v7}, Lcom/android/phone/DsaResult;-><init>()V

    invoke-virtual {v7}, Lcom/android/phone/DsaResult;->CheckDsaResult()Z

    move-result v11

    if-eqz v11, :cond_b

    const-string/jumbo v0, "DsaSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "End of DSA [Success] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v2}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v0}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dsa_is_activate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    :cond_b
    const-string/jumbo v0, "DsaSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "End of DSA [Fail] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v2}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v0}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dsa_is_activate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "SelectSimStatus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string/jumbo v0, "SimStatus"

    const/4 v1, 0x0

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_3
    sget v0, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dsa_is_activate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :pswitch_4
    sget v0, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dsa_is_activate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :pswitch_5
    sget v0, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dsa_is_activate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 9

    const/16 v8, 0x7d0

    const/16 v7, 0x3e8

    const/16 v5, 0x64

    const/4 v6, 0x3

    const-string/jumbo v1, "DsaSetting"

    const-string/jumbo v2, "handleSetCFResponse()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DsaSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSetCFResponse: ar.exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/phone/DsaSetting;->-wrap0(Lcom/android/phone/DsaSetting;II)V

    :goto_0
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v7, :cond_2

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v4, 0xbb8

    invoke-virtual {p0, v4, v2, v7, v3}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    :goto_1
    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/android/phone/DsaSetting;->-wrap0(Lcom/android/phone/DsaSetting;II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x2

    invoke-static {v1, v3, v2}, Lcom/android/phone/DsaSetting;->-wrap0(Lcom/android/phone/DsaSetting;II)V

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v8, :cond_3

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v4, 0xfa0

    invoke-virtual {p0, v4, v2, v8, v3}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_1

    :cond_3
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v4, 0x12c

    invoke-virtual {p0, v4, v2, v5, v3}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v4, 0x190

    const/16 v5, 0xc8

    invoke-virtual {p0, v4, v2, v5, v3}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method private handleSetCallWaitingResponse(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, 0x258

    const/4 v5, 0x1

    const/16 v4, 0x1f4

    const-string/jumbo v1, "DsaSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSetCallWaitingResponse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "DsaSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSetCallWaitingResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v7, v2}, Lcom/android/phone/DsaSetting;->-wrap0(Lcom/android/phone/DsaSetting;II)V

    :cond_0
    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v1}, Lcom/android/phone/DsaSetting;->-get0(Lcom/android/phone/DsaSetting;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v3, 0x2bc

    invoke-virtual {p0, v3, v4, v4, v2}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v2, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v2}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2, v3}, Lcom/android/phone/DsaSetting;->-wrap0(Lcom/android/phone/DsaSetting;II)V

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v1}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v1

    if-ne v1, v5, :cond_2

    const-string/jumbo v1, "volte_call_waiting"

    invoke-static {v1, v5}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v1}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v1

    if-ne v1, v8, :cond_0

    const-string/jumbo v1, "volte_call_waiting"

    invoke-static {v1, v7}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v1}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v1

    if-ne v1, v5, :cond_4

    const-string/jumbo v1, "volte_call_waiting_slot2"

    invoke-static {v1, v5}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    :cond_4
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v1}, Lcom/android/phone/DsaSetting;->-get2(Lcom/android/phone/DsaSetting;)I

    move-result v1

    if-ne v1, v8, :cond_0

    const-string/jumbo v1, "volte_call_waiting_slot2"

    invoke-static {v1, v7}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v3, 0x2bc

    invoke-virtual {p0, v3, v4, v4, v2}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    invoke-static {v1}, Lcom/android/phone/DsaSetting;->-get0(Lcom/android/phone/DsaSetting;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim2:Lcom/android/internal/telephony/Phone;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v3, 0x320

    invoke-virtual {p0, v3, v6, v6, v2}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/phone/DsaSetting$ActivateHandler;->this$0:Lcom/android/phone/DsaSetting;

    iget-object v1, v1, Lcom/android/phone/DsaSetting;->phone_sim1:Lcom/android/internal/telephony/Phone;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v3, 0x320

    invoke-virtual {p0, v3, v6, v6, v2}, Lcom/android/phone/DsaSetting$ActivateHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string/jumbo v0, "DsaSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/DsaSetting$ActivateHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/DsaSetting$ActivateHandler;->handleGetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/phone/DsaSetting$ActivateHandler;->handleSetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/phone/DsaSetting$ActivateHandler;->handleGetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x258 -> :sswitch_2
        0x2bc -> :sswitch_3
        0x320 -> :sswitch_3
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_0
        0xbb8 -> :sswitch_1
        0xfa0 -> :sswitch_1
    .end sparse-switch
.end method
