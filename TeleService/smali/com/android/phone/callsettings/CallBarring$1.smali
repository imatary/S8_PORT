.class Lcom/android/phone/callsettings/CallBarring$1;
.super Landroid/os/Handler;
.source "CallBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/CallBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/16 v9, 0x64

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v1, 0x64

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const-string/jumbo v2, "CallBarring"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseCBHandler() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", msg.what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/CallBarring;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "CallBarring"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseCBHandler() Fragment finished. Ignore handler message :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", msg.what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-get21(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v2

    if-ne v2, v8, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->-set14(Lcom/android/phone/callsettings/CallBarring;I)I

    :cond_2
    return-void

    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v0, v3}, Lcom/android/phone/callsettings/CallBarring;->-wrap1(Lcom/android/phone/callsettings/CallBarring;Landroid/os/AsyncResult;I)I

    move-result v1

    if-ne v1, v9, :cond_4

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-get21(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-get21(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v2

    if-ne v2, v8, :cond_1

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    sget-object v3, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/CallBarring;->-wrap8(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "feature_sbm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2, v6}, Lcom/android/phone/callsettings/CallBarring;->-set6(Lcom/android/phone/callsettings/CallBarring;Z)Z

    const-string/jumbo v2, "CallBarring"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EVENT_SET_COMPLETE. status is not MSG_OK, mCBError is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v4}, Lcom/android/phone/callsettings/CallBarring;->-get3(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_5
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    sget-object v3, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-static {v2, v3, v1}, Lcom/android/phone/callsettings/CallBarring;->-wrap9(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2, v0}, Lcom/android/phone/callsettings/CallBarring;->-wrap0(Lcom/android/phone/callsettings/CallBarring;Landroid/os/AsyncResult;)I

    move-result v1

    if-eq v1, v9, :cond_9

    const-string/jumbo v2, "feature_sbm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2, v6}, Lcom/android/phone/callsettings/CallBarring;->-set6(Lcom/android/phone/callsettings/CallBarring;Z)Z

    const-string/jumbo v2, "CallBarring"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EVENT_QUERY_COMPLETE. status is not MSG_OK, mCBError is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v4}, Lcom/android/phone/callsettings/CallBarring;->-get3(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_6
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    sget-object v3, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-static {v2, v3, v1}, Lcom/android/phone/callsettings/CallBarring;->-wrap9(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-get5(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-get21(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v2

    if-ge v2, v7, :cond_7

    const-string/jumbo v2, "feature_sbm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->-set7(Lcom/android/phone/callsettings/CallBarring;Z)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->-set14(Lcom/android/phone/callsettings/CallBarring;I)I

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-get21(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/CallBarring;->-set14(Lcom/android/phone/callsettings/CallBarring;I)I

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    sget-object v3, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/CallBarring;->-wrap8(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-wrap6(Lcom/android/phone/callsettings/CallBarring;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    sget-object v3, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/CallBarring;->-wrap8(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-get5(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-get21(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v2

    if-ge v2, v7, :cond_a

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-get21(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/CallBarring;->-set14(Lcom/android/phone/callsettings/CallBarring;I)I

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-wrap6(Lcom/android/phone/callsettings/CallBarring;)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->-set7(Lcom/android/phone/callsettings/CallBarring;Z)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->-set14(Lcom/android/phone/callsettings/CallBarring;I)I

    const-string/jumbo v2, "feature_sbm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-get18(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-get9(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_b

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-get9(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/CallBarring;->-set9(Lcom/android/phone/callsettings/CallBarring;I)I

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-wrap6(Lcom/android/phone/callsettings/CallBarring;)V

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->-set2(Lcom/android/phone/callsettings/CallBarring;Z)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->-set3(Lcom/android/phone/callsettings/CallBarring;Z)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->-set4(Lcom/android/phone/callsettings/CallBarring;Z)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->-set13(Lcom/android/phone/callsettings/CallBarring;Z)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->-set9(Lcom/android/phone/callsettings/CallBarring;I)I

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-get10(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-get9(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v2

    if-ge v2, v7, :cond_d

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-get9(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/CallBarring;->-set9(Lcom/android/phone/callsettings/CallBarring;I)I

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->-wrap6(Lcom/android/phone/callsettings/CallBarring;)V

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->-set1(Lcom/android/phone/callsettings/CallBarring;Z)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->-set5(Lcom/android/phone/callsettings/CallBarring;Z)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->-set10(Lcom/android/phone/callsettings/CallBarring;Z)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->-set9(Lcom/android/phone/callsettings/CallBarring;I)I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
