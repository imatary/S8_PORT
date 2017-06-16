.class Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;
.super Landroid/os/Handler;
.source "BluetoothDownloadableDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "initHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;


# direct methods
.method public constructor <init>(Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;->this$0:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initHandler: no such action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;->this$0:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-virtual {v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->initBluetoothDatabase()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
