.class Lcom/broadcom/fm/fmreceiver/FmNativehandler$1;
.super Landroid/os/Handler;
.source "FmNativehandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/fm/fmreceiver/FmNativehandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;


# direct methods
.method constructor <init>(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)V
    .locals 0

    iput-object p1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$1;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v0, "FmNativehandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handling UNKNOWN CALLBACK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$1;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->-wrap4(Lcom/broadcom/fm/fmreceiver/FmNativehandler;I)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$1;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-static {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->-wrap3(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)V

    sput v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->radio_state:I

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$1;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move-object v7, v6

    move-object v8, v6

    move v9, v1

    move v10, v1

    invoke-static/range {v0 .. v10}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->-wrap8(Lcom/broadcom/fm/fmreceiver/FmNativehandler;IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$1;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-static {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->-wrap3(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)V

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$1;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->-wrap0(Lcom/broadcom/fm/fmreceiver/FmNativehandler;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->radio_state:I

    goto :goto_0

    :catch_0
    move-exception v11

    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v2, "OPERATION_TIMEOUT:: disableFmNative exception"

    invoke-static {v0, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "Handling OPERATION_STATUS_EVENT_CALLBACK: calls sendStatusEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$1;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-static {v12}, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->-get0(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)I

    move-result v1

    invoke-static {v12}, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->-get7(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)I

    move-result v2

    invoke-static {v12}, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->-get8(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)I

    move-result v3

    invoke-static {v12}, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->-get2(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)Z

    move-result v4

    invoke-static {v12}, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->-get4(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)I

    move-result v5

    invoke-static {v12}, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->-get3(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v12}, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->-get6(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->-get5(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v12}, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;->-get1(Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;)Z

    move-result v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-static/range {v0 .. v10}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->-wrap8(Lcom/broadcom/fm/fmreceiver/FmNativehandler;IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "Handling OPERATION_RDS_DATA_EVENT_CALLBACK: calls sendRdsDataEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$1;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->-wrap6(Lcom/broadcom/fm/fmreceiver/FmNativehandler;IILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "Handling OPERATION_RDS_RTPLUS_EVENT_CALLBACK: calls sendRdsRTPlusEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$1;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;

    invoke-static {v1, v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->-wrap7(Lcom/broadcom/fm/fmreceiver/FmNativehandler;Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;)V

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "Handling OPERATION_RDS_AF_EVENT_CALLBACK: calls sendRdsAFEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$1;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->-wrap5(Lcom/broadcom/fm/fmreceiver/FmNativehandler;I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
    .end sparse-switch
.end method
