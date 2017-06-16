.class Lcom/broadcom/fm/fmreceiver/FmNativehandler$3;
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

    iput-object p1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$3;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "FmNativehandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$3;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "mHandler :: operationHandler is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$3;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-static {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->-wrap2(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$3;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$3;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    iget v1, v1, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mFunctionalityMask:I

    invoke-static {v0, v1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->-wrap1(Lcom/broadcom/fm/fmreceiver/FmNativehandler;I)I

    goto :goto_0

    :pswitch_1
    sput-boolean v3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRadioIsOn:Z

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$3;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$3;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    :goto_1
    sget-boolean v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRadioIsOn:Z

    if-nez v0, :cond_1

    sput v3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->radio_state:I

    :cond_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$3;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    sget v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mFreq:I

    sget v2, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRssi:I

    sget v3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mSnr:I

    sget-boolean v4, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRadioIsOn:Z

    sget v5, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramType:I

    sget-object v6, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    sget-object v7, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    sget-object v8, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    sget-boolean v9, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mIsMute:Z

    invoke-static/range {v0 .. v10}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->-wrap8(Lcom/broadcom/fm/fmreceiver/FmNativehandler;IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$3;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-static {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->-wrap9(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$3;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-static {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->-wrap10(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "mHandler :: operationHandler is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$3;->this$0:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->onRadioOnEvent(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
