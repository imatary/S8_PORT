.class Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v2, "PhoneInterfaceManager"

    const-string/jumbo v3, "[NSRI_SMS] [EVENT_ENCRYPT_SMS]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    monitor-enter v3

    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v4, v2}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->-set1(Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;[B)[B

    :goto_1
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->-set0(Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;Z)Z

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit v3

    goto :goto_0

    :cond_0
    :try_start_1
    const-string/jumbo v2, "PhoneInterfaceManager"

    const-string/jumbo v4, "[NSRI_SMS] Encryp Fail!!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_1
    const-string/jumbo v2, "PhoneInterfaceManager"

    const-string/jumbo v3, "[NSRI_SMS] [EVENT_DECRYPT_SMS]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    monitor-enter v3

    :try_start_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v4, v2}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->-set1(Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;[B)[B

    :goto_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->-set0(Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;Z)Z

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_3
    const-string/jumbo v2, "PhoneInterfaceManager"

    const-string/jumbo v4, "[NSRI_SMS] Decrypt Fail!!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :pswitch_2
    const-string/jumbo v2, "PhoneInterfaceManager"

    const-string/jumbo v3, "[NSRI_SMS] [EVENT_DECRYPT_SMS_INTXSIDE]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    monitor-enter v3

    :try_start_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v4, v2}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->-set1(Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;[B)[B

    :goto_4
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->-set0(Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;Z)Z

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    :try_start_5
    const-string/jumbo v2, "PhoneInterfaceManager"

    const-string/jumbo v4, "[NSRI_SMS] DecryptTx Fail!!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :pswitch_3
    const-string/jumbo v2, "PhoneInterfaceManager"

    const-string/jumbo v3, "[NSRI_SMS] [EVENT_NSRI_SUSIM_STATE_NOTI]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    monitor-enter v3

    :try_start_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    const-string/jumbo v2, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[NSRI_SMS] ar.result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v4, v2}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->-set1(Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;[B)[B

    :goto_5
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->-set0(Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;Z)Z

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager$SmsNSRI;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/16 :goto_2

    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    :try_start_7
    const-string/jumbo v2, "PhoneInterfaceManager"

    const-string/jumbo v4, "[NSRI_SMS] Encryp Fail!!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
