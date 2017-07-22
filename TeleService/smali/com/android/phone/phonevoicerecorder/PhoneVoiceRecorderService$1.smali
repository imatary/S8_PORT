.class Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$1;
.super Landroid/os/Handler;
.source "PhoneVoiceRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;


# direct methods
.method constructor <init>(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$1;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$1;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;->-wrap0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$1;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;->-wrap1(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$1;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;

    const-string/jumbo v1, "INFO_STATE_CHANGED"

    invoke-static {v0, v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;->-wrap0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService$1;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;->-wrap1(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorderService;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
