.class Lcom/android/services/telephony/vt/SecVideoConnection$1;
.super Landroid/os/Handler;
.source "SecVideoConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/vt/SecVideoConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/vt/SecVideoConnection;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/vt/SecVideoConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/vt/SecVideoConnection$1;->this$0:Lcom/android/services/telephony/vt/SecVideoConnection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string/jumbo v0, "PSTNVT-SecVideoConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection$1;->this$0:Lcom/android/services/telephony/vt/SecVideoConnection;

    iget-object v1, p0, Lcom/android/services/telephony/vt/SecVideoConnection$1;->this$0:Lcom/android/services/telephony/vt/SecVideoConnection;

    invoke-static {v1}, Lcom/android/services/telephony/vt/SecVideoConnection;->-get0(Lcom/android/services/telephony/vt/SecVideoConnection;)Lcom/android/services/telephony/vt/SecVideoProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/vt/SecVideoConnection;->onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection$1;->this$0:Lcom/android/services/telephony/vt/SecVideoConnection;

    iget-object v1, p0, Lcom/android/services/telephony/vt/SecVideoConnection$1;->this$0:Lcom/android/services/telephony/vt/SecVideoConnection;

    invoke-static {v1}, Lcom/android/services/telephony/vt/SecVideoConnection;->-get1(Lcom/android/services/telephony/vt/SecVideoConnection;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/vt/SecVideoConnection;->onVideoStateChanged(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
