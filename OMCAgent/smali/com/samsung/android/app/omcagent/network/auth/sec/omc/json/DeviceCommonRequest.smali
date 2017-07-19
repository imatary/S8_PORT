.class public Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;
.super Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/JsonObject;
.source "DeviceCommonRequest.java"


# instance fields
.field protected carrierId:Ljava/lang/String;

.field protected clientVersion:Ljava/lang/String;

.field protected deviceID:Ljava/lang/String;

.field protected deviceSN:Ljava/lang/String;

.field protected deviceUN:Ljava/lang/String;

.field protected fingerPrint:Ljava/lang/String;

.field protected fwVersion:Ljava/lang/String;

.field protected gidCode:Ljava/lang/String;

.field protected initType:Ljava/lang/String;

.field protected mccCode:Ljava/lang/String;

.field protected mncCode:Ljava/lang/String;

.field protected modelName:Ljava/lang/String;

.field protected multiCscCode:Ljava/lang/String;

.field protected networkCode:Ljava/lang/String;

.field protected omcVersion:Ljava/lang/String;

.field protected osVersion:Ljava/lang/String;

.field protected salesCode:Ljava/lang/String;

.field protected sessionId:Ljava/lang/String;

.field protected spnCode:Ljava/lang/String;

.field protected subsetCode:Ljava/lang/String;

.field protected tMccCode:Ljava/lang/String;

.field protected tMncCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/JsonObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/JsonObject;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->deviceID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getUniqueNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->deviceUN:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->deviceSN:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->modelName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getCarrierID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->carrierId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getMultiCscCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->multiCscCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->salesCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getNetworkCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->networkCode:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getMcc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->mccCode:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getMnc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->mncCode:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->spnCode:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->gidCode:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getSubsetCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->subsetCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getTelephonyMcc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->tMccCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getTelephonyMnc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->tMncCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getFingerPrint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->fingerPrint:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->osVersion:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getDeviceVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->fwVersion:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getClientVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->clientVersion:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getServiceVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->omcVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClientVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->deviceSN:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceUN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->deviceUN:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerPrint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->fingerPrint:Ljava/lang/String;

    return-object v0
.end method

.method public getFwVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->fwVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getGidCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->gidCode:Ljava/lang/String;

    return-object v0
.end method

.method public getInitType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->initType:Ljava/lang/String;

    return-object v0
.end method

.method public getMccCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->mccCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMncCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->mncCode:Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiCscCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->multiCscCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->networkCode:Ljava/lang/String;

    return-object v0
.end method

.method public getOmcVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->omcVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSalesCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->salesCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpnCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->spnCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSubsetCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->subsetCode:Ljava/lang/String;

    return-object v0
.end method

.method public gettMccCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->tMccCode:Ljava/lang/String;

    return-object v0
.end method

.method public gettMncCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->tMncCode:Ljava/lang/String;

    return-object v0
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->clientVersion:Ljava/lang/String;

    return-void
.end method

.method public setDeviceID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->deviceID:Ljava/lang/String;

    return-void
.end method

.method public setDeviceSN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->deviceSN:Ljava/lang/String;

    return-void
.end method

.method public setDeviceUN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->deviceUN:Ljava/lang/String;

    return-void
.end method

.method public setFingerPrint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->fingerPrint:Ljava/lang/String;

    return-void
.end method

.method public setFwVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->fwVersion:Ljava/lang/String;

    return-void
.end method

.method public setGidCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->gidCode:Ljava/lang/String;

    return-void
.end method

.method public setInitType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->initType:Ljava/lang/String;

    return-void
.end method

.method public setMccCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->mccCode:Ljava/lang/String;

    return-void
.end method

.method public setMncCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->mncCode:Ljava/lang/String;

    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->modelName:Ljava/lang/String;

    return-void
.end method

.method public setMultiCscCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->multiCscCode:Ljava/lang/String;

    return-void
.end method

.method public setNetworkCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->networkCode:Ljava/lang/String;

    return-void
.end method

.method public setOmcVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->omcVersion:Ljava/lang/String;

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->osVersion:Ljava/lang/String;

    return-void
.end method

.method public setSalesCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->salesCode:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setSpnCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->spnCode:Ljava/lang/String;

    return-void
.end method

.method public setSubsetCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->subsetCode:Ljava/lang/String;

    return-void
.end method

.method public settMccCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->tMccCode:Ljava/lang/String;

    return-void
.end method

.method public settMncCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->tMncCode:Ljava/lang/String;

    return-void
.end method
