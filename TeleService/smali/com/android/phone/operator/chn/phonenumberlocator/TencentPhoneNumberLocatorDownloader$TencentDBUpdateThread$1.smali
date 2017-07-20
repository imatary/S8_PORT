.class Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread$1;
.super Ljava/lang/Object;
.source "TencentPhoneNumberLocatorDownloader.java"

# interfaces
.implements Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$IUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-static {v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;I)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-get0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->unbind()V

    goto :goto_0
.end method

.method public onFailure(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;I)V

    return-void
.end method

.method public onTimeOut()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;I)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    iget-boolean v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-get0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-get0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->cancle()V

    :cond_0
    return-void
.end method
