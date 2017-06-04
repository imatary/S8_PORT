.class public Lcom/samsung/android/app/omcagent/network/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field public static instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;


# instance fields
.field private carrierId:Ljava/lang/String;

.field private clientVersion:Ljava/lang/String;

.field private deviceCategory:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceVersion:Ljava/lang/String;

.field private fingerPrint:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private multicsccode:Ljava/lang/String;

.field private networkcode:Ljava/lang/String;

.field private omcEnable:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private salescode:Ljava/lang/String;

.field private serviceVersion:Ljava/lang/String;

.field private simActivation:Ljava/lang/String;

.field private sn:Ljava/lang/String;

.field private termsVersion:Ljava/lang/String;

.field private tmcc:Ljava/lang/String;

.field private tmnc:Ljava/lang/String;

.field private un:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setUniqueID(Ljava/lang/String;)V

    return-void
.end method

.method private setCarrierID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->carrierId:Ljava/lang/String;

    return-void
.end method

.method private setClientVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->clientVersion:Ljava/lang/String;

    return-void
.end method

.method private setDeviceVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->deviceVersion:Ljava/lang/String;

    return-void
.end method

.method private setFingerPrint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->fingerPrint:Ljava/lang/String;

    return-void
.end method

.method private setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->model:Ljava/lang/String;

    return-void
.end method

.method private setMultiCscCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->multicsccode:Ljava/lang/String;

    return-void
.end method

.method private setNetworkCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->networkcode:Ljava/lang/String;

    return-void
.end method

.method private setOsVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->osVersion:Ljava/lang/String;

    return-void
.end method

.method private setSalesCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->salescode:Ljava/lang/String;

    return-void
.end method

.method private setSerialNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->sn:Ljava/lang/String;

    return-void
.end method

.method private setTelephonyMcc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->tmcc:Ljava/lang/String;

    return-void
.end method

.method private setTelephonyMnc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->tmnc:Ljava/lang/String;

    return-void
.end method

.method private setTermsVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->termsVersion:Ljava/lang/String;

    return-void
.end method

.method private setUniqueID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->deviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCarrierID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->carrierId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->deviceCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->deviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerPrint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->fingerPrint:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiCscCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->multicsccode:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->networkcode:Ljava/lang/String;

    return-object v0
.end method

.method public getOmcEnabler()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->omcEnable:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSalesCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->salescode:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->sn:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->serviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSimActivation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->simActivation:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephonyMcc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->tmcc:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephonyMnc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->tmnc:Ljava/lang/String;

    return-object v0
.end method

.method public getTermsVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->termsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->un:Ljava/lang/String;

    return-object v0
.end method

.method public readDeviceInfo(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/common/Device;->readUN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setUniqueNumber(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/common/Device;->readSN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setSerialNumber(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/common/Device;->readModelName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setModel(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/common/Device;->readCarrierId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setCarrierID(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readMultiCscCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setMultiCscCode(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setSalesCode(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->getOmcNWcode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setNetworkCode(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/omcagent/common/Device;->readNetworkMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setTelephonyMcc(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/omcagent/common/Device;->readNetworkMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setTelephonyMnc(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/common/Device;->readFingerPrint()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setFingerPrint(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/common/Device;->readOSVersion()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setOsVersion(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/common/Device;->readFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setDeviceVersion(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/omcagent/common/Device;->readAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setClientVersion(Ljava/lang/String;)V

    const-string v0, "0.1"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setTermsVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readOmcVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setServiceVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->getSimActivation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setSimActivation(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/common/Device;->readDeviceCategory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setDeviceCategory(Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->deviceCategory:Ljava/lang/String;

    return-void
.end method

.method public setOmcEmabler(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->omcEnable:Ljava/lang/String;

    return-void
.end method

.method public setServiceVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->serviceVersion:Ljava/lang/String;

    return-void
.end method

.method public setSimActivation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->simActivation:Ljava/lang/String;

    return-void
.end method

.method public setUniqueNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->un:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "model = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "multiCscCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->multicsccode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "salesCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->salescode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "firmware version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->deviceVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
