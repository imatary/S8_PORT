.class public Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneNumberLocatorBootCompletedReceiver.java"


# static fields
.field private static bTryAgain10Minutes:Z

.field private static bUpdateSuccess:Z

.field public static haveNetWork:Z

.field public static isSIMNetConnected:Z

.field public static isWifiNetConnected:Z

.field private static lastUpdateTime:I

.field public static timetickCount:I


# instance fields
.field private autoUpdate:Z

.field private bNeedUpdate:Z

.field private dateEve3Min:[I

.field private dateEve3MinTest:[I

.field private dateEveOne:[I

.field private dateEveSix:[I

.field private dateEveThree:[I

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field public mContext:Landroid/content/Context;

.field public mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

.field private mWLANOnly:Z

.field private updateType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isSIMNetConnected:Z

    sput-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    sput-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->haveNetWork:Z

    sput v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const v3, 0xb746c0

    const v2, 0x5bb940

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->bNeedUpdate:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MMddHHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateFormat:Ljava/text/SimpleDateFormat;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEveOne:[I

    const v0, 0x2df280

    const v1, 0x898000

    filled-new-array {v0, v2, v1, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEveThree:[I

    filled-new-array {v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEveSix:[I

    const/16 v0, 0x104

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEve3Min:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xf6e00
        0x1eb040
        0x2df280
        0x3d34c0
        0x4c7700
        0x5bb940
        0x6afb80
        0x7a3dc0
        0x898000
        0x98c240
        0xa80480
        0xb746c0
    .end array-data

    :array_1
    .array-data 4
        0x320
        0x323
        0x326
        0x329
        0x32c
        0x32f
        0x332
        0x335
        0x338
        0x33b
        0x33e
        0x341
        0x344
        0x347
        0x34a
        0x34d
        0x350
        0x353
        0x356
        0x359
        0x384
        0x387
        0x38a
        0x63
        0x390
        0x393
        0x396
        0x399
        0x39c
        0x39f
        0x3a2
        0x3a5
        0x3a8
        0x3ab
        0x3ae
        0x3b1
        0x3b4
        0x3b7
        0x3ba
        0x3bd
        0x3e8
        0x3eb
        0x3ee
        0x3f1
        0x3f4
        0x3f7
        0x3fa
        0x3fd
        0x400
        0x403
        0x406
        0x409
        0x40c
        0x40f
        0x412
        0x415
        0x418
        0x41b
        0x41e
        0x421
        0x44c
        0x44f
        0x452
        0x455
        0x458
        0x45b
        0x45e
        0x461
        0x464
        0x467
        0x46a
        0x46d
        0x470
        0x473
        0x476
        0x479
        0x47c
        0x47f
        0x482
        0x485
        0x4b0
        0x4b3
        0x4b6
        0x4b9
        0x4bc
        0x4bf
        0x4c2
        0x4c5
        0x4c8
        0x4cb
        0x4ce
        0x4d1
        0x4d4
        0x4d7
        0x4da
        0x4dd
        0x4e0
        0x4e3
        0x4e6
        0x4e9
        0x514
        0x517
        0x51a
        0x51d
        0x520
        0x523
        0x526
        0x529
        0x52c
        0x52f
        0x532
        0x535
        0x538
        0x53b
        0x53e
        0x541
        0x544
        0x547
        0x54a
        0x54d
        0x578
        0x57b
        0x57e
        0x581
        0x584
        0x587
        0x58a
        0x58d
        0x590
        0x593    # 2.0E-42f
        0x596
        0x599
        0x59c
        0x59f
        0x5a2
        0x5a5
        0x5a8
        0x5ab
        0x5ae
        0x5b1
        0x5dc
        0x5df
        0x5e2
        0x5e5
        0x5e8
        0x5eb
        0x5ee
        0x5f1
        0x5f4
        0x5f7
        0x5fa
        0x5fd
        0x600
        0x603
        0x606
        0x609
        0x60c
        0x60f
        0x612
        0x615
        0x640
        0x643
        0x646
        0x649
        0x64c
        0x64f
        0x652
        0x655
        0x658
        0x65b
        0x65e
        0x661
        0x664
        0x667
        0x66a
        0x66d
        0x670
        0x673
        0x676
        0x679
        0x6a4
        0x6a7
        0x6aa
        0x6ad
        0x6b0
        0x6b4
        0x6b6
        0x6b9
        0x6bc
        0x6bf
        0x6c2
        0x6c5
        0x6c8
        0x6cb
        0x6ce
        0x6d1
        0x6d4
        0x6d7
        0x6da
        0x6dd
        0x708
        0x70b
        0x70e
        0x711
        0x714
        0x717
        0x71a
        0x71d
        0x720
        0x723
        0x726
        0x729
        0x72c
        0x72f
        0x732
        0x735
        0x738
        0x73b
        0x73e
        0x741
        0x76c
        0x76f
        0x772
        0x775
        0x778
        0x77b
        0x77e
        0x781
        0x784
        0x787
        0x78a
        0x78d
        0x790
        0x793
        0x796
        0x799
        0x79c
        0x79f
        0x7a2
        0x7a5
        0x7d0
        0x7d3
        0x7d6
        0x7d9
        0x7dc
        0x7df
        0x7e2
        0x7e5
        0x7e8
        0x7eb
        0x7ee
        0x7f1
        0x7f4
        0x7f7
        0x7fa
        0x7fd
        0x800
        0x803
        0x806
        0x809
    .end array-data
.end method

.method private InitAutoUpdate(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "autoUpdate"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "autoUpdateInit"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private checkTime()Z
    .locals 1

    const-string/jumbo v0, "checkTime"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEveOne:[I

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isTime([I)Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEveThree:[I

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isTime([I)Z

    move-result v0

    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEveSix:[I

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isTime([I)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDataFromDB(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "bTryAgain10"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->bTryAgain10Minutes:Z

    const-string/jumbo v2, "lastUpdateTime"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->lastUpdateTime:I

    const-string/jumbo v2, "tryTimes"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->tryTimes:I

    const-string/jumbo v2, "autoUpdateInit"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->InitAutoUpdate(Landroid/content/Context;)V

    :cond_0
    const-string/jumbo v2, "autoUpdate"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    const-string/jumbo v2, "updateSuccess"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->bUpdateSuccess:Z

    const-string/jumbo v2, "updateType"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    const-string/jumbo v2, "WLANOnly"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->mWLANOnly:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bTryAgain10Minutes :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->bTryAgain10Minutes:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lastUpdateTime :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->lastUpdateTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PhoneNumberLocatorDownloader.tryTimes :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->tryTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bUpdateSuccess :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->bUpdateSuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "autoUpdate :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWLANOnly :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->mWLANOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getLastUpdateTime()[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isVersionAndDBFileValid()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    const-string/jumbo v5, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-interface {v4, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    const-string/jumbo v5, "/system/etc/HomeLocationVersion.bin"

    invoke-interface {v4, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    return-object v6

    :cond_2
    iget-object v2, v1, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->lastUpdate:Ljava/lang/String;

    const-string/jumbo v4, "\\."

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    return-object v6

    :cond_3
    return-object v3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private getLatestTime()I
    .locals 12

    const-string/jumbo v6, "getLatestTime"

    invoke-direct {p0, v6}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->getCurrentTime()I

    move-result v1

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->getLastUpdateTime()[Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    invoke-direct {p0, v6, v7}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->updateDate([Ljava/lang/String;I)[I

    move-result-object v5

    iget v6, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->updateType:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    add-int/lit16 v6, v0, -0x4b0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4037000000000000L    # 23.0

    mul-double/2addr v8, v10

    double-to-int v7, v8

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v6, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x404d800000000000L    # 59.0

    mul-double/2addr v8, v10

    double-to-int v7, v8

    add-int v0, v6, v7

    return v0

    :pswitch_0
    if-eqz v5, :cond_0

    invoke-direct {p0, v5, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v2

    aget v0, v5, v2

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEveOne:[I

    invoke-direct {p0, v6, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v2

    iget-object v6, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEveOne:[I

    aget v0, v6, v2

    goto :goto_0

    :pswitch_1
    if-eqz v5, :cond_1

    invoke-direct {p0, v5, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v3

    aget v0, v5, v3

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEveThree:[I

    invoke-direct {p0, v6, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v3

    iget-object v6, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEveThree:[I

    aget v0, v6, v3

    goto :goto_0

    :pswitch_2
    if-eqz v5, :cond_2

    invoke-direct {p0, v5, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v4

    aget v0, v5, v4

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEveSix:[I

    invoke-direct {p0, v6, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->getLatestTimeSuffix([II)I

    move-result v4

    iget-object v6, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEveSix:[I

    aget v0, v6, v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLatestTimeSuffix([II)I
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v4, "getLatestTimeSuffix"

    invoke-direct {p0, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    array-length v4, p1

    new-array v0, v4, [I

    const/4 v1, 0x0

    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    aget v4, p1, v1

    sub-int v4, p2, v4

    aput v4, v0, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dateEveDiff[] is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    aget v4, v0, v1

    if-gez v4, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    aget v3, v0, v6

    aget v4, v0, v1

    if-le v3, v4, :cond_1

    aget v3, v0, v1

    move v2, v1

    goto :goto_2

    :cond_3
    return v2
.end method

.method private isNetConnected()Z
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->mWLANOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isNetConnected isWifiNetConnected :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    if-eqz v0, :cond_2

    return v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isNetConnected isSIMNetConnected :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isSIMNetConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  isWifiNetConnected :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isSIMNetConnected:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    if-eqz v0, :cond_2

    :cond_1
    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isTime([I)Z
    .locals 4

    const-string/jumbo v2, "isTime"

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->getCurrentTime()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "currentTime is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "in isTime()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isVersionAndDBFileValid()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    const-string/jumbo v4, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-interface {v3, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_1

    iget-object v3, v2, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isVersionAndDBFileValid - mVersionInfo :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v9}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    return v8

    :cond_1
    iget-object v3, v2, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->lastUpdate:Ljava/lang/String;

    const-string/jumbo v4, "20"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/data/data/com.android.phone/HomeLocationDB.bin"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v4, v2, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->dbSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isVersionAndDBFileValid - mVersionInfo.dbSize :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->dbSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "dbFile.length() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v9}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    return v8

    :cond_2
    new-instance v1, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;

    invoke-direct {v1}, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;-><init>()V

    const-string/jumbo v3, "/data/data/com.android.phone/HomeLocationDB.bin"

    iput-object v3, v1, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileName:Ljava/lang/String;

    iget-wide v4, v2, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->dbSize:J

    iput-wide v4, v1, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileSize:J

    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    invoke-interface {v3, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;->readDownloadFileInfo(Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;)V

    invoke-virtual {v1}, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->isValidFile()Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "PNL DB file is not valid"

    invoke-direct {p0, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    return v8

    :cond_3
    return v9
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "PhoneNumberLocatorBootCompletedReceiver"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "PhoneNumberLocatorBootCompletedReceiver"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private makeTest()V
    .locals 7

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "MMdd"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v3, v5, 0x2710

    iget-object v5, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEve3Min:[I

    array-length v5, v5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEve3MinTest:[I

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEve3Min:[I

    array-length v5, v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEve3MinTest:[I

    iget-object v6, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateEve3Min:[I

    aget v6, v6, v4

    add-int/2addr v6, v3

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private needUpdateDB()Z
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->needUpdateForDownloadfailed()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "needUpdateForDownloadfailed"

    invoke-direct {p0, v2, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    return v4

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->getLatestTime()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "autoUpdateTime is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->updateExp(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "updateExp is true"

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    return v4

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->checkTime()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "checkTime"

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    return v4

    :cond_2
    const-string/jumbo v2, "needUpdateDB is false"

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method private needUpdateForDownloadfailed()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->getCurrentTime()I

    move-result v2

    sget v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->lastUpdateTime:I

    sub-int v0, v2, v3

    sget v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->tryTimes:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->tryTimes:I

    sget-boolean v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->bTryAgain10Minutes:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    sget v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->tryTimes:I

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0xa

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private updateDate([Ljava/lang/String;I)[I
    .locals 10

    if-nez p1, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x3

    new-array v3, v4, [I

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aput v4, v3, v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x2

    aget v6, v3, v6

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    packed-switch p2, :pswitch_data_0

    :cond_1
    return-object v2

    :pswitch_0
    const/16 v4, 0xc

    new-array v2, v4, [I

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0xc

    if-ge v1, v4, :cond_1

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v5, v6

    mul-int/2addr v4, v5

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit16 v4, v4, 0x4b0

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x4

    new-array v2, v4, [I

    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v5, v6

    mul-int/2addr v4, v5

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit16 v4, v4, 0x4b0

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v4, 0x2

    new-array v2, v4, [I

    const/4 v1, 0x0

    :goto_2
    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v5, v6

    mul-int/2addr v4, v5

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit16 v4, v4, 0x4b0

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateExp(I)Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->bUpdateSuccess:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->lastUpdateTime:I

    if-ge v0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public checkDB()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isVersionAndDBFileValid()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "checkDB - DB or version file is not correct, reset to default DB and version file"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->startCopyThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->startCopyThread()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public checkNetWork(Landroid/content/Context;)Z
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v7, "context null"

    invoke-direct {p0, v7, v9}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    return v8

    :cond_0
    const-string/jumbo v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v7, v6, :cond_1

    sget-object v7, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v7, v6, :cond_2

    :cond_1
    sput-boolean v8, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    :goto_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v9, v5, :cond_4

    :goto_1
    return v9

    :cond_2
    sput-boolean v9, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    goto :goto_0

    :cond_3
    sput-boolean v8, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isWifiNetConnected:Z

    goto :goto_0

    :cond_4
    sput-boolean v9, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isSIMNetConnected:Z

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "defaultHost:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "defaultPort:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return v8
.end method

.method public getCurrentTime()I
    .locals 3

    const-string/jumbo v2, "getCurrentTime"

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "onReceive"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    const-string/jumbo v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Phone number locator feature is dsiabled"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;->getPNLDownloaderInstance(Landroid/content/Context;)Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    invoke-interface {v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;->setTypeAuto(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    invoke-interface {v0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;->setContext(Landroid/content/Context;)V

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "PhoneNumberLocatorBootCompletedReceiver.onReceive(ACTION_BOOT_COMPLETED)"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    if-nez p1, :cond_3

    const-string/jumbo v0, "context null"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    return-void

    :cond_3
    sput v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    invoke-direct {p0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->getDataFromDB(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->checkNetWork(Landroid/content/Context;)Z

    iget-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isNetConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-eqz v0, :cond_6

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->checkDB()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PhoneNumberLocatorBootCompletedReceiver.onReceive(ACTION_TIME_TICK) - timetickCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    if-nez p1, :cond_8

    const-string/jumbo v0, "context null"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    return-void

    :cond_8
    sget v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    sget v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_9

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const-string/jumbo v0, "stopService PhoneNumberLocatorRegisterService.class because receive time tick over than 3 times"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    sput v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->timetickCount:I

    return-void

    :cond_9
    sget v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_a

    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-eqz v0, :cond_a

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopService PhoneNumberLocatorDownloader.sDownloadFailTime :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->makeTest()V

    invoke-direct {p0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->getDataFromDB(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    if-nez v0, :cond_b

    const-string/jumbo v0, "auto update is not available"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    return-void

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->checkNetWork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "SIM and wifi both are\'t available"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    if-eqz p1, :cond_c

    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const-string/jumbo v0, "PhoneNumberLocatorBootCompletedReceiver context.stopService"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    :cond_c
    return-void

    :cond_d
    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->needUpdateDB()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->bNeedUpdate:Z

    iget-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->bNeedUpdate:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "bNeedUpdate is true"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isNetConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    invoke-interface {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;->startDownloadThread()V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PhoneNumberLocatorBootCompletedReceiver.onReceive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    if-nez p1, :cond_f

    const-string/jumbo v0, "context null"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    return-void

    :cond_f
    invoke-direct {p0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->getDataFromDB(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->checkNetWork(Landroid/content/Context;)Z

    iget-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->autoUpdate:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->isNetConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-nez v0, :cond_5

    sput v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    sput-boolean v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PhoneNumberLocatorBootCompletedReceiver.onReceive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;->log(Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method public startCopyThread()V
    .locals 3

    :try_start_0
    new-instance v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver$1;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorBootCompletedReceiver;)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
