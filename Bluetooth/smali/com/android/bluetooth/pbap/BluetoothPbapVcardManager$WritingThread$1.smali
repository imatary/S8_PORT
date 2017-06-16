.class Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;
.super Landroid/os/Handler;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;->this$1:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;->this$1:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->-get1(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;->this$1:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->-get1(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;->this$1:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;->this$1:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->-get1(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->-set0(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;->this$1:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->-get1(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;->this$1:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->-get0(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;)Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;->this$1:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;

    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->-get2(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "BluetoothPbapVcardManager"

    const-string/jumbo v1, "WritingThread onEntryCreated return false!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;->this$1:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->mWritingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;->this$1:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;

    iget-object v1, v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->mWritingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;->this$1:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-static {v0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->-set0(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_1
    const-string/jumbo v0, "PBVCM -- WringThread end"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;->this$1:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->-get0(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;)Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;->this$1:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->-get0(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;)Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;->this$1:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->-get1(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread$1;->this$1:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;->-get1(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$WritingThread;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
