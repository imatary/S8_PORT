.class public Lcom/samsung/bt/pan/EnhancedTetheringManager;
.super Ljava/lang/Object;
.source "EnhancedTetheringManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/bt/pan/EnhancedTetheringManager$1;
    }
.end annotation


# static fields
.field private static final ACTION_NAP_ALARM_EXPIRED:Ljava/lang/String; = "com.samsung.bluetooth.tethering.ACTION_NAP_ALARM_EXPIRED"

.field private static final ACTION_PANU_ALARM_EXPIRED:Ljava/lang/String; = "com.samsung.bluetooth.tethering.ACTION_PANU_ALARM_EXPIRED"

.field private static final DBG:Z

.field private static final DEV_LIST_TETHERED:Ljava/lang/String; = "device_list_tethered"

.field private static final LAST_DEV_TETHERED:Ljava/lang/String; = "last_device_tethered"

.field private static final PREF_KEY_TETHERED_DEV_LIST:Ljava/lang/String; = "pref_tethered_device_list"

.field private static final TAG:Ljava/lang/String; = "EnhancedTetheringManager"


# instance fields
.field private isNapAdvertising:Z

.field private isPanuScanning:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private mETMConnected:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLeHelper:Lcom/samsung/bt/pan/ETMLeHelper;

.field private mNapAlarmTimerIntent:Landroid/app/PendingIntent;

.field private mPanuAlarmTimerIntent:Landroid/app/PendingIntent;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherEnabled:Z

.field private mTetheredDeviceHistory:Landroid/content/SharedPreferences;


# direct methods
.method static synthetic -get0(Lcom/samsung/bt/pan/EnhancedTetheringManager;)Lcom/samsung/bt/pan/ETMLeHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mLeHelper:Lcom/samsung/bt/pan/ETMLeHelper;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/bt/pan/EnhancedTetheringManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mTetherEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/bt/pan/EnhancedTetheringManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->isPanuScanning:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mTetherEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mETMConnected:Z

    iput-boolean v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->isPanuScanning:Z

    iput-boolean v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->isNapAdvertising:Z

    new-instance v0, Lcom/samsung/bt/pan/EnhancedTetheringManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/bt/pan/EnhancedTetheringManager$1;-><init>(Lcom/samsung/bt/pan/EnhancedTetheringManager;)V

    iput-object v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v0, "EnhancedTetheringManager"

    const-string/jumbo v1, "EnhancedTetheringManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private removeNapWakeAlarm()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "EnhancedTetheringManager"

    const-string/jumbo v2, "removeNapWakeAlarm"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.bluetooth.tethering.ACTION_NAP_ALARM_EXPIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mNapAlarmTimerIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mNapAlarmTimerIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mNapAlarmTimerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mNapAlarmTimerIntent:Landroid/app/PendingIntent;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "EnhancedTetheringManager"

    const-string/jumbo v2, "mNapAlarmTimerIntent is already NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removePanuWakeAlarm()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "EnhancedTetheringManager"

    const-string/jumbo v2, "removePanuWakeAlarm"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.bluetooth.tethering.ACTION_PANU_ALARM_EXPIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mPanuAlarmTimerIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mPanuAlarmTimerIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mPanuAlarmTimerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mPanuAlarmTimerIntent:Landroid/app/PendingIntent;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "EnhancedTetheringManager"

    const-string/jumbo v2, "mPanuAlarmTimerIntent is already NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setNapWakeAlarm()V
    .locals 8

    const-wide/32 v4, 0xdbba0

    const-string/jumbo v0, "EnhancedTetheringManager"

    const-string/jumbo v1, "setNapWakeAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.bluetooth.tethering.ACTION_NAP_ALARM_EXPIRED"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v2, v0, v4

    iget-object v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v6, 0x10000000

    invoke-static {v0, v1, v7, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mNapAlarmTimerIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mNapAlarmTimerIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private setPanuWakeAlarm()V
    .locals 8

    const-string/jumbo v1, "EnhancedTetheringManager"

    const-string/jumbo v4, "setPanuWakeAlarm"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.bluetooth.tethering.ACTION_PANU_ALARM_EXPIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x124f80

    add-long v2, v4, v6

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    invoke-static {v1, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mPanuAlarmTimerIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mPanuAlarmTimerIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public addTetheredDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 8

    const-string/jumbo v5, "EnhancedTetheringManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addTetheredDevice : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->getTetheredDeviceList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, ""

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mTetheredDeviceHistory:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v5, "device_list_tethered"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public cancelFindTetherServer()V
    .locals 2

    const-string/jumbo v0, "EnhancedTetheringManager"

    const-string/jumbo v1, "cancelFindTetherServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mLeHelper:Lcom/samsung/bt/pan/ETMLeHelper;

    invoke-virtual {v0}, Lcom/samsung/bt/pan/ETMLeHelper;->stopScan()V

    invoke-direct {p0}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->removePanuWakeAlarm()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->isPanuScanning:Z

    return-void
.end method

.method public clearLastTetheredDevice()V
    .locals 3

    const-string/jumbo v1, "EnhancedTetheringManager"

    const-string/jumbo v2, "clearLastTetheredDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mTetheredDeviceHistory:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_device_tethered"

    const-string/jumbo v2, "NOT FOUND"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getLastTetheredDevice()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mTetheredDeviceHistory:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "last_device_tethered"

    const-string/jumbo v2, "NOT FOUND"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredDeviceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mTetheredDeviceHistory:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "device_list_tethered"

    const-string/jumbo v5, "/"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public isLastTetheredDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const-string/jumbo v1, "EnhancedTetheringManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLastConnectedDevice : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mTetheredDeviceHistory:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "last_device_tethered"

    const-string/jumbo v3, "NOT FOUND"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isNapAdvertising()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->isNapAdvertising:Z

    return v0
.end method

.method public isPanuScanning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->isPanuScanning:Z

    return v0
.end method

.method public removeTetheredDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 8

    const-string/jumbo v5, "EnhancedTetheringManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeTetheredDevice : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->getTetheredDeviceList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v2, ""

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mTetheredDeviceHistory:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v5, "device_list_tethered"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public setLastTetheredDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    const-string/jumbo v1, "EnhancedTetheringManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLastTetheredDevice : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mTetheredDeviceHistory:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_device_tethered"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public start()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "EnhancedTetheringManager"

    const-string/jumbo v3, "start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pref_tethered_device_list"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mTetheredDeviceHistory:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.bluetooth.tethering.ACTION_NAP_ALARM_EXPIRED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.bluetooth.tethering.ACTION_PANU_ALARM_EXPIRED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mTetherEnabled:Z

    iget-object v2, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mLeHelper:Lcom/samsung/bt/pan/ETMLeHelper;

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/bt/pan/ETMLeHelper;

    iget-object v3, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/samsung/bt/pan/ETMLeHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mLeHelper:Lcom/samsung/bt/pan/ETMLeHelper;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->getLastTetheredDevice()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/bt/pan/EnhancedTetheringManager;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "EnhancedTetheringManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Last Tethered Device : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v2, "NOT FOUND"

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->startFindTetherServer()V

    :cond_2
    return-void
.end method

.method public startFindTetherServer()V
    .locals 4

    const-string/jumbo v1, "EnhancedTetheringManager"

    const-string/jumbo v2, "startFindTetherServer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mLeHelper:Lcom/samsung/bt/pan/ETMLeHelper;

    invoke-virtual {v1}, Lcom/samsung/bt/pan/ETMLeHelper;->startScan()V

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mTetheredDeviceHistory:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "last_device_tethered"

    const-string/jumbo v3, "NOT FOUND"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mLeHelper:Lcom/samsung/bt/pan/ETMLeHelper;

    invoke-virtual {v1, v0}, Lcom/samsung/bt/pan/ETMLeHelper;->setTetheredDeviceFilter(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->setPanuWakeAlarm()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->isPanuScanning:Z

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "EnhancedTetheringManager"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mTetherEnabled:Z

    iget-object v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0, v2}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->tetherEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->cancelFindTetherServer()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mLeHelper:Lcom/samsung/bt/pan/ETMLeHelper;

    return-void
.end method

.method public tetherEnabled(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "EnhancedTetheringManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tetherEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iput-boolean v4, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mTetherEnabled:Z

    iget-object v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mLeHelper:Lcom/samsung/bt/pan/ETMLeHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/bt/pan/ETMLeHelper;

    iget-object v1, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/samsung/bt/pan/ETMLeHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mLeHelper:Lcom/samsung/bt/pan/ETMLeHelper;

    :cond_0
    iget-object v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mLeHelper:Lcom/samsung/bt/pan/ETMLeHelper;

    invoke-virtual {v0}, Lcom/samsung/bt/pan/ETMLeHelper;->startAdvertise()V

    invoke-direct {p0}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->setNapWakeAlarm()V

    iput-boolean v4, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->isNapAdvertising:Z

    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mTetherEnabled:Z

    iget-object v0, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->mLeHelper:Lcom/samsung/bt/pan/ETMLeHelper;

    invoke-virtual {v0}, Lcom/samsung/bt/pan/ETMLeHelper;->stopAdvertise()V

    invoke-direct {p0}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->removeNapWakeAlarm()V

    iput-boolean v3, p0, Lcom/samsung/bt/pan/EnhancedTetheringManager;->isNapAdvertising:Z

    goto :goto_0
.end method
