.class Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[NSRI_Messenger] EVENT_MSG = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

    monitor-enter v3

    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v4, v2}, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->-set1(Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;[B)[B

    :goto_1
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->-set0(Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;Z)Z

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager$MessengerNSRI;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_0

    :cond_0
    :try_start_1
    const-string/jumbo v2, "PhoneInterfaceManager"

    const-string/jumbo v4, "[NSRI_Messenger] Encryp Fail!!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
