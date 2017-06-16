.class public final Lcom/broadcom/bt/service/BluetoothSecMgrProxy;
.super Ljava/lang/Object;
.source "BluetoothSecMgrProxy.java"


# static fields
.field private static final DBG:Z = true

.field public static final SECURE_SETTING_A2DP_ENABLE:Ljava/lang/String; = "a2dp_enable"

.field public static final SECURE_SETTING_FTP_ENABLE:Ljava/lang/String; = "ftp_enable"

.field public static final SECURE_SETTING_GATT_ENABLE:Ljava/lang/String; = "gatt_enable"

.field public static final SECURE_SETTING_HDP_ENABLE:Ljava/lang/String; = "hdp_enable"

.field public static final SECURE_SETTING_HFP_ENABLE:Ljava/lang/String; = "hfp_enable"

.field public static final SECURE_SETTING_HID_ENABLE:Ljava/lang/String; = "hid_enable"

.field public static final SECURE_SETTING_MAP_ENABLE:Ljava/lang/String; = "map_enable"

.field public static final SECURE_SETTING_OPP_ENABLE:Ljava/lang/String; = "opp_enable"

.field public static final SECURE_SETTING_PAIRING_MODE:Ljava/lang/String; = "pairing_mode"

.field public static final SECURE_SETTING_PAN_ENABLE:Ljava/lang/String; = "pan_enable"

.field public static final SECURE_SETTING_PBAP_ENABLE:Ljava/lang/String; = "pbap_enable"

.field public static final SECURE_SETTING_SAP_ENABLE:Ljava/lang/String; = "sap_enable"

.field public static final SECURE_SETTING_SCAN_MODE:Ljava/lang/String; = "scan_mode"

.field private static final TAG:Ljava/lang/String; = "BluetoothSecureManager"

.field private static This:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;


# instance fields
.field private mService:Landroid/bluetooth/IBluetoothSecureManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->This:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->loadSecureManagerProxy()Landroid/bluetooth/IBluetoothSecureManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    return-void
.end method

.method public static getInstant()Lcom/broadcom/bt/service/BluetoothSecMgrProxy;
    .locals 3

    const-string/jumbo v0, "BluetoothSecureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInstant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->This:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->This:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->This:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    return-object v0

    :cond_0
    const-class v1, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->This:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    if-nez v0, :cond_1

    new-instance v0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    invoke-direct {v0}, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->This:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    sget-object v0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->This:Lcom/broadcom/bt/service/BluetoothSecMgrProxy;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static loadSecureManagerProxy()Landroid/bluetooth/IBluetoothSecureManagerService;
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v4, "android.os.ServiceManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v4, "BluetoothSecureManager"

    const-string/jumbo v5, "calling getMethod for getService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "getService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string/jumbo v4, "BluetoothSecureManager"

    const-string/jumbo v5, "calling getService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "bluetooth_secure_mode_manager"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    const-string/jumbo v4, "BluetoothSecureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getService return binder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSecureManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v2

    const-string/jumbo v4, "BluetoothSecureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "load bt secure manager failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    :cond_0
    return-void
.end method

.method public getSecureModeSetting(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getSecureModeSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BluetoothSecureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSecureModeSetting failed with exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getWhiteListCod(I)I
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v2, "BluetoothSecureManager"

    const-string/jumbo v3, "getWhiteListCod"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListCod(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "BluetoothSecureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWhiteListCod failed with exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWhiteListFirstIndex()I
    .locals 5

    const/4 v1, -0x1

    const-string/jumbo v2, "BluetoothSecureManager"

    const-string/jumbo v3, "getWhiteListFirstIndex"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListFirstIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BluetoothSecureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWhiteListFirstIndex failed with exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWhiteListName(I)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v2, "BluetoothSecureManager"

    const-string/jumbo v3, "getWhiteListName"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BluetoothSecureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWhiteListName failed with exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWhiteListNextIndex(I)I
    .locals 5

    const/4 v1, -0x1

    const-string/jumbo v2, "BluetoothSecureManager"

    const-string/jumbo v3, "getWhiteListNextIndex"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListNextIndex(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BluetoothSecureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWhiteListNextIndex failed with exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWhiteListUuids(I)[Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, "BluetoothSecureManager"

    const-string/jumbo v2, "getWhiteListUuids"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListUuids(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothSecureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getWhiteListUuids failed with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public isSecureModeEnabled()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothSecureManagerService;->isSecureModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BluetoothSecureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSecureModeEnabled failed with exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isWhiteListEnabled()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/BluetoothSecMgrProxy;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothSecureManagerService;->isWhiteListEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BluetoothSecureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSecureModeEnabled failed with exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
