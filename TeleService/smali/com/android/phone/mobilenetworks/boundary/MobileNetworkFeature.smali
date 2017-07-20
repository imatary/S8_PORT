.class public Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;
.super Ljava/lang/Object;
.source "MobileNetworkFeature.java"


# instance fields
.field mCscFeatureWrapper:Lcom/android/phone/mobilenetworks/boundary/CscFeatureWrapper;

.field mFloatingFeatureWrapper:Lcom/android/phone/mobilenetworks/boundary/FloatingFeatureWrapper;

.field mProductFeatureWrapper:Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/phone/mobilenetworks/boundary/CscFeatureWrapper;

    invoke-direct {v0}, Lcom/android/phone/mobilenetworks/boundary/CscFeatureWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->mCscFeatureWrapper:Lcom/android/phone/mobilenetworks/boundary/CscFeatureWrapper;

    new-instance v0, Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;

    invoke-direct {v0}, Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->mProductFeatureWrapper:Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;

    new-instance v0, Lcom/android/phone/mobilenetworks/boundary/FloatingFeatureWrapper;

    invoke-direct {v0}, Lcom/android/phone/mobilenetworks/boundary/FloatingFeatureWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->mFloatingFeatureWrapper:Lcom/android/phone/mobilenetworks/boundary/FloatingFeatureWrapper;

    return-void
.end method

.method private wirteLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method private writeLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "MobileNetworkFeature"

    invoke-static {v0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworkLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeLog(Ljava/lang/String;Z)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->writeLog(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->mCscFeatureWrapper:Lcom/android/phone/mobilenetworks/boundary/CscFeatureWrapper;

    invoke-virtual {v1, p1}, Lcom/android/phone/mobilenetworks/boundary/CscFeatureWrapper;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->writeLog(Ljava/lang/String;Z)V

    return v0
.end method

.method public getCommonHwVendroConfig()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->mProductFeatureWrapper:Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;->getCommonHwVendroConfig()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "SecProductFeature_COMMON.SEC_PRODUCT_FEATURE_COMMON_HW_VENDOR_CONFIG"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->wirteLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->mCscFeatureWrapper:Lcom/android/phone/mobilenetworks/boundary/CscFeatureWrapper;

    invoke-virtual {v1, p1}, Lcom/android/phone/mobilenetworks/boundary/CscFeatureWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->wirteLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isRilShowDataSelectPopupOnBootUp()Z
    .locals 3

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->mProductFeatureWrapper:Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;->isRilShowDataSelectPopupOnBootUp()Z

    move-result v1

    const-string/jumbo v0, "SecProductFeature_RIL.SEC_PRODUCT_FEATURE_RIL_SHOW_DATA_SELECT_POPUP_ON_BOOTUP"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->writeLog(Ljava/lang/String;Z)V

    return v1
.end method

.method public isRilSupportAllRatProduct()Z
    .locals 3

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->mProductFeatureWrapper:Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;->isRilSupportAllRatProduct()Z

    move-result v1

    const-string/jumbo v0, "SecProductFeature_RIL.SEC_PRODUCT_FEATURE_RIL_SUPPORT_ALL_RAT"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->writeLog(Ljava/lang/String;Z)V

    return v1
.end method

.method public isRilSupportCdmaDunProduct()Z
    .locals 3

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->mProductFeatureWrapper:Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;->isRilSupportCdmaDunProduct()Z

    move-result v1

    const-string/jumbo v0, "SecProductFeature_RIL.SEC_PRODUCT_FEATURE_RIL_SUPPORT_CDMA_DUN"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->writeLog(Ljava/lang/String;Z)V

    return v1
.end method

.method public isSupportLTERoaming()Z
    .locals 3

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->mProductFeatureWrapper:Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;->isSupportLTERoaming()Z

    move-result v1

    const-string/jumbo v0, "SecProductFeature_RIL.SEC_PRODUCT_FEATURE_RIL_SUPPORT_LTE_ROAMING"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->writeLog(Ljava/lang/String;Z)V

    return v1
.end method

.method public isSupportRoamingRegWarningNoti()Z
    .locals 3

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->mProductFeatureWrapper:Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;->isSupportRoamingRegWarningNoti()Z

    move-result v1

    const-string/jumbo v0, "SecProductFeature_RIL.SEC_PRODUCT_FEATURE_RIL_ROAMING_REG_WARNING_NOTI"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->writeLog(Ljava/lang/String;Z)V

    return v1
.end method

.method public isSupportSupportSoftSim()Z
    .locals 3

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->mProductFeatureWrapper:Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;->isSupportSupportSoftSim()Z

    move-result v1

    const-string/jumbo v0, "SecProductFeature_COMMON.SEC_PRODUCT_FEATURE_COMMON_SUPPORT_SOFTSIM"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->writeLog(Ljava/lang/String;Z)V

    return v1
.end method

.method public isSupportWcdmaInSlave()Z
    .locals 3

    const-string/jumbo v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_WCDMA_INSLAVE"

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->mFloatingFeatureWrapper:Lcom/android/phone/mobilenetworks/boundary/FloatingFeatureWrapper;

    invoke-virtual {v2, v0}, Lcom/android/phone/mobilenetworks/boundary/FloatingFeatureWrapper;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->writeLog(Ljava/lang/String;Z)V

    return v1
.end method
