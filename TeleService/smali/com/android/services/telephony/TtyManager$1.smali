.class Lcom/android/services/telephony/TtyManager$1;
.super Landroid/os/Handler;
.source "TtyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TtyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TtyManager;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TtyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handlemessage() msg.what : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string/jumbo v4, "got setTtyMode response"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string/jumbo v4, "setTTYMode exception: %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    aput-object v6, v5, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    invoke-static {v3}, Lcom/android/services/telephony/TtyManager;->-get2(Lcom/android/services/telephony/TtyManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/TtyManager$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string/jumbo v4, "got queryTTYMode response"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string/jumbo v4, "queryTTYMode exception: %s"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v8

    invoke-static {v3}, Lcom/android/services/telephony/TtyManager;->-wrap0(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    invoke-static {v3}, Lcom/android/services/telephony/TtyManager;->-get3(Lcom/android/services/telephony/TtyManager;)I

    move-result v3

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string/jumbo v4, "setting TTY mode failed, attempted %d, got: %d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    invoke-static {v6}, Lcom/android/services/telephony/TtyManager;->-get3(Lcom/android/services/telephony/TtyManager;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string/jumbo v4, "setting TTY mode to %d succeeded"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_2
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    invoke-static {v3}, Lcom/android/services/telephony/TtyManager;->-get0(Lcom/android/services/telephony/TtyManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v2

    :cond_3
    iget-object v3, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    invoke-static {v3, v2}, Lcom/android/services/telephony/TtyManager;->-wrap1(Lcom/android/services/telephony/TtyManager;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
