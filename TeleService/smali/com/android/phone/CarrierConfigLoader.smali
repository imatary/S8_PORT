.class public Lcom/android/phone/CarrierConfigLoader;
.super Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;
.source "CarrierConfigLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CarrierConfigLoader$1;,
        Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;,
        Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;
    }
.end annotation


# static fields
.field private static mConfigNetworkTypeCapability:Ljava/lang/String;

.field private static sInstance:Lcom/android/phone/CarrierConfigLoader;


# instance fields
.field private final mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigFromCarrierApp:[Landroid/os/PersistableBundle;

.field private mConfigFromDefaultApp:[Landroid/os/PersistableBundle;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromCarrierApp:[Landroid/os/PersistableBundle;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/CarrierConfigLoader;)[Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromDefaultApp:[Landroid/os/PersistableBundle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/CarrierConfigLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/CarrierConfigLoader;)[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/CarrierConfigLoader;->restoreConfigFromXml(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/CarrierConfigLoader;I)Landroid/service/carrier/CarrierIdentifier;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->getCarrierIdForPhoneId(I)Landroid/service/carrier/CarrierIdentifier;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/phone/CarrierConfigLoader;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->updateConfigForPhoneId(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CarrierConfigLoader;->bindToConfigPackage(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->clearCachedConfigForPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->getCarrierPackageForPhoneId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/phone/CarrierConfigLoader;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->getIccIdForPhoneId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/phone/CarrierConfigLoader;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->broadcastConfigChangedIntent(I)V

    return-void
.end method

.method static synthetic -wrap7(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CarrierConfigLoader;->saveConfigToXml(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CarrierConfigLoader;->mConfigNetworkTypeCapability:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;-><init>()V

    new-instance v0, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;-><init>(Lcom/android/phone/CarrierConfigLoader;Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mBootReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;-><init>(Lcom/android/phone/CarrierConfigLoader;Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/CarrierConfigLoader$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CarrierConfigLoader$1;-><init>(Lcom/android/phone/CarrierConfigLoader;)V

    iput-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/CarrierConfigLoader;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    new-array v0, v7, [Landroid/os/PersistableBundle;

    iput-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromDefaultApp:[Landroid/os/PersistableBundle;

    new-array v0, v7, [Landroid/os/PersistableBundle;

    iput-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromCarrierApp:[Landroid/os/PersistableBundle;

    new-array v0, v7, [Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    iput-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    const-string/jumbo v0, "carrier_config"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "CarrierConfigLoader has started"

    invoke-static {v0}, Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private bindToConfigPackage(Ljava/lang/String;II)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Binding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.service.carrier.CarrierService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    new-instance v3, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    invoke-direct {v3, p0, p2, p3}, Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;-><init>(Lcom/android/phone/CarrierConfigLoader;II)V

    aput-object v3, v2, p2

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/CarrierConfigLoader;->mServiceConnection:[Lcom/android/phone/CarrierConfigLoader$CarrierServiceConnection;

    aget-object v3, v3, p2

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method

.method private broadcastConfigChangedIntent(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method private clearCachedConfigForPackage(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v4, Lcom/android/phone/CarrierConfigLoader$2;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/CarrierConfigLoader$2;-><init>(Lcom/android/phone/CarrierConfigLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v4, v2

    if-ge v4, v7, :cond_1

    :cond_0
    return v3

    :cond_1
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v2, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v7
.end method

.method private getCarrierIdForPhoneId(I)Landroid/service/carrier/CarrierIdentifier;
    .locals 11

    const/4 v10, 0x3

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/android/phone/CarrierConfigLoader;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/CarrierConfigLoader;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string/jumbo v9, "-LRA"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "31004"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "311480"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v10, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v8, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v6

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCarrierIdForPhoneId simOperator: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, " mcc: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, " mnc: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, " spn: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, " gid1: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, " gid2: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/service/carrier/CarrierIdentifier;

    invoke-direct/range {v0 .. v6}, Landroid/service/carrier/CarrierIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    const-string/jumbo v0, "20404"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "00101"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "001010"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "24681"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "246081"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LRA operator customization - overwrite mcc/mnc -"

    invoke-static {v0}, Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Actual = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, " Modified = 311480"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V

    const-string/jumbo v8, "311480"

    goto/16 :goto_0
.end method

.method private getCarrierPackageForPhoneId(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.service.carrier.CarrierService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    return-object v5
.end method

.method private getFilenameForConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "carrierconfig-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIccIdForPhoneId(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPackageVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/CarrierConfigLoader;
    .locals 4

    const-class v1, Lcom/android/phone/CarrierConfigLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/CarrierConfigLoader;->sInstance:Lcom/android/phone/CarrierConfigLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/CarrierConfigLoader;

    invoke-direct {v0, p0}, Lcom/android/phone/CarrierConfigLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/CarrierConfigLoader;->sInstance:Lcom/android/phone/CarrierConfigLoader;

    :goto_0
    sget-object v0, Lcom/android/phone/CarrierConfigLoader;->sInstance:Lcom/android/phone/CarrierConfigLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "CarrierConfigLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CarrierConfigLoader;->sInstance:Lcom/android/phone/CarrierConfigLoader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CarrierConfigLoader"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CarrierConfigLoader"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private restoreConfigFromXml(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 13

    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->getPackageVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to get package version for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    const/4 v10, 0x0

    return-object v10

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const-string/jumbo v10, "Cannot restore config with null packageName or iccid."

    invoke-static {v10}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    const/4 v10, 0x0

    return-object v10

    :cond_2
    const/4 v7, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-direct {p0, p1, p2}, Lcom/android/phone/CarrierConfigLoader;->getFilenameForConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v10

    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    const-string/jumbo v10, "utf-8"

    invoke-interface {v6, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v10, 0x1

    if-eq v3, v10, :cond_4

    const/4 v10, 0x2

    if-ne v3, v10, :cond_5

    const-string/jumbo v10, "package_version"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Saved version mismatch: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " vs "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    move-object v4, v5

    :goto_1
    return-object v7

    :cond_5
    const/4 v10, 0x2

    if-ne v3, v10, :cond_3

    const-string/jumbo v10, "bundle_data"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v6}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_3
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v4, v5

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v4, v5

    goto :goto_3

    :catch_5
    move-exception v1

    move-object v4, v5

    goto :goto_2
.end method

.method private saveConfigToXml(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 9

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v6, "Cannot save config with null packageName or iccid."

    invoke-static {v6}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->getPackageVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to get package version for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {p0, p1, p2}, Lcom/android/phone/CarrierConfigLoader;->getFilenameForConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v6, "utf-8"

    invoke-virtual {v2, v4, v6}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string/jumbo v6, "utf-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "carrier_config"

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "package_version"

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2, v5}, Lcom/android/internal/util/FastXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "package_version"

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "bundle_data"

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p3, v2}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v6, "bundle_data"

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "carrier_config"

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    invoke-virtual {v2}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    :goto_0
    return-void

    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CarrierConfigLoader;->loge(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v3, v4

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method private updateConfigForPhoneId(I)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromCarrierApp:[Landroid/os/PersistableBundle;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->getCarrierPackageForPhoneId(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromCarrierApp:[Landroid/os/PersistableBundle;

    aput-object v1, v0, p1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: can\'t dump carrierconfig from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CarrierConfigLoader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Phone Id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  SimOperator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mConfigFromDefaultApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromDefaultApp:[Landroid/os/PersistableBundle;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mConfigFromCarrierApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromCarrierApp:[Landroid/os/PersistableBundle;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getConfigForSubId(I)Landroid/os/PersistableBundle;
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromDefaultApp:[Landroid/os/PersistableBundle;

    aget-object v0, v4, v2

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    :cond_0
    iget-object v4, p0, Lcom/android/phone/CarrierConfigLoader;->mConfigFromCarrierApp:[Landroid/os/PersistableBundle;

    aget-object v0, v4, v2

    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    :cond_1
    return-object v3

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyConfigChangedForSubId(I)V
    .locals 6

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignore invalid phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package is not privileged for subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/CarrierConfigLoader;->clearCachedConfigForPackage(Ljava/lang/String;)Z

    invoke-direct {p0, v1}, Lcom/android/phone/CarrierConfigLoader;->updateConfigForPhoneId(I)V

    return-void
.end method

.method public updateConfigForPhoneId(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update config for phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " simState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CarrierConfigLoader;->log(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "ABSENT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/CarrierConfigLoader;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v0, "CARD_IO_ERROR"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "UNKNOWN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "LOCKED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "LOADED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader;->updateConfigForPhoneId(I)V

    goto :goto_0
.end method
