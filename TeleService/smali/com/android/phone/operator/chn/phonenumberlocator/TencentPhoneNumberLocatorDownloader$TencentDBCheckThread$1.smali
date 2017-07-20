.class Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread$1;
.super Ljava/lang/Object;
.source "TencentPhoneNumberLocatorDownloader.java"

# interfaces
.implements Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$ICheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    iget-object v1, v1, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    new-instance v2, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;

    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    iget-object v3, v3, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-direct {v2, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)V

    invoke-static {v1, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-set0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;)Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    iget-object v1, v1, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-static {v1}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-get1(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    iget-object v1, v1, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    iget-object v1, v1, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-static {v1, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    iget-object v1, v1, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-static {v1, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;Z)V

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    iget-object v1, v1, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-static {v1}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-get0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->unbind()V

    goto :goto_0
.end method

.method public onFailure(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;I)V

    return-void
.end method

.method public onTimeOut()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;I)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    iget-boolean v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-get0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread$1;->this$1:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-get0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->cancle()V

    :cond_0
    return-void
.end method
