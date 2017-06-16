.class Lcom/android/bluetooth/avrcp/RemoteDevice;
.super Ljava/lang/Object;
.source "AvrcpControllerClasses.java"


# instance fields
.field mAbsVolNotificationState:I

.field mBTDevice:Landroid/bluetooth/BluetoothDevice;

.field mBatteryStatus:I

.field mFirstAbsVolCmdRecvd:Z

.field mNotificationLabel:I

.field mRemoteFeatures:I

.field mSystemStatus:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0xff

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mBTDevice:Landroid/bluetooth/BluetoothDevice;

    iput v2, p0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mRemoteFeatures:I

    iput v1, p0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mBatteryStatus:I

    iput v1, p0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mSystemStatus:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mAbsVolNotificationState:I

    iput v1, p0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mNotificationLabel:I

    iput-boolean v2, p0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mFirstAbsVolCmdRecvd:Z

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0xff

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mBTDevice:Landroid/bluetooth/BluetoothDevice;

    iput v2, p0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mRemoteFeatures:I

    iput v1, p0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mBatteryStatus:I

    iput v1, p0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mSystemStatus:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mAbsVolNotificationState:I

    iput v1, p0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mNotificationLabel:I

    iput-boolean v2, p0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mFirstAbsVolCmdRecvd:Z

    return-void
.end method

.method public isBrowsingSupported()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mRemoteFeatures:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isMetaDataSupported()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/bluetooth/avrcp/RemoteDevice;->mRemoteFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
