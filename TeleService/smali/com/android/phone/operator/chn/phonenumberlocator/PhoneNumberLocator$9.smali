.class Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$9;
.super Ljava/lang/Object;
.source "PhoneNumberLocator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->startDownloadThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$9;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$9;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get5(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$9;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get5(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;->stopDownloadThread()V

    :cond_0
    return-void
.end method
