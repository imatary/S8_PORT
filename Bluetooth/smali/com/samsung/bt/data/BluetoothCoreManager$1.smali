.class Lcom/samsung/bt/data/BluetoothCoreManager$1;
.super Landroid/os/Handler;
.source "BluetoothCoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bt/data/BluetoothCoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/bt/data/BluetoothCoreManager;


# direct methods
.method constructor <init>(Lcom/samsung/bt/data/BluetoothCoreManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/bt/data/BluetoothCoreManager$1;->this$0:Lcom/samsung/bt/data/BluetoothCoreManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothCoreManager$1;->this$0:Lcom/samsung/bt/data/BluetoothCoreManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v1, v2, v0}, Lcom/samsung/bt/data/BluetoothCoreManager;->insertCoreLog(I[B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
