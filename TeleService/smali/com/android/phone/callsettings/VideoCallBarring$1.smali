.class Lcom/android/phone/callsettings/VideoCallBarring$1;
.super Landroid/os/Handler;
.source "VideoCallBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/VideoCallBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/VideoCallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/16 v8, 0x64

    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/16 v1, 0x64

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "##OSK## "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseCBHandler() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", msg.what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->-get17(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v2

    if-ne v2, v7, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/VideoCallBarring;->-set5(Lcom/android/phone/callsettings/VideoCallBarring;I)I

    :cond_2
    return-void

    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->-wrap1(Lcom/android/phone/callsettings/VideoCallBarring;Landroid/os/AsyncResult;I)I

    move-result v1

    if-ne v1, v8, :cond_4

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->-get17(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->-get17(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v2

    if-ne v2, v7, :cond_1

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    sget-object v3, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->-wrap8(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    sget-object v3, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-static {v2, v3, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->-wrap9(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->-wrap0(Lcom/android/phone/callsettings/VideoCallBarring;Landroid/os/AsyncResult;)I

    move-result v1

    if-eq v1, v8, :cond_6

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    sget-object v3, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-static {v2, v3, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->-wrap9(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->-get4(Lcom/android/phone/callsettings/VideoCallBarring;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->-get17(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v2

    if-ge v2, v6, :cond_5

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->-get17(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->-set5(Lcom/android/phone/callsettings/VideoCallBarring;I)I

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    sget-object v3, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->-wrap8(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->-wrap6(Lcom/android/phone/callsettings/VideoCallBarring;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/VideoCallBarring;->-set1(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/VideoCallBarring;->-set5(Lcom/android/phone/callsettings/VideoCallBarring;I)I

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    sget-object v3, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->-wrap8(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->-get4(Lcom/android/phone/callsettings/VideoCallBarring;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->-get17(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v2

    if-ge v2, v6, :cond_7

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->-get17(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->-set5(Lcom/android/phone/callsettings/VideoCallBarring;I)I

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->-wrap6(Lcom/android/phone/callsettings/VideoCallBarring;)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/VideoCallBarring;->-set1(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$1;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/VideoCallBarring;->-set5(Lcom/android/phone/callsettings/VideoCallBarring;I)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
