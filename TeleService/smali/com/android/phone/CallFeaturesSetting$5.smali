.class Lcom/android/phone/CallFeaturesSetting$5;
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

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    const-string/jumbo v5, "CallFeaturesSetting"

    const-string/jumbo v6, "All VM provider related changes done"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->-get1(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const/16 v6, 0x259

    invoke-static {v5, v6}, Lcom/android/phone/CallFeaturesSetting;->-wrap3(Lcom/android/phone/CallFeaturesSetting;I)V

    :cond_1
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->-wrap5(Lcom/android/phone/CallFeaturesSetting;)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v7, v4}, Lcom/android/phone/CallFeaturesSetting;->-set2(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->-wrap2(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    move v5, v6

    :cond_3
    invoke-static {v7, v5}, Lcom/android/phone/CallFeaturesSetting;->-set1(Lcom/android/phone/CallFeaturesSetting;Z)Z

    const-string/jumbo v5, "CallFeaturesSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "VM change complete msg, VM change done = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->-get5(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->-get1(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_4

    const-string/jumbo v7, "CallFeaturesSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error in setting fwd# "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_1
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->-wrap0(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->-wrap1(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    const-string/jumbo v5, "CallFeaturesSetting"

    const-string/jumbo v6, "Overall fwd changes completed ok, starting vm change"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->-wrap8(Lcom/android/phone/CallFeaturesSetting;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v7, "CallFeaturesSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Success in setting fwd# "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string/jumbo v7, "CallFeaturesSetting"

    const-string/jumbo v8, "Overall fwd changes completed in failure. Check if we need to try rollback for some settings."

    invoke-static {v7, v8, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v7, v5}, Lcom/android/phone/CallFeaturesSetting;->-set0(Lcom/android/phone/CallFeaturesSetting;Z)Z

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->-get1(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_6

    const-string/jumbo v5, "CallFeaturesSetting"

    const-string/jumbo v7, "Rollback will be required"

    invoke-static {v5, v7, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v5, v6}, Lcom/android/phone/CallFeaturesSetting;->-set0(Lcom/android/phone/CallFeaturesSetting;Z)Z

    :cond_7
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->-get2(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "CallFeaturesSetting"

    const-string/jumbo v7, "No rollback needed."

    invoke-static {v5, v7, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
