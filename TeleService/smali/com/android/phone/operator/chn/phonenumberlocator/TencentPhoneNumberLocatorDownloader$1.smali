.class Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$1;
.super Ljava/lang/Object;
.source "TencentPhoneNumberLocatorDownloader.java"

# interfaces
.implements Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$IBindServerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->startDownloadThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-get0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->setBindServiceListener(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$IBindServerListener;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-wrap3(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-get0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->setBindServiceListener(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$IBindServerListener;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;I)V

    return-void
.end method
