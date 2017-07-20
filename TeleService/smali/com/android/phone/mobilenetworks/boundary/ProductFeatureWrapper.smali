.class Lcom/android/phone/mobilenetworks/boundary/ProductFeatureWrapper;
.super Ljava/lang/Object;
.source "MobileNetworkFeature.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getCommonHwVendroConfig()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Strawberry"

    return-object v0
.end method

.method isRilShowDataSelectPopupOnBootUp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isRilSupportAllRatProduct()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isRilSupportCdmaDunProduct()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isSupportLTERoaming()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isSupportRoamingRegWarningNoti()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isSupportSupportSoftSim()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
