.class Lcom/android/phone/PhoneInterfaceManager$CommToRILThread$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v2, "PhoneInterfaceManager"

    const-string/jumbo v3, "[EVENT_GET_RIL_INFO]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    monitor-enter v3

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2, v4}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->-set1(Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->-set0(Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;Z)Z

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;->-set1(Lcom/android/phone/PhoneInterfaceManager$CommToRILThread;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
