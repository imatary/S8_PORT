.class Lcom/android/phone/AnswerMemoRecorder$1;
.super Landroid/os/Handler;
.source "AnswerMemoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AnswerMemoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AnswerMemoRecorder;


# direct methods
.method constructor <init>(Lcom/android/phone/AnswerMemoRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/AnswerMemoRecorder$1;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->displayAnswerMessageToast(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder$1;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v1}, Lcom/android/phone/AnswerMemoRecorder;->-get4(Lcom/android/phone/AnswerMemoRecorder;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/AsyncResult;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v3, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder$1;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v1}, Lcom/android/phone/AnswerMemoRecorder;->-get6(Lcom/android/phone/AnswerMemoRecorder;)Landroid/os/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x12c -> :sswitch_0
    .end sparse-switch
.end method
