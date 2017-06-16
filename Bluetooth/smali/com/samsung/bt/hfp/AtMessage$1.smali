.class Lcom/samsung/bt/hfp/AtMessage$1;
.super Landroid/os/Handler;
.source "AtMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bt/hfp/AtMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/bt/hfp/AtMessage;


# direct methods
.method constructor <init>(Lcom/samsung/bt/hfp/AtMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/bt/hfp/AtMessage$1;->this$0:Lcom/samsung/bt/hfp/AtMessage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/bt/hfp/AtMessage;->-wrap1(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/samsung/bt/hfp/AtMessage$1;->this$0:Lcom/samsung/bt/hfp/AtMessage;

    invoke-static {v3, v6}, Lcom/samsung/bt/hfp/AtMessage;->-set1(Lcom/samsung/bt/hfp/AtMessage;Z)Z

    goto :goto_0

    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/bt/hfp/AtMessage$1;->this$0:Lcom/samsung/bt/hfp/AtMessage;

    invoke-static {v3}, Lcom/samsung/bt/hfp/AtMessage;->-get0(Lcom/samsung/bt/hfp/AtMessage;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v3, 0xf0

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/samsung/bt/hfp/AtMessage$1;->this$0:Lcom/samsung/bt/hfp/AtMessage;

    invoke-static {v3}, Lcom/samsung/bt/hfp/AtMessage;->-get0(Lcom/samsung/bt/hfp/AtMessage;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/bt/hfp/AtMessage$1;->this$0:Lcom/samsung/bt/hfp/AtMessage;

    invoke-static {v3, v6}, Lcom/samsung/bt/hfp/AtMessage;->-set0(Lcom/samsung/bt/hfp/AtMessage;Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
