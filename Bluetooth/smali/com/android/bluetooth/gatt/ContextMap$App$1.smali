.class Lcom/android/bluetooth/gatt/ContextMap$App$1;
.super Landroid/os/Handler;
.source "ContextMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/gatt/ContextMap$App;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/gatt/ContextMap$App;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ContextMap$App;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ContextMap$App$1;->this$1:Lcom/android/bluetooth/gatt/ContextMap$App;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ContextMap$App$1;->this$1:Lcom/android/bluetooth/gatt/ContextMap$App;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/le/ScanResult;

    invoke-static {v4, v3}, Lcom/android/bluetooth/gatt/ContextMap$App;->-set0(Lcom/android/bluetooth/gatt/ContextMap$App;Landroid/bluetooth/le/ScanResult;)Landroid/bluetooth/le/ScanResult;

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap$App$1;->this$1:Lcom/android/bluetooth/gatt/ContextMap$App;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/ContextMap$App$1;->this$1:Lcom/android/bluetooth/gatt/ContextMap$App;

    invoke-static {v4}, Lcom/android/bluetooth/gatt/ContextMap$App;->-get0(Lcom/android/bluetooth/gatt/ContextMap$App;)Landroid/bluetooth/le/ScanResult;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/gatt/ContextMap$App;->sendClientScanResult(Landroid/bluetooth/le/ScanResult;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap$App$1;->this$1:Lcom/android/bluetooth/gatt/ContextMap$App;

    iget v4, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v5, "adv_data"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/bluetooth/gatt/ContextMap$App;->sendServerScanResult(Ljava/lang/String;I[B)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ContextMap$App$1;->this$1:Lcom/android/bluetooth/gatt/ContextMap$App;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/le/ScanResult;

    invoke-static {v4, v3}, Lcom/android/bluetooth/gatt/ContextMap$App;->-set0(Lcom/android/bluetooth/gatt/ContextMap$App;Landroid/bluetooth/le/ScanResult;)Landroid/bluetooth/le/ScanResult;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v6, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap$App$1;->this$1:Lcom/android/bluetooth/gatt/ContextMap$App;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/ContextMap$App$1;->this$1:Lcom/android/bluetooth/gatt/ContextMap$App;

    invoke-static {v4}, Lcom/android/bluetooth/gatt/ContextMap$App;->-get0(Lcom/android/bluetooth/gatt/ContextMap$App;)Landroid/bluetooth/le/ScanResult;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/android/bluetooth/gatt/ContextMap$App;->sendFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap$App$1;->this$1:Lcom/android/bluetooth/gatt/ContextMap$App;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/ContextMap$App$1;->this$1:Lcom/android/bluetooth/gatt/ContextMap$App;

    invoke-static {v4}, Lcom/android/bluetooth/gatt/ContextMap$App;->-get0(Lcom/android/bluetooth/gatt/ContextMap$App;)Landroid/bluetooth/le/ScanResult;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/android/bluetooth/gatt/ContextMap$App;->sendFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
