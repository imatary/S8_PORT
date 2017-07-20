.class Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$2;
.super Landroid/os/Handler;
.source "NetworkModeMultiSimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->-get0(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Handler: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    aget v1, v2, v3

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->-get0(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[Other SIM] get preferred network type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    if-ne v1, v4, :cond_0

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->-set0(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;Z)Z

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->-get0(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[Other SIM] get preferred network type, exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;

    invoke-static {v2, v3}, Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;->-set0(Lcom/android/phone/mobilenetworks/NetworkModeMultiSimController;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
