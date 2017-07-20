.class Lcom/android/phone/nwservice/CallWaiting$2;
.super Landroid/os/Handler;
.source "CallWaiting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nwservice/CallWaiting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/CallWaiting;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/CallWaiting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/CallWaiting$2;->this$0:Lcom/android/phone/nwservice/CallWaiting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/16 v5, 0xc8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CallWaiting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/phone/nwservice/CallWaiting;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/mGetCallWaitingComplete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage() msg.what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/nwservice/CallWaiting$2;->this$0:Lcom/android/phone/nwservice/CallWaiting;

    const/16 v3, 0xfa

    invoke-virtual {v2, v3}, Lcom/android/phone/nwservice/CallWaiting;->removeDialog(I)V

    iget-object v2, p0, Lcom/android/phone/nwservice/CallWaiting$2;->this$0:Lcom/android/phone/nwservice/CallWaiting;

    iget-boolean v2, v2, Lcom/android/phone/nwservice/CallWaiting;->mIsForeground:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/nwservice/CallWaiting$2;->this$0:Lcom/android/phone/nwservice/CallWaiting;

    invoke-static {v2, v0}, Lcom/android/phone/nwservice/CallWaiting;->-wrap0(Lcom/android/phone/nwservice/CallWaiting;Landroid/os/AsyncResult;)I

    move-result v1

    const-string/jumbo v2, "mGetCallWaitingComplete: CW query done, all call features queried."

    invoke-static {v2}, Lcom/android/phone/nwservice/CallWaiting;->-wrap2(Ljava/lang/String;)V

    if-ne v1, v5, :cond_2

    iget-object v2, p0, Lcom/android/phone/nwservice/CallWaiting$2;->this$0:Lcom/android/phone/nwservice/CallWaiting;

    invoke-virtual {v2, v5}, Lcom/android/phone/nwservice/CallWaiting;->showDialog(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x384

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/nwservice/CallWaiting$2;->this$0:Lcom/android/phone/nwservice/CallWaiting;

    const/16 v3, 0x2bc

    invoke-virtual {v2, v3}, Lcom/android/phone/nwservice/CallWaiting;->showDialog(I)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x2ee

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/nwservice/CallWaiting$2;->this$0:Lcom/android/phone/nwservice/CallWaiting;

    const/16 v3, 0x14a

    invoke-virtual {v2, v3}, Lcom/android/phone/nwservice/CallWaiting;->showDialog(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_0
    .end packed-switch
.end method
