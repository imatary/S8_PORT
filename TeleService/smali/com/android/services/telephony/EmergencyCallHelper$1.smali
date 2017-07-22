.class Lcom/android/services/telephony/EmergencyCallHelper$1;
.super Landroid/os/Handler;
.source "EmergencyCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/EmergencyCallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/EmergencyCallHelper;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/EmergencyCallHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/EmergencyCallHelper$1;->this$0:Lcom/android/services/telephony/EmergencyCallHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v3, "handleMessage: unexpected message: %d."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Phone;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v3, p0, Lcom/android/services/telephony/EmergencyCallHelper$1;->this$0:Lcom/android/services/telephony/EmergencyCallHelper;

    invoke-static {v3, v2, v1}, Lcom/android/services/telephony/EmergencyCallHelper;->-wrap3(Lcom/android/services/telephony/EmergencyCallHelper;Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/services/telephony/EmergencyCallHelper$1;->this$0:Lcom/android/services/telephony/EmergencyCallHelper;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/ServiceState;

    invoke-static {v4, v3}, Lcom/android/services/telephony/EmergencyCallHelper;->-wrap2(Lcom/android/services/telephony/EmergencyCallHelper;Landroid/telephony/ServiceState;)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/services/telephony/EmergencyCallHelper$1;->this$0:Lcom/android/services/telephony/EmergencyCallHelper;

    invoke-static {v3}, Lcom/android/services/telephony/EmergencyCallHelper;->-wrap1(Lcom/android/services/telephony/EmergencyCallHelper;)V

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/android/services/telephony/EmergencyCallHelper$1;->this$0:Lcom/android/services/telephony/EmergencyCallHelper;

    invoke-static {v3}, Lcom/android/services/telephony/EmergencyCallHelper;->-wrap0(Lcom/android/services/telephony/EmergencyCallHelper;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
