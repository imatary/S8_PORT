.class Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$12;
.super Ljava/lang/Object;
.source "PhoneNumberLocator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->startCopyThread()V
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

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$12;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string/jumbo v1, "/system/etc/HomeLocationVersion.bin"

    const-string/jumbo v2, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-static {v1, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "/system/etc/HomeLocationDB.bin"

    const-string/jumbo v2, "/data/data/com.android.phone/HomeLocationDB.bin"

    invoke-static {v1, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$12;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get3(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$12;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    const-string/jumbo v2, "EVENT_FILE_EXCEPTION = 3"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$12;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->-get3(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
