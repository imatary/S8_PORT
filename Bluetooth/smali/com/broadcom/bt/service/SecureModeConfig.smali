.class public final Lcom/broadcom/bt/service/SecureModeConfig;
.super Ljava/lang/Object;
.source "SecureModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;
    }
.end annotation


# static fields
.field private static final BT_SECUREMODE_ALLOW_ALL_PAIRING:I = 0x3

.field private static final BT_SECUREMODE_ALLOW_ALL_SCANS:I = 0x3

.field private static final BT_SECUREMODE_ALLOW_INQUIRY_SCANS:I = 0x2

.field private static final BT_SECUREMODE_ALLOW_LEGACY_PAIR:I = 0x1

.field private static final BT_SECUREMODE_ALLOW_NO_MITM_PAIR:I = 0x2

.field private static final BT_SECUREMODE_ALLOW_PAGE_SCANS:I = 0x1

.field private static final BT_SECUREMODE_DISALLOW_ALL_SCANS:I = 0x0

.field private static final BT_SECUREMODE_DISALLOW_LEGACY_AND_NO_MITM_PAIR:I = 0x0

.field private static final BT_SECUREMODE_ENABLE_A2DP:I = 0x2

.field private static final BT_SECUREMODE_ENABLE_FTP:I = 0x200

.field private static final BT_SECUREMODE_ENABLE_GATT:I = 0x80

.field private static final BT_SECUREMODE_ENABLE_HDP:I = 0x8

.field private static final BT_SECUREMODE_ENABLE_HFP:I = 0x1

.field private static final BT_SECUREMODE_ENABLE_HID:I = 0x4

.field private static final BT_SECUREMODE_ENABLE_MAP:I = 0x100

.field private static final BT_SECUREMODE_ENABLE_OPP:I = 0x20

.field private static final BT_SECUREMODE_ENABLE_PAN:I = 0x10

.field private static final BT_SECUREMODE_ENABLE_PBAP:I = 0x40

.field private static final BT_SECUREMODE_ENABLE_SAP:I = 0x400

.field private static final DBG:Z = true

.field private static final SECURE_MANAGER_ENABLE:Ljava/lang/String; = "enable"

.field private static final SECURE_SETTINGS_ALLOWED_PROFILES:Ljava/lang/String; = "profile_enable_mask"

.field private static final SECURE_SETTINGS_DEV_WHITELIST_BASE:Ljava/lang/String; = "whitelist"

.field private static final SECURE_SETTINGS_MAX_DEV_LIST_SIZE:I = 0x32

.field private static final SECURE_SETTINGS_PAIRING_MODE:Ljava/lang/String; = "pairing_mode"

.field private static final SECURE_SETTINGS_SCAN_MODE:Ljava/lang/String; = "scan_mode"

.field public static final SECURE_SETTINGS_WHITE_LIST_ENABLE:Ljava/lang/String; = "white_liste_enable"

.field private static final TAG:Ljava/lang/String; = "BtConfig.SecureMode"

.field private static mBluetoothProducts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ALLOWED_PROFILES:[Ljava/lang/Class;

.field private mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private mInsecurePairDisabled:Z

.field private mScansDisabled:Z

.field mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

.field private mSecureModeStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/SecureModeConfig;->mBluetoothProducts:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v2, [Ljava/lang/Class;

    iput-object v1, p0, Lcom/broadcom/bt/service/SecureModeConfig;->ALLOWED_PROFILES:[Ljava/lang/Class;

    iput-object p1, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iput-boolean v2, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecureModeStatus:Z

    iput-boolean v2, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mScansDisabled:Z

    iput-boolean v2, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mInsecurePairDisabled:Z

    iput-object v3, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    :try_start_0
    invoke-static {}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->getInstant()Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->isSecureModeEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecureModeStatus:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BtConfig.SecureMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupSimplePreferencesScreen error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private PoplulateDeviceWhiteList()V
    .locals 8

    const/4 v2, -0x1

    const-string/jumbo v5, "BtConfig.SecureMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PoplulateDeviceWhiteList: enabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    invoke-virtual {v7}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->isWhiteListEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->isWhiteListEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->getWhiteListFirstIndex()I

    move-result v2

    :goto_0
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    new-instance v3, Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;

    invoke-direct {v3, p0}, Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;-><init>(Lcom/broadcom/bt/service/SecureModeConfig;)V

    iget-object v5, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    invoke-virtual {v5, v2}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->getWhiteListName(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    invoke-virtual {v5, v2}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->getWhiteListCod(I)I

    move-result v5

    iput v5, v3, Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;->cod:I

    iget-object v5, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    invoke-virtual {v5, v2}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->getWhiteListUuids(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_1

    :try_start_0
    iget-object v5, v3, Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;->uuids:Ljava/util/ArrayList;

    aget-object v6, v4, v1

    invoke-static {v6}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v5, "BtConfig.SecureMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UUID parsing Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    sget-object v5, Lcom/broadcom/bt/service/SecureModeConfig;->mBluetoothProducts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;->printProductDetails()V

    iget-object v5, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    invoke-virtual {v5, v2}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->getWhiteListNextIndex(I)I

    move-result v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isVersionOf(Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;Ljava/lang/String;I[Landroid/os/ParcelUuid;)Z
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v2, "BtConfig.SecureMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rmt Dev info: name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  cod:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "BtConfig.SecureMode"

    const-string/jumbo v4, "Whitelist Product info"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;->printProductDetails()V

    if-eqz p4, :cond_0

    const-string/jumbo v2, "BtConfig.SecureMode"

    const-string/jumbo v4, " Remote UUIDs"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_1

    const-string/jumbo v2, "BtConfig.SecureMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p4, v0

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "BtConfig.SecureMode"

    const-string/jumbo v4, " Remote UUID is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v2, p1, Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;->cod:I

    if-eqz v2, :cond_2

    if-nez p3, :cond_3

    :cond_2
    return v3

    :cond_3
    iget v2, p1, Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;->cod:I

    if-eq v2, p3, :cond_4

    return v3

    :cond_4
    iget-object v2, p1, Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;->name:Ljava/lang/String;

    if-eqz v2, :cond_5

    if-nez p2, :cond_6

    :cond_5
    return v3

    :cond_6
    iget-object v2, p1, Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    return v3

    :cond_8
    iget-object v2, p1, Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    return v3

    :cond_9
    iget-object v2, p1, Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;->uuids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_a

    if-nez p4, :cond_b

    :cond_a
    return v3

    :cond_b
    array-length v4, p4

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_d

    aget-object v1, p4, v2

    iget-object v5, p1, Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;->uuids:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    return v3

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_d
    const/4 v2, 0x1

    return v2
.end method

.method private populateAllowedProfiles()V
    .locals 6

    invoke-static {}, Lcom/broadcom/bt/service/ProfileConfig;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-class v4, Lcom/android/bluetooth/gatt/GattService;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-class v3, Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    const-string/jumbo v4, "hfp_enable"

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->getSecureModeSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-class v4, Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-class v3, Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    const-string/jumbo v4, "a2dp_enable"

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->getSecureModeSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-class v4, Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-class v3, Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    const-string/jumbo v4, "hid_enable"

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->getSecureModeSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-class v4, Lcom/android/bluetooth/hid/HidService;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-class v3, Lcom/android/bluetooth/hid/HidService;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v3, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    const-string/jumbo v4, "hdp_enable"

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->getSecureModeSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-class v4, Lcom/android/bluetooth/hdp/HealthService;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-class v3, Lcom/android/bluetooth/hdp/HealthService;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v3, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    const-string/jumbo v4, "pan_enable"

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->getSecureModeSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-class v4, Lcom/android/bluetooth/pan/PanService;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-class v3, Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v3, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    const-string/jumbo v4, "map_enable"

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->getSecureModeSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-class v4, Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-class v3, Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Class;

    iput-object v3, p0, Lcom/broadcom/bt/service/SecureModeConfig;->ALLOWED_PROFILES:[Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    const-string/jumbo v4, "BtConfig.SecureMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Profiles allowed "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/broadcom/bt/service/SecureModeConfig;->ALLOWED_PROFILES:[Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public applyConfiguration()V
    .locals 4

    const-string/jumbo v0, "BtConfig.SecureMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Writting Sec mode settings SecMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecureModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " scan_mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mScansDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pair_mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mInsecurePairDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-boolean v1, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecureModeStatus:Z

    iget-boolean v2, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mScansDisabled:Z

    iget-boolean v3, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mInsecurePairDisabled:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->secureModeConfigureNative(ZZZ)Z

    return-void
.end method

.method public cleanup()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iput-object v0, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    sget-object v0, Lcom/broadcom/bt/service/SecureModeConfig;->mBluetoothProducts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getAllowedProfiles()[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/broadcom/bt/service/SecureModeConfig;->ALLOWED_PROFILES:[Ljava/lang/Class;

    return-object v0
.end method

.method public isDeviceWhitelisted(Ljava/lang/String;I[Landroid/os/ParcelUuid;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->isWhiteListEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    sget-object v4, Lcom/broadcom/bt/service/SecureModeConfig;->mBluetoothProducts:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/broadcom/bt/service/SecureModeConfig;->mBluetoothProducts:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/broadcom/bt/service/SecureModeConfig;->isVersionOf(Lcom/broadcom/bt/service/SecureModeConfig$BluetoothProduct;Ljava/lang/String;I[Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    monitor-exit v4

    return v2

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public isProfileAllowed(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->getSecureModeSetting(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSecureModeOn()Z
    .locals 3

    const-string/jumbo v0, "BtConfig.SecureMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSecureModeOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecureModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecureModeStatus:Z

    return v0
.end method

.method public readConfiguration()Z
    .locals 4

    iget-object v1, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/16 v0, 0x400

    const-string/jumbo v1, "BtConfig.SecureMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BT test class = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "BtConfig.SecureMode"

    const-string/jumbo v2, "Reading SecureMode Settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecureModeStatus:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BtConfig.SecureMode"

    const-string/jumbo v2, "Secure Mode is turned on... Reading rest of config"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    const-string/jumbo v2, "scan_mode"

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->getSecureModeSetting(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mScansDisabled:Z

    iget-object v1, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mSecMgr:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    const-string/jumbo v2, "pairing_mode"

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->getSecureModeSetting(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/broadcom/bt/service/SecureModeConfig;->mInsecurePairDisabled:Z

    invoke-direct {p0}, Lcom/broadcom/bt/service/SecureModeConfig;->populateAllowedProfiles()V

    invoke-direct {p0}, Lcom/broadcom/bt/service/SecureModeConfig;->PoplulateDeviceWhiteList()V

    :cond_1
    const/4 v1, 0x1

    return v1
.end method
