.class public Lcom/samsung/bt/hfp/ConnectionPolicyHelper;
.super Ljava/lang/Object;
.source "ConnectionPolicyHelper.java"


# static fields
.field private static final COD_DEFAULT:I = 0x1f00

.field private static final COD_WATCH:I = 0x704

.field private static final DEFAULT_ADDRESS:Ljava/lang/String; = "FF:FF:FF:FF:FF:FF"

.field private static final DEVICE_TYPE_GEAR:I = 0x2

.field private static final DEVICE_TYPE_GEAR1:I = 0x1

.field private static final DEVICE_TYPE_GENERIC:I = 0x0

.field protected static final MANUFACTURER_DEVICE_ID_GEAR:B = 0x1t

.field protected static final MANUFACTURER_DEVICE_ID_WEARABLE:B = -0x1t

.field protected static final MANUFACTURER_DEVICE_ID_WINGTIP:B = 0x2t

.field protected static final MANUFACTURER_DEVICE_TYPE_SLD_L:B = 0x3t

.field protected static final MANUFACTURER_DEVICE_TYPE_SLD_R:B = 0x4t

.field protected static final MANUFACTURER_OFFSET_DEVICE_ID:I = 0x7

.field protected static final MANUFACTURER_OFFSET_DEVICE_TYPE:I = 0xa

.field private static final NAME_WATCH_FRIENDLY:Ljava/lang/String; = "Samsung Galaxy Gear"

.field private static final NAME_WATCH_MODEL:Ljava/lang/String; = "SM-V700"

.field private static final NAME_WATCH_SERIES_FRIENDLY:Ljava/lang/String; = "Galaxy Gear"

.field private static final SAMSUNG_GEAR:Ljava/lang/String; = "samsung_gear"

.field private static final TAG:Ljava/lang/String; = "ConnectionPolicyHelper"

.field private static final UUID_SAP:Ljava/lang/String; = "a49eb41e-cb06-495c-9f4f-bb80a90cdf00"


# instance fields
.field private mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

.field private mMaxHeadsetConnection:I

.field private mMaxWearableConnection:I


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;->mMaxWearableConnection:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;->mMaxHeadsetConnection:I

    return-void
.end method

.method private isGear(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerData()[B

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    aget-byte v1, v0, v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    aget-byte v1, v0, v1

    if-ne v1, v4, :cond_1

    const-string/jumbo v1, "ConnectionPolicyHelper"

    const-string/jumbo v2, "isGear is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    const-string/jumbo v1, "ConnectionPolicyHelper"

    const-string/jumbo v2, "isGear is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method


# virtual methods
.method public isMetrico(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "00:60:F3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ConnectionPolicyHelper"

    const-string/jumbo v2, "This Device is Metrico!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isNewConnectionAcceptable(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 9

    iget-object v6, p0, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v6}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    const-string/jumbo v6, "ConnectionPolicyHelper"

    const-string/jumbo v7, "isNewConnectionAcceptable"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "ConnectionPolicyHelper"

    const-string/jumbo v7, "mCurrentDevicesList size is 0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;->isWatch(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    const-string/jumbo v6, "ConnectionPolicyHelper"

    const-string/jumbo v7, "new target is Watch"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;->isWatch(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "ConnectionPolicyHelper"

    const-string/jumbo v7, "Watch is already connected"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget v6, p0, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;->mMaxHeadsetConnection:I

    if-gt v3, v6, :cond_4

    iget v6, p0, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;->mMaxWearableConnection:I

    if-gt v5, v6, :cond_4

    const/4 v4, 0x1

    :goto_3
    const-string/jumbo v6, "ConnectionPolicyHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "watchTypeCounter == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", normalTypeCounter :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " return : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public isWatch(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 14

    const/4 v8, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v11, "ConnectionPolicyHelper"

    const-string/jumbo v12, "Device is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v11}, Lcom/android/bluetooth/hfp/HeadsetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "samsung_gear"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v11, p0, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v11}, Lcom/android/bluetooth/hfp/HeadsetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "samsung_gear"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/16 v2, 0x1f00

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    :cond_2
    const-string/jumbo v11, "ConnectionPolicyHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getDeviceClass : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, 0x1f00

    if-eq v2, v11, :cond_3

    if-nez v10, :cond_7

    :cond_3
    const-string/jumbo v11, "SM-V700"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v11, "Samsung Galaxy Gear"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Galaxy Gear"

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    :cond_5
    :goto_0
    or-int v11, v7, v5

    or-int/2addr v11, v8

    or-int/2addr v11, v6

    invoke-direct {p0, p1}, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;->isGear(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v12

    or-int v9, v11, v12

    const-string/jumbo v11, "ConnectionPolicyHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "It may be Watch : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_6
    const-string/jumbo v11, "ConnectionPolicyHelper"

    const-string/jumbo v12, "GM_address is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const/16 v11, 0x704

    if-ne v2, v11, :cond_9

    const/4 v4, 0x1

    :goto_1
    const-string/jumbo v11, "a49eb41e-cb06-495c-9f4f-bb80a90cdf00"

    invoke-static {v11}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v4, :cond_a

    if-nez v3, :cond_8

    invoke-direct {p0, p1}, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;->isGear(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_8
    const/4 v11, 0x1

    return v11

    :cond_9
    const/4 v4, 0x0

    goto :goto_1

    :cond_a
    const/4 v11, 0x0

    return v11
.end method
