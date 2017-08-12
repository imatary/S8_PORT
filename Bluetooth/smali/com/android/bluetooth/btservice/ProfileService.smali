.class public abstract Lcom/android/bluetooth/btservice/ProfileService;
.super Landroid/app/Service;
.source "ProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field public static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final BLUETOOTH_PRIVILEGED:Ljava/lang/String; = "android.permission.BLUETOOTH_PRIVILEGED"

.field private static final DBG:Z

.field private static final PROFILE_SERVICE_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothProfileService"

.field private static sReferenceCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

.field private mCleaningUp:Z

.field protected mName:Ljava/lang/String;

.field protected mStartError:Z

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/ProfileService;->sReferenceCount:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStarted:Z

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    sget-boolean v1, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/bluetooth/btservice/ProfileService;->sReferenceCount:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/bluetooth/btservice/ProfileService;->sReferenceCount:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/android/bluetooth/btservice/ProfileService;->sReferenceCount:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "REFCOUNT: CREATED. INSTANCE_COUNT="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private doStart(Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v1, "Error starting profile. BluetoothAdapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-boolean v2, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "start()"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    :cond_1
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStarted:Z

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->start()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    if-nez v0, :cond_3

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->notifyProfileServiceStateChanged(I)V

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStarted:Z

    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v1, "Error starting profile. BluetoothAdapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doStop(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->stop()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "stop()"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->notifyProfileServiceStateChanged(I)V

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->stopSelf()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStarted:Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v1, "Unable to stop profile"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static println(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected cleanup()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string/jumbo v0, "\nProfile: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public dumpProto(Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;)V
    .locals 0

    return-void
.end method

.method protected finalize()V
    .locals 4

    sget-boolean v1, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/bluetooth/btservice/ProfileService;->sReferenceCount:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/bluetooth/btservice/ProfileService;->sReferenceCount:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/android/bluetooth/btservice/ProfileService;->sReferenceCount:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "REFCOUNT: FINALIZED. INSTANCE_COUNT="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
.end method

.method protected isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStarted:Z

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 3

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v2, "notifyProfileConnectionStateChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v2, "notifyProfileConnectionStateChanged() adapterService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected notifyProfileServiceStateChanged(I)V
    .locals 3

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileServiceStateChanged(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v2, "notifyProfileServiceStateChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v2, "notifyProfileServiceStateChanged() adapterService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onBind"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onCreate"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Destroying service."

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService;->removeProfile(Lcom/android/bluetooth/btservice/ProfileService;)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "Cleanup already started... Skipping cleanup()..."

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iput-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void

    :cond_3
    sget-boolean v1, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "cleanup()"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->cleanup()Z

    iget-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    invoke-interface {v1}, Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;->cleanup()Z

    iput-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/4 v5, 0x2

    sget-boolean v3, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "onStartCommand()"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v3, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v4, "Stopping profile service: device does not have BT"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->doStop(Landroid/content/Intent;)V

    return v5

    :cond_2
    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/btservice/ProfileService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v4, "Permission denied!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    if-nez p1, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v4, "Restarting profile service..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4
    const-string/jumbo v3, "action"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.android.bluetooth.btservice.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x80000000

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    iget-object v3, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v4, "Received stop request...Stopping profile..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->doStop(Landroid/content/Intent;)V

    :cond_5
    :goto_0
    return v5

    :cond_6
    const/16 v3, 0xc

    if-ne v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string/jumbo v4, "Received start request. Starting profile..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, p0}, Lcom/android/bluetooth/btservice/AdapterService;->addProfile(Lcom/android/bluetooth/btservice/ProfileService;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->doStart(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v3, "BluetoothProfileService"

    const-string/jumbo v4, "doStart(), adapterService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onUnbind"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected abstract start()Z
.end method

.method protected abstract stop()Z
.end method
