.class Lcom/samsung/bt/data/BluetoothDataManager$1;
.super Landroid/os/Handler;
.source "BluetoothDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bt/data/BluetoothDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/bt/data/BluetoothDataManager;


# direct methods
.method constructor <init>(Lcom/samsung/bt/data/BluetoothDataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/bt/data/BluetoothDataManager$1;->this$0:Lcom/samsung/bt/data/BluetoothDataManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLinktype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/bt/data/BluetoothDataManager$1;->this$0:Lcom/samsung/bt/data/BluetoothDataManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/bt/data/BluetoothDataManager;->insertLogforBLE(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/bt/data/BluetoothDataManager$1;->this$0:Lcom/samsung/bt/data/BluetoothDataManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/bt/data/BluetoothDataManager;->insertLog(II)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager$1;->this$0:Lcom/samsung/bt/data/BluetoothDataManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/bt/data/BluetoothDataManager;->-wrap0(Lcom/samsung/bt/data/BluetoothDataManager;II[B)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager$1;->this$0:Lcom/samsung/bt/data/BluetoothDataManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/bt/data/BluetoothDataManager;->insertLeScanLog(IJ)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager$1;->this$0:Lcom/samsung/bt/data/BluetoothDataManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/bt/data/BluetoothDataManager;->insertLeAbuseConnLog(ILjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
