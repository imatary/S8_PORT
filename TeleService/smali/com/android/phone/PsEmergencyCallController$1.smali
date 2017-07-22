.class Lcom/android/phone/PsEmergencyCallController$1;
.super Landroid/os/Handler;
.source "PsEmergencyCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PsEmergencyCallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PsEmergencyCallController;


# direct methods
.method constructor <init>(Lcom/android/phone/PsEmergencyCallController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PsEmergencyCallController$1;->this$0:Lcom/android/phone/PsEmergencyCallController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/android/phone/PsEmergencyCallController;->-get0()Ljava/lang/String;

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

    :pswitch_0
    invoke-static {}, Lcom/android/phone/PsEmergencyCallController;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "default case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/android/phone/PsEmergencyCallController;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "recv EVENT_CALL_DISCONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController$1;->this$0:Lcom/android/phone/PsEmergencyCallController;

    invoke-static {v0, p1}, Lcom/android/phone/PsEmergencyCallController;->-wrap1(Lcom/android/phone/PsEmergencyCallController;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/phone/PsEmergencyCallController;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "recv EVENT_PHONE_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController$1;->this$0:Lcom/android/phone/PsEmergencyCallController;

    invoke-static {v0}, Lcom/android/phone/PsEmergencyCallController;->-wrap2(Lcom/android/phone/PsEmergencyCallController;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/phone/PsEmergencyCallController;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "recv EVENT_FALLBACK_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController$1;->this$0:Lcom/android/phone/PsEmergencyCallController;

    invoke-static {v0}, Lcom/android/phone/PsEmergencyCallController;->-wrap3(Lcom/android/phone/PsEmergencyCallController;)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/phone/PsEmergencyCallController;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "recv EVENT_FALLBACK_CALL_DELAYED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController$1;->this$0:Lcom/android/phone/PsEmergencyCallController;

    invoke-static {v0}, Lcom/android/phone/PsEmergencyCallController;->-wrap4(Lcom/android/phone/PsEmergencyCallController;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
