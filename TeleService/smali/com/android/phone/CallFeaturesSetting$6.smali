.class Lcom/android/phone/CallFeaturesSetting$6;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

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
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->-get5(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->-get6(Lcom/android/phone/CallFeaturesSetting;)Landroid/os/AsyncResult;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->-get2(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->-wrap0(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v2

    :goto_1
    move v0, v2

    :goto_2
    if-eqz v0, :cond_1

    const-string/jumbo v2, "CallFeaturesSetting"

    const-string/jumbo v3, "All VM reverts done"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const/16 v3, 0x25b

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->-wrap3(Lcom/android/phone/CallFeaturesSetting;I)V

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->-wrap6(Lcom/android/phone/CallFeaturesSetting;)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v2, v1}, Lcom/android/phone/CallFeaturesSetting;->-set2(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    const-string/jumbo v2, "CallFeaturesSetting"

    const-string/jumbo v3, "VM revert complete msg"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->-get1(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "CallFeaturesSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in reverting fwd# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const-string/jumbo v2, "CallFeaturesSetting"

    const-string/jumbo v3, "FWD revert complete msg "

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v2, "CallFeaturesSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Success in reverting fwd# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
