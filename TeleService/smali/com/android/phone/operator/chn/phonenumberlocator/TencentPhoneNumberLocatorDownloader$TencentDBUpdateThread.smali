.class Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;
.super Ljava/lang/Thread;
.source "TencentPhoneNumberLocatorDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TencentDBUpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->-get0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread$1;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread$1;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;)V

    const v2, 0x3a980

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->updateDB(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$IUpdateListener;I)V

    return-void
.end method
