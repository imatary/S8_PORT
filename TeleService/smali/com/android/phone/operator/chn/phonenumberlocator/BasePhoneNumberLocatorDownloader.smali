.class public Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;
.super Ljava/lang/Object;
.source "BasePhoneNumberLocatorDownloader.java"

# interfaces
.implements Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;


# static fields
.field public static isAutoUpdating:Z

.field public static sDownloadFailTime:I

.field public static tryTimes:I


# instance fields
.field protected final EVENT_DOWNLOAD_FINISH:I

.field protected final EVENT_HTTP_EXCEPTION:I

.field protected final EVENT_USER_CANCELED:I

.field protected final EVENT_VERSION_SAME:I

.field protected isAutoUpdateType:Z

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;->EVENT_DOWNLOAD_FINISH:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;->EVENT_HTTP_EXCEPTION:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;->EVENT_VERSION_SAME:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;->EVENT_USER_CANCELED:I

    return-void
.end method

.method public static getPNLDownloaderInstance(Landroid/content/Context;)Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;
    .locals 1

    const-string/jumbo v0, "phone_number_locator_tencent"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getVersionInfo(Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public readDownloadFileInfo(Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;)V
    .locals 0

    return-void
.end method

.method public setCallback(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setTypeAuto(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;->isAutoUpdating:Z

    return-void
.end method

.method public startDownloadThread()V
    .locals 0

    return-void
.end method

.method public stopDownloadThread()V
    .locals 0

    return-void
.end method
