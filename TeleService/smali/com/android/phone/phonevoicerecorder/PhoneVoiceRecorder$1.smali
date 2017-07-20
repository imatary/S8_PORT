.class Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$1;
.super Landroid/os/Handler;
.source "PhoneVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;


# direct methods
.method constructor <init>(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-wrap0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get5(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v4, v2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get8(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/os/RegistrantList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x12c -> :sswitch_0
    .end sparse-switch
.end method
