.class Lcom/android/phone/ota/OtaInCallScreen$1;
.super Landroid/os/Handler;
.source "OtaInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ota/OtaInCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ota/OtaInCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/ota/OtaInCallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ota/OtaInCallScreen$1;->this$0:Lcom/android/phone/ota/OtaInCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen$1;->this$0:Lcom/android/phone/ota/OtaInCallScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/ota/OtaInCallScreen;->-wrap0(Lcom/android/phone/ota/OtaInCallScreen;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ota/OtaInCallScreen;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen$1;->this$0:Lcom/android/phone/ota/OtaInCallScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handler: ignoring message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; we\'re destroyed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/ota/OtaInCallScreen;->-wrap0(Lcom/android/phone/ota/OtaInCallScreen;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen$1;->this$0:Lcom/android/phone/ota/OtaInCallScreen;

    invoke-static {v0}, Lcom/android/phone/ota/OtaInCallScreen;->-wrap2(Lcom/android/phone/ota/OtaInCallScreen;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen$1;->this$0:Lcom/android/phone/ota/OtaInCallScreen;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-static {v1, v0}, Lcom/android/phone/ota/OtaInCallScreen;->-wrap1(Lcom/android/phone/ota/OtaInCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen$1;->this$0:Lcom/android/phone/ota/OtaInCallScreen;

    invoke-static {v0}, Lcom/android/phone/ota/OtaInCallScreen;->-get0(Lcom/android/phone/ota/OtaInCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen$1;->this$0:Lcom/android/phone/ota/OtaInCallScreen;

    invoke-static {v0}, Lcom/android/phone/ota/OtaInCallScreen;->-get0(Lcom/android/phone/ota/OtaInCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->onOtaCloseSpcNotice()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen$1;->this$0:Lcom/android/phone/ota/OtaInCallScreen;

    invoke-static {v0}, Lcom/android/phone/ota/OtaInCallScreen;->-get0(Lcom/android/phone/ota/OtaInCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen$1;->this$0:Lcom/android/phone/ota/OtaInCallScreen;

    invoke-static {v0}, Lcom/android/phone/ota/OtaInCallScreen;->-get0(Lcom/android/phone/ota/OtaInCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->onOtaCloseFailureNotice()V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen$1;->this$0:Lcom/android/phone/ota/OtaInCallScreen;

    invoke-static {v0}, Lcom/android/phone/ota/OtaInCallScreen;->-wrap3(Lcom/android/phone/ota/OtaInCallScreen;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x76 -> :sswitch_2
        0x77 -> :sswitch_3
        0x7a -> :sswitch_4
    .end sparse-switch
.end method
