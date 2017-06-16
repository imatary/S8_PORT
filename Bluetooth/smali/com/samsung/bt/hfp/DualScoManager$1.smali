.class Lcom/samsung/bt/hfp/DualScoManager$1;
.super Landroid/os/Handler;
.source "DualScoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bt/hfp/DualScoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/bt/hfp/DualScoManager;


# direct methods
.method constructor <init>(Lcom/samsung/bt/hfp/DualScoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/bt/hfp/DualScoManager$1;->this$0:Lcom/samsung/bt/hfp/DualScoManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "DualScoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unhandled message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager$1;->this$0:Lcom/samsung/bt/hfp/DualScoManager;

    iget-object v1, v1, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
