.class Lcom/android/phone/CdmaCallForwardOptions$1;
.super Landroid/os/Handler;
.source "CdmaCallForwardOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaCallForwardOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaCallForwardOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaCallForwardOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CdmaCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->-get0(Lcom/android/phone/CdmaCallForwardOptions;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->-get2(Lcom/android/phone/CdmaCallForwardOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    invoke-static {v2}, Lcom/android/phone/CdmaCallForwardOptions;->-get1(Lcom/android/phone/CdmaCallForwardOptions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions$1;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->-wrap2(Lcom/android/phone/CdmaCallForwardOptions;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x258 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch
.end method
