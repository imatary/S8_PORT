.class Lcom/android/phone/WfcEmergencyCallController$2;
.super Landroid/os/Handler;
.source "WfcEmergencyCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/WfcEmergencyCallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/WfcEmergencyCallController;


# direct methods
.method constructor <init>(Lcom/android/phone/WfcEmergencyCallController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/WfcEmergencyCallController$2;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/android/phone/WfcEmergencyCallController;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHandler.handleMessage(): msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/android/phone/WfcEmergencyCallController;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "default case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/phone/WfcEmergencyCallController;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "recv EVENT_CALL_DISCONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController$2;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    invoke-static {v0, p1}, Lcom/android/phone/WfcEmergencyCallController;->-wrap3(Lcom/android/phone/WfcEmergencyCallController;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/phone/WfcEmergencyCallController;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "recv EVENT_PHONE_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController$2;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    invoke-static {v0}, Lcom/android/phone/WfcEmergencyCallController;->-wrap4(Lcom/android/phone/WfcEmergencyCallController;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController$2;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    invoke-static {v0}, Lcom/android/phone/WfcEmergencyCallController;->-wrap2(Lcom/android/phone/WfcEmergencyCallController;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController$2;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    invoke-static {v0}, Lcom/android/phone/WfcEmergencyCallController;->-wrap5(Lcom/android/phone/WfcEmergencyCallController;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController$2;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/WfcEmergencyCallController;->-wrap6(Lcom/android/phone/WfcEmergencyCallController;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
