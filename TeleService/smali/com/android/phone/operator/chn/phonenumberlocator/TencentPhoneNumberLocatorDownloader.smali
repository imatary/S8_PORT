.class public Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;
.super Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;
.source "TencentPhoneNumberLocatorDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;,
        Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;
    }
.end annotation


# instance fields
.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private dateFormatForAutoUpdate:Ljava/text/SimpleDateFormat;

.field private mCheckThread:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

.field private mIsCanceledByUser:Z

.field private mIsUpdating:Z

.field private mPNLServerMgr:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

.field private mUpdateThread:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;


# direct methods
.method static synthetic -get0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mPNLServerMgr:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mUpdateThread:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;)Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mUpdateThread:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->responeResult(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->saveValuesBeforeUpdate()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->setIsUpdating(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->startCheckThread()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MMddHHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy.MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->dateFormatForAutoUpdate:Ljava/text/SimpleDateFormat;

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mPNLServerMgr:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    iput-boolean v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mIsCanceledByUser:Z

    iput-boolean v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mIsUpdating:Z

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mCheckThread:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mUpdateThread:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;

    invoke-static {}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->getInstance()Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mPNLServerMgr:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MMddHHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy.MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->dateFormatForAutoUpdate:Ljava/text/SimpleDateFormat;

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mPNLServerMgr:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    iput-boolean v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mIsCanceledByUser:Z

    iput-boolean v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mIsUpdating:Z

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mCheckThread:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mUpdateThread:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBUpdateThread;

    invoke-static {}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->getInstance()Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mPNLServerMgr:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    invoke-virtual {p0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method private getCurrentTime()I
    .locals 3

    const-string/jumbo v2, "getCurrentTime"

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private getCurrentTimeForAutoUpdate()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->dateFormatForAutoUpdate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "TencentPhoneNumberLocatorDownloader"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private responeResult(I)V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "responeResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isAutoUpdateType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->setIsUpdating(Z)V

    if-eq p1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->saveValuesForSuccess()V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mPNLServerMgr:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    invoke-virtual {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->unbind()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_1

    sget v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->sDownloadFailTime:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->sDownloadFailTime:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sDownloadFailTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->sDownloadFailTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    return-void

    :cond_3
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private saveValuesBeforeUpdate()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "lastUpdateTime"

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->getCurrentTime()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "updateSuccess"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget v2, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->tryTimes:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    sget v2, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->tryTimes:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->tryTimes:I

    :goto_0
    const-string/jumbo v2, "tryTimes"

    sget v3, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->tryTimes:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void

    :cond_0
    const/4 v2, 0x3

    sput v2, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->tryTimes:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private saveValuesForSuccess()V
    .locals 5

    const-string/jumbo v2, "saveValuesForSuccess()"

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "bTryAgain10"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "lastUpdateTime"

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->getCurrentTime()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "tryTimes"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "updateSuccess"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "lastUpdateSuccessTime"

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->getCurrentTimeForAutoUpdate()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setIsUpdating(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mIsUpdating:Z

    iget-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v0, :cond_0

    sput-boolean p1, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->isAutoUpdating:Z

    :cond_0
    return-void
.end method

.method private startCheckThread()V
    .locals 2

    :try_start_0
    new-instance v1, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)V

    iput-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mCheckThread:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mCheckThread:Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;

    invoke-virtual {v1}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$TencentDBCheckThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->responeResult(I)V

    goto :goto_0
.end method


# virtual methods
.method public getVersionInfo(Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v3, "/system/etc/HomeLocationVersion.bin"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "lastUpdateSuccessTime"

    const-string/jumbo v4, "0.0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    invoke-direct {v2}, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;-><init>()V

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->dbSize:J

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->displayVersion:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->version:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->lastUpdate:Ljava/lang/String;

    return-object v2
.end method

.method public readDownloadFileInfo(Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;)V
    .locals 0

    return-void
.end method

.method public setCallback(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mPNLServerMgr:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public setTypeAuto(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTypeAuto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    return-void
.end method

.method public startDownloadThread()V
    .locals 2

    const-string/jumbo v0, "startDownloadThread"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mIsUpdating:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updating PNL DB, return!"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mIsCanceledByUser:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->setIsUpdating(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mPNLServerMgr:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    invoke-virtual {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->startCheckThread()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mPNLServerMgr:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    new-instance v1, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$1;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader$1;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->setBindServiceListener(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr$IBindServerListener;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mPNLServerMgr:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    invoke-virtual {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->checkAndBindService()Z

    goto :goto_0
.end method

.method public stopDownloadThread()V
    .locals 2

    const-string/jumbo v0, "stopDownloadThread"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mIsCanceledByUser:Z

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mPNLServerMgr:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->mPNLServerMgr:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;

    invoke-virtual {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorUpdateServiceMgr;->cancle()V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/TencentPhoneNumberLocatorDownloader;->setIsUpdating(Z)V

    return-void
.end method
