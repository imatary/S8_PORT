.class Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$1;
.super Landroid/os/Handler;
.source "PhoneNumberLocatorUpdateServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    const-string/jumbo v1, "Check DB, time out!!!"

    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->-get1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;)Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$ICheckListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->-get1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;)Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$ICheckListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$ICheckListener;->onTimeOut()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    const-string/jumbo v1, "Update DB, time out!!!"

    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->-get3(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;)Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$IUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->-get3(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;)Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$IUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$IUpdateListener;->onTimeOut()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
