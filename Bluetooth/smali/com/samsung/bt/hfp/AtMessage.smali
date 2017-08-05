.class public Lcom/samsung/bt/hfp/AtMessage;
.super Ljava/lang/Object;
.source "AtMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/bt/hfp/AtMessage$1;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final ACTION_MESSAGE_DELIVERY_FOR_ATMSG:Ljava/lang/String; = "com.samsung.bt.hfp.intent.action.MESSAGE_DELIVERY_FOR_ATMSG"

.field public static final ACTION_MESSAGE_SENT_FOR_ATMSG:Ljava/lang/String; = "com.samsung.bt.hfp.intent.action.MESSAGE_SENT_FOR_ATMSG"

.field private static final ALL:I = 0x4

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final COL_ADDRESS:I = 0x1

.field private static final COL_BODY:I = 0x4

.field private static final COL_DATE:I = 0x2

.field private static final COL_ID:I = 0x0

.field private static final COL_READ:I = 0x3

.field private static final DBG:Z

.field private static final MobileEquipment:Ljava/lang/String; = "ME"

.field private static final NEED_AUTH_CMGD:I = 0x3

.field private static final NEED_AUTH_CMGL:I = 0x0

.field private static final NEED_AUTH_CMGR:I = 0x1

.field private static final NEED_AUTH_CMGS:I = 0x2

.field private static final NEED_AUTH_DEFAULT:I = -0x1

.field private static final ORDER_BY_SMS_RECEIVED:Ljava/lang/String; = "_id DESC "

.field private static final PDU_MODE:I = 0x0

.field private static final PROJECTION_SMS_RECEIVED:[Ljava/lang/String;

.field private static final READ_CONDITION:Ljava/lang/String; = "type = 1 AND read=1"

.field private static final REC_READ:I = 0x1

.field private static final REC_UNREAD:I = 0x0

.field private static final SELECTION_SMS_RECEIVED:Ljava/lang/String; = "type = 1 AND protocol = ? AND address = ? AND body = ?"

.field private static final SELECTION_SMS_RECEIVED_VZW:Ljava/lang/String; = "type = 1 AND body = ?"

.field private static final SENT_CONDITION:Ljava/lang/String; = "type = 2"

.field protected static final SMS_PROJECTION:[Ljava/lang/String;

.field private static final SMS_READ_COLUMN:Ljava/lang/String; = "read"

.field private static final START_CMGS_TIMEOUT:I = 0x65

.field private static final START_CMGS_TIMEOUT_VALUE:I = 0x1388

.field private static final STO_SENT:I = 0x3

.field private static final STO_UNSENT:I = 0x2

.field private static final SimStorage:Ljava/lang/String; = "SM"

.field private static final TAG:Ljava/lang/String; = "BluetoothAtMessage"

.field private static final TEXT_MODE:I = 0x1

.field static final TYPE_READ:I = 0x0

.field static final TYPE_SET:I = 0x1

.field static final TYPE_TEST:I = 0x2

.field static final TYPE_UNKNOWN:I = -0x1

.field private static final UNREAD_CONDITION:Ljava/lang/String; = "type = 1 AND read=0"

.field private static final USER_CONFIRM_TIMEOUT_VALUE:I = 0x7530

.field private static final USER_TIMEOUT:I = 0x66


# instance fields
.field private isWaitingAuthorization:Z

.field private mCMTIContentObserversEnabled:Z

.field private mCmgdIndex:I

.field private mCmglCondition:Ljava/lang/String;

.field private mCmglStat:I

.field private mCmgrIndex:I

.field private mCmgrStat:I

.field private mCmgsReceived:Z

.field private mCmtiEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mDeviceForCmti:Landroid/bluetooth/BluetoothDevice;

.field private mHandler:Landroid/os/Handler;

.field public mNeedAuth:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mOwnerPhoneNumber:Ljava/lang/String;

.field private mPendingSmsCMTI:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermission:I

.field private final mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

.field private mSimSlotNum:I

.field private mSupportedMsgFormat:I

.field private mSupportedStorage:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/bt/hfp/AtMessage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/bt/hfp/AtMessage;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mPendingSmsCMTI:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/bt/hfp/AtMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/bt/hfp/AtMessage;->isWaitingAuthorization:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/bt/hfp/AtMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmgsReceived:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/bt/hfp/AtMessage;Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/bt/hfp/AtMessage;->processMessageReceived(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/bt/hfp/AtMessage;->DBG:Z

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "address"

    aput-object v1, v0, v4

    const-string/jumbo v1, "date"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "read"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "body"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/bt/hfp/AtMessage;->SMS_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/bt/hfp/AtMessage;->PROJECTION_SMS_RECEIVED:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/hfp/HeadsetServiceHelper;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmtiEnabled:Z

    iput-object v1, p0, Lcom/samsung/bt/hfp/AtMessage;->mDeviceForCmti:Landroid/bluetooth/BluetoothDevice;

    iput-boolean v2, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmgsReceived:Z

    iput-boolean v2, p0, Lcom/samsung/bt/hfp/AtMessage;->mCMTIContentObserversEnabled:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/bt/hfp/AtMessage;->mSimSlotNum:I

    new-instance v1, Lcom/samsung/bt/hfp/AtMessage$1;

    invoke-direct {v1, p0}, Lcom/samsung/bt/hfp/AtMessage$1;-><init>(Lcom/samsung/bt/hfp/AtMessage;)V

    iput-object v1, p0, Lcom/samsung/bt/hfp/AtMessage;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    const-string/jumbo v1, "ME"

    iput-object v1, p0, Lcom/samsung/bt/hfp/AtMessage;->mSupportedStorage:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/bt/hfp/AtMessage;->mSupportedMsgFormat:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/bt/hfp/AtMessage;->mPendingSmsCMTI:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/samsung/bt/hfp/AtMessage;->createCMTIContentObservers()Landroid/database/ContentObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/bt/hfp/AtMessage;->mObserver:Landroid/database/ContentObserver;

    iput v2, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmglStat:I

    const-string/jumbo v1, "type = 1 AND read=0"

    iput-object v1, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmglCondition:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmgrStat:I

    iput v2, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmgrIndex:I

    iput v2, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmgdIndex:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/bt/hfp/AtMessage;->mNeedAuth:I

    iput-boolean v2, p0, Lcom/samsung/bt/hfp/AtMessage;->isWaitingAuthorization:Z

    iput v2, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I

    iget-object v1, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/bt/hfp/AtMessage;->mSimSlotNum:I

    :cond_0
    return-void
.end method

.method private checkAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    const-string/jumbo v2, "checkAccessPermission"

    invoke-static {v2}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "checkAccessPermission - ACTION_CONNECTION_ACCESS_REQUEST"

    invoke-static {v2}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return v1
.end method

.method private createCMTIContentObservers()Landroid/database/ContentObserver;
    .locals 2

    const-string/jumbo v1, "createCMTIContentObservers"

    invoke-static {v1}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/bt/hfp/AtMessage$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/bt/hfp/AtMessage$2;-><init>(Lcom/samsung/bt/hfp/AtMessage;Landroid/os/Handler;)V

    return-object v0
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static getLong(Landroid/database/Cursor;IJ)J
    .locals 4

    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to get long value from col "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    return-wide p2
.end method

.method private getSmsCount(I)I
    .locals 10

    const/4 v3, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "getSmsCount - other condition is not supported"

    invoke-static {v0}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/bt/hfp/AtMessage;->PROJECTION_SMS_RECEIVED:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v6, 0x0

    :cond_1
    return v7

    :cond_2
    const-string/jumbo v0, "BluetoothAtMessage"

    const-string/jumbo v1, "getSmsCount() stroage is locked return here"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :pswitch_0
    const-string/jumbo v3, "type = 1 AND read=0"

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v0, "BluetoothAtMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSmsCount - can\'t get cursor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_3
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "BluetoothAtMessage"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private processMessageReceived(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    sget-boolean v0, Lcom/samsung/bt/hfp/AtMessage;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Querying for SMS inbox message: protocol identifier= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", originating address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " disaplay message body = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/bt/hfp/AtMessage;->PROJECTION_SMS_RECEIVED:[Ljava/lang/String;

    const-string/jumbo v3, "type = 1 AND protocol = ? AND address = ? AND body = ?"

    const-string/jumbo v5, "_id DESC "

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v8, 0x0

    :cond_2
    if-eqz v9, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_3
    const-string/jumbo v0, "BluetoothAtMessage"

    const-string/jumbo v1, "processMessageReceived() stroage is locked return here"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_4
    :try_start_1
    const-string/jumbo v0, "Querying for SMS inbox message again for specific app"

    invoke-static {v0}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, p2, v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/bt/hfp/AtMessage;->PROJECTION_SMS_RECEIVED:[Ljava/lang/String;

    const-string/jumbo v3, "type = 1 AND body = ?"

    const-string/jumbo v5, "_id DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "Querying for SMS inbox message: Either cursor is null or no rows returned"

    invoke-static {v0}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v12

    :try_start_2
    const-string/jumbo v0, "BluetoothAtMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processMessageReceived - can\'t get cursor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v9, 0x1

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_6
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_1
    move-exception v13

    :try_start_3
    const-string/jumbo v0, "BluetoothAtMessage"

    const-string/jumbo v1, "Error querying database"

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v9, 0x1

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_7
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_8
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_9
    throw v0

    :cond_a
    sget-boolean v0, Lcom/samsung/bt/hfp/AtMessage;->DBG:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Message ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    :cond_b
    const/4 v0, -0x1

    if-eq v10, v0, :cond_c

    iget-object v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mDeviceForCmti:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "+CMTI: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/bt/hfp/AtMessage;->mSupportedStorage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    iget-object v1, p0, Lcom/samsung/bt/hfp/AtMessage;->mDeviceForCmti:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private registerCMTIContentObservers(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "registerCMTIContentObservers"

    invoke-static {v1}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/bt/hfp/AtMessage;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/samsung/bt/hfp/AtMessage;->mCMTIContentObserversEnabled:Z

    return-void
.end method


# virtual methods
.method public getCmgsReceived()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmgsReceived:Z

    return v0
.end method

.method public getDestinationAddress([B)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_0

    return-object v8

    :cond_0
    const/4 v2, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v4, v7, 0xff

    if-eqz v4, :cond_1

    add-int/lit8 v2, v4, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x2

    aget-byte v7, p1, v2

    and-int/lit16 v1, v7, 0xff

    add-int/lit8 v7, v1, 0x1

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v5, v7, 0x2

    :try_start_0
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-direct {v6, p1, v2, v5}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "getDestinationAddress ... GsmSmsAddress is null"

    invoke-static {v7}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    return-object v8
.end method

.method public handleCmgdCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleCmgdCommand - atString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Softphone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112005c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    packed-switch p2, :pswitch_data_0

    const-string/jumbo v4, "handleCmgdCommand - invalid parameter"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/16 v1, 0x130

    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "Not supported voice capable"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :pswitch_0
    const-string/jumbo v4, "handleCmgdCommand - Set Command"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const-string/jumbo v4, "="

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    aget-object v4, v0, v7

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmgdIndex:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v7, p0, Lcom/samsung/bt/hfp/AtMessage;->isWaitingAuthorization:Z

    const/4 v4, 0x3

    iput v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mNeedAuth:I

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->checkAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    iput v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I

    iget v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I

    invoke-virtual {p0, p3, v4}, Lcom/samsung/bt/hfp/AtMessage;->processAccessPermission(Landroid/bluetooth/BluetoothDevice;I)V

    iput v6, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v4, "BluetoothAtMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleCmgdCommand - invalid String to parse to int : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x12e

    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public handleCmgfCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 10

    const/4 v9, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleCmgfCommand - atString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Softphone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x112005c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    :cond_1
    iget-object v6, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v7

    invoke-virtual {v6, v3, v1, v7}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :cond_2
    const-string/jumbo v6, "Not supported voice capable"

    invoke-static {v6}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v7

    invoke-virtual {v6, v3, v1, v7}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :pswitch_0
    const-string/jumbo v6, "handleCmgfCommand - Read Command"

    invoke-static {v6}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "+CMGF: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/bt/hfp/AtMessage;->mSupportedMsgFormat:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_1
    const-string/jumbo v6, "handleCmgfCommand - Test Command"

    invoke-static {v6}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "+CMGF: ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/bt/hfp/AtMessage;->mSupportedMsgFormat:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_2
    const-string/jumbo v6, "handleCmgfCommand - Set Command"

    invoke-static {v6}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const-string/jumbo v6, "="

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    aget-object v6, v0, v9

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :try_start_0
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x12f

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v6, "BluetoothAtMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleCmgfCommand - invalid String to parse to int : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x12e

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleCmglCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleCmglCommand - atString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Softphone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x112005c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1

    packed-switch p2, :pswitch_data_0

    const-string/jumbo v5, "handleCmglCommand - invalid parameter"

    invoke-static {v5}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/16 v1, 0x130

    iget-object v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    invoke-virtual {v5, v3, v1, v6}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v5, "Not supported voice capable"

    invoke-static {v5}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    invoke-virtual {v5, v3, v1, v6}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :pswitch_0
    const-string/jumbo v5, "handleCmglCommand - Test Command"

    invoke-static {v5}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "+CMGL: (0,1,3)"

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    iget-object v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    invoke-virtual {v5, v3, v1, v6}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v5, "handleCmglCommand - Set Command"

    invoke-static {v5}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const-string/jumbo v5, "="

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    aget-object v5, v0, v8

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmglStat:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmglStat:I

    if-nez v5, :cond_2

    const-string/jumbo v5, "Carkit try to load unread msg"

    invoke-static {v5}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const-string/jumbo v5, "type = 1 AND read=0"

    iput-object v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmglCondition:Ljava/lang/String;

    :goto_1
    iput-boolean v8, p0, Lcom/samsung/bt/hfp/AtMessage;->isWaitingAuthorization:Z

    iput v7, p0, Lcom/samsung/bt/hfp/AtMessage;->mNeedAuth:I

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->checkAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    iput v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I

    iget v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I

    invoke-virtual {p0, p3, v5}, Lcom/samsung/bt/hfp/AtMessage;->processAccessPermission(Landroid/bluetooth/BluetoothDevice;I)V

    iput v7, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v5, "BluetoothAtMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleCmglCommand - invalid String to parse to int : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x12e

    iget-object v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    invoke-virtual {v5, v3, v1, v6}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto/16 :goto_0

    :cond_2
    iget v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmglStat:I

    if-ne v5, v8, :cond_3

    const-string/jumbo v5, "Carkit try to load read msg"

    invoke-static {v5}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const-string/jumbo v5, "type = 1 AND read=1"

    iput-object v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmglCondition:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmglStat:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    const-string/jumbo v5, "Carkit try to load sent msg"

    invoke-static {v5}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const-string/jumbo v5, "type = 2"

    iput-object v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmglCondition:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 v1, 0x12e

    iget-object v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    invoke-virtual {v5, v3, v1, v6}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleCmgrCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleCmgrCommand - atString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Softphone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x112005c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v5, "Not supported voice capable"

    invoke-static {v5}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    invoke-virtual {v5, v3, v1, v6}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :pswitch_0
    const-string/jumbo v5, "handleCmgrCommand - Test Command"

    invoke-static {v5}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    invoke-virtual {v5, v3, v1, v6}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v5, "handleCmgrCommand - Set Command"

    invoke-static {v5}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const-string/jumbo v5, "="

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    aget-object v5, v0, v8

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmgrIndex:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmgrIndex:I

    if-ge v5, v8, :cond_2

    const/16 v1, 0x141

    iget-object v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    invoke-virtual {v5, v3, v1, v6}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v5, "BluetoothAtMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleCmgrCommand - invalid String to parse to int : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x12e

    iget-object v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    invoke-virtual {v5, v3, v1, v6}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "handleCmgrCommand - Received AT+CMGR"

    invoke-static {v5}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/samsung/bt/hfp/AtMessage;->isWaitingAuthorization:Z

    iput v8, p0, Lcom/samsung/bt/hfp/AtMessage;->mNeedAuth:I

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->checkAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    iput v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I

    iget v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I

    invoke-virtual {p0, p3, v5}, Lcom/samsung/bt/hfp/AtMessage;->processAccessPermission(Landroid/bluetooth/BluetoothDevice;I)V

    iput v7, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleCmgsCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 14

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleCmgsCommand - atString = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string/jumbo v12, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Softphone"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x112005c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v11, "Not supported voice capable"

    invoke-static {v11}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v12

    invoke-virtual {v11, v4, v2, v12}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :pswitch_0
    const-string/jumbo v11, "handleCmgsCommand - Test Command"

    invoke-static {v11}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v4, 0x1

    iget-object v11, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v12

    invoke-virtual {v11, v4, v2, v12}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v11, "handleCmgsCommand - Set Command"

    invoke-static {v11}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v11, "="

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v11, v1

    const/4 v12, 0x2

    if-lt v11, v12, :cond_0

    const/4 v11, 0x1

    aget-object v11, v1, v11

    instance-of v11, v11, Ljava/lang/String;

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    aget-object v11, v1, v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v11, v8

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    const/4 v11, 0x0

    :try_start_0
    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleCmgsCommand - pduLength = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/16 v11, 0xc

    if-eq v9, v11, :cond_2

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/samsung/bt/hfp/AtMessage;->isWaitingAuthorization:Z

    const/4 v11, 0x2

    iput v11, p0, Lcom/samsung/bt/hfp/AtMessage;->mNeedAuth:I

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/samsung/bt/hfp/AtMessage;->checkAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v11

    iput v11, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I

    iget v11, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I

    if-eqz v11, :cond_0

    iget v11, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v11}, Lcom/samsung/bt/hfp/AtMessage;->processAccessPermission(Landroid/bluetooth/BluetoothDevice;I)V

    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v11, "BluetoothAtMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleCmgsCommand - invalid String to parse to int : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x12e

    iget-object v11, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v12

    invoke-virtual {v11, v4, v2, v12}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x1

    iget-object v11, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v12

    invoke-virtual {v11, v4, v2, v12}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleCnmiCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 18

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handleCnmiCommand - atString = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "Softphone"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x112005c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    if-eqz v13, :cond_2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v14

    invoke-virtual {v13, v4, v14}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v14

    invoke-virtual {v13, v5, v3, v14}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :cond_2
    const-string/jumbo v13, "Not supported voice capable"

    invoke-static {v13}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v14

    invoke-virtual {v13, v5, v3, v14}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :pswitch_0
    const-string/jumbo v13, "handleCnmiCommand - Read Command"

    invoke-static {v13}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const-string/jumbo v4, "+CNMI: 3,1,0,0,0"

    const/4 v5, 0x1

    goto :goto_0

    :pswitch_1
    const-string/jumbo v13, "handleCnmiCommand - Test Command"

    invoke-static {v13}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const-string/jumbo v4, "+CNMI: (3),(1),(0),(0),(0)"

    const/4 v5, 0x1

    goto :goto_0

    :pswitch_2
    const-string/jumbo v13, "handleCnmiCommand - Set Command"

    invoke-static {v13}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    filled-new-array/range {v13 .. v17}, [I

    move-result-object v11

    const/4 v8, 0x1

    const-string/jumbo v13, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v13, v2

    const/4 v14, 0x2

    if-lt v13, v14, :cond_0

    const/4 v13, 0x1

    aget-object v13, v2, v13

    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    aget-object v13, v2, v13

    const-string/jumbo v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v13, v10

    array-length v14, v11

    if-gt v13, v14, :cond_6

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    filled-new-array/range {v13 .. v17}, [I

    move-result-object v9

    const/4 v7, 0x0

    :goto_1
    array-length v13, v11

    if-ge v7, v13, :cond_3

    array-length v13, v10

    if-ge v7, v13, :cond_4

    :try_start_0
    aget-object v13, v10, v7

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aget v13, v11, v7

    if-eq v13, v12, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Received Wrong SET Command index +CNMI = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v10, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", i = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x0

    :cond_3
    :goto_2
    if-nez v8, :cond_7

    const/16 v3, 0x12f

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string/jumbo v13, "BluetoothAtMessage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleCnmiCommand - invalid String to parse to int : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v2, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    aget v13, v11, v7

    aget v14, v9, v7

    if-eq v13, v14, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Wrong Default SET Command index +CNMI = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget v14, v9, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", i = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_6
    const/16 v3, 0x141

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v13, "mCmtiEnabled = true"

    invoke-static {v13}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/bt/hfp/AtMessage;->mCmtiEnabled:Z

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/bt/hfp/AtMessage;->mDeviceForCmti:Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleCpmsCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleCpmsCommand - atString = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Softphone"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x112005c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v7, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    :cond_1
    iget-object v7, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    invoke-virtual {v7, v3, v1, v8}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :cond_2
    const-string/jumbo v7, "Not supported voice capable"

    invoke-static {v7}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    invoke-virtual {v7, v3, v1, v8}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :pswitch_0
    const-string/jumbo v7, "handleCpmsCommand - Read Command"

    invoke-static {v7}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "+CPMS: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/bt/hfp/AtMessage;->mSupportedStorage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/samsung/bt/hfp/AtMessage;->getSmsCount(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x270f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/bt/hfp/AtMessage;->mSupportedStorage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/bt/hfp/AtMessage;->mSupportedStorage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v7, "handleCpmsCommand - Test Command"

    invoke-static {v7}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "+CPMS: (\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/bt/hfp/AtMessage;->mSupportedStorage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "(\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/bt/hfp/AtMessage;->mSupportedStorage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "(\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/bt/hfp/AtMessage;->mSupportedStorage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v7, "handleCpmsCommand - Set Command"

    invoke-static {v7}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v5, 0x0

    const-string/jumbo v7, "="

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    const/4 v7, 0x1

    aget-object v7, v0, v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    aget-object v7, v0, v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    :goto_1
    array-length v7, v6

    if-ge v4, v7, :cond_3

    aget-object v7, v6, v4

    const/16 v8, 0x22

    const/16 v9, 0x20

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string/jumbo v8, "ME"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "+CPMS: "

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/samsung/bt/hfp/AtMessage;->getSmsCount(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x270f

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    const/4 v7, 0x1

    aget-object v7, v6, v7

    const-string/jumbo v8, "ME"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    array-length v7, v6

    const/4 v8, 0x2

    if-le v7, v8, :cond_4

    const/4 v7, 0x2

    aget-object v7, v6, v7

    const-string/jumbo v8, "ME"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    move-object v2, v5

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x12f

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleCsmsCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 7

    const/4 v6, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleCsmsCommand - atString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Softphone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112005c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    packed-switch p2, :pswitch_data_0

    const-string/jumbo v4, "handleCsmsCommand - Invalid chars"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/16 v1, 0x1f4

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v3, v1, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :cond_2
    const-string/jumbo v4, "Not supported voice capable"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v3, v1, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :pswitch_0
    const-string/jumbo v4, "handleCsmsCommand - Read Command"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "+CSMS: 0,1,1,0"

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_1
    const-string/jumbo v4, "handleCsmsCommand - Test Command"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "+CSMS: 1,1,0"

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_2
    const-string/jumbo v4, "handleCsmsCommand - Set Command"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const-string/jumbo v4, "="

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    aget-object v4, v0, v6

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    aget-object v4, v0, v6

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v2, "+CSMS: 1,1,0"

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x12e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public processAccessPermission(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 8

    const/4 v6, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processAccessPermission - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v0, 0x12e

    const/4 v1, 0x0

    iget-boolean v4, p0, Lcom/samsung/bt/hfp/AtMessage;->isWaitingAuthorization:Z

    if-nez v4, :cond_0

    const-string/jumbo v4, "This reply is not for AT SMS"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    if-ne p2, v6, :cond_1

    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mNeedAuth:I

    packed-switch v4, :pswitch_data_0

    const-string/jumbo v4, "processAccessPermission - mNeedAuth is default"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v2, v0, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    :goto_0
    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mNeedAuth:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/bt/hfp/AtMessage;->isWaitingAuthorization:Z

    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/samsung/bt/hfp/AtMessage;->processCmglCommand(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/samsung/bt/hfp/AtMessage;->processCmgrCommand(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :pswitch_2
    iput-boolean v6, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmgsReceived:Z

    const-string/jumbo v1, ">"

    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/samsung/bt/hfp/AtMessage;->processCmgdCommand(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "processAccessPermission - user rejected"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v2, v0, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public processCmgdCommand(Landroid/bluetooth/BluetoothDevice;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processCmgdCommand - index = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmgdIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v6, -0x1

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmgdIndex:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-eqz v8, :cond_0

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v8, 0x0

    :cond_1
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {v0, v7, v6, v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :cond_2
    const-string/jumbo v0, "BluetoothAtMessage"

    const-string/jumbo v2, "processCmgdCommand() stroage is locked return here"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x12e

    iget-object v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {v0, v7, v6, v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :catch_0
    move-exception v9

    :try_start_2
    const-string/jumbo v0, "fail to delete"

    invoke-static {v0}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v11

    :try_start_3
    const-string/jumbo v0, "BluetoothAtMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processCmgdCommand - can\'t get cursor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_3
    throw v0
.end method

.method public processCmglCommand(Landroid/bluetooth/BluetoothDevice;)V
    .locals 33

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processCmglCommand - condition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/bt/hfp/AtMessage;->mCmglCondition:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v32, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/4 v15, 0x0

    const-wide/16 v20, 0x0

    const/16 v19, 0x0

    const-string/jumbo v25, "0004"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v28

    if-eqz v28, :cond_4

    invoke-virtual/range {v28 .. v28}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v12, 0x1

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/samsung/bt/hfp/AtMessage;->SMS_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/bt/hfp/AtMessage;->mCmglCondition:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v19

    const/16 v18, 0x0

    const/16 v24, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mOwnerPhoneNumber:Ljava/lang/String;

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/4 v4, 0x4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/bt/hfp/AtMessage;->mOwnerPhoneNumber:Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    sget-boolean v4, Lcom/samsung/bt/hfp/AtMessage;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processCmglCommand - mSenderAddress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    :cond_1
    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    invoke-static {v13, v6, v4, v5}, Lcom/samsung/bt/hfp/AtMessage;->getLong(Landroid/database/Cursor;IJ)J

    move-result-wide v20

    new-instance v14, Ljava/util/Date;

    move-wide/from16 v0, v20

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmmss"

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v15

    :try_start_1
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/bt/hfp/AtMessageUtils;->getDeliverPdusForAt(Ljava/lang/String;Ljava/lang/String;J)Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/bt/hfp/AtMessageUtils;->encodeForAt(Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v22, v18

    aget-object v4, v22, v18

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v22, v18

    aget-object v4, v22, v18

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v22, v18

    const-string/jumbo v4, "+CMGL: "

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/bt/hfp/AtMessage;->mCmglStat:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ",,"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v22, v18

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v22, v18

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v11, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v18, v18, 0x1

    :goto_0
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    if-eqz v4, :cond_2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    const/16 v4, 0x64

    move/from16 v0, v18

    if-lt v0, v4, :cond_0

    :cond_2
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v13, 0x0

    :cond_3
    if-nez v19, :cond_6

    const-string/jumbo v4, "processCmglCommand - no message found"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v12, v10, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :cond_4
    const-string/jumbo v4, "BluetoothAtMessage"

    const-string/jumbo v5, "processCmglCommand() stroage is locked return here"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x12e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v12, v10, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :catch_0
    move-exception v16

    :try_start_3
    const-string/jumbo v4, "BluetoothAtMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processCmglCommand - Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    add-int/lit8 v18, v18, 0x1

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v30

    :try_start_5
    const-string/jumbo v4, "BluetoothAtMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processCmglCommand - can\'t get cursor : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v4

    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_5
    throw v4

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v12, v10, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void
.end method

.method public processCmgrCommand(Landroid/bluetooth/BluetoothDevice;)V
    .locals 30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processCmgrCommand - index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/bt/hfp/AtMessage;->mCmgrIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v29, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v18, 0x0

    const/4 v15, 0x0

    const-string/jumbo v22, "0004"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v25

    if-eqz v25, :cond_2

    invoke-virtual/range {v25 .. v25}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v12, 0x1

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/bt/hfp/AtMessage;->mCmgrIndex:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/samsung/bt/hfp/AtMessage;->SMS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mOwnerPhoneNumber:Ljava/lang/String;

    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/bt/hfp/AtMessage;->mOwnerPhoneNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    sget-boolean v4, Lcom/samsung/bt/hfp/AtMessage;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processCmgrCommand - mSenderAddress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    invoke-static {v13, v6, v4, v5}, Lcom/samsung/bt/hfp/AtMessage;->getLong(Landroid/database/Cursor;IJ)J

    move-result-wide v18

    new-instance v14, Ljava/util/Date;

    move-wide/from16 v0, v18

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmmss"

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    :try_start_1
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/bt/hfp/AtMessageUtils;->getDeliverPdusForAt(Ljava/lang/String;Ljava/lang/String;J)Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/bt/hfp/AtMessageUtils;->encodeForAt(Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    const/4 v4, 0x4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v20

    :goto_0
    if-nez v20, :cond_3

    :try_start_2
    const-string/jumbo v4, "processCmgrCommand - mEncodedPduContent is null"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    const/16 v10, 0x1f4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v12, v10, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v4, "BluetoothAtMessage"

    const-string/jumbo v5, "processCmgrCommand() stroage is locked return here"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x12e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v12, v10, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :catch_0
    move-exception v16

    :try_start_3
    const-string/jumbo v4, "BluetoothAtMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processCmgrCommand - Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "+CMGR: "

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/bt/hfp/AtMessage;->mCmgrStat:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ",,"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v11, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v13, 0x0

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v12, v10, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :catch_1
    move-exception v27

    :try_start_4
    const-string/jumbo v4, "BluetoothAtMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processCmgrCommand - can\'t get cursor : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    if-eqz v13, :cond_6

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_6
    throw v4
.end method

.method public processCmgsCommand(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 38

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processCmgsCommand - atString = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/16 v20, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v21, -0x1

    const/16 v31, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v27

    if-eqz v27, :cond_1

    invoke-virtual/range {v27 .. v27}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v8, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v4, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "Softphone"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x112005c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x65

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mCmgsReceived:Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mSimSlotNum:I

    const/4 v8, 0x1

    if-le v4, v8, :cond_0

    const/16 v32, 0x0

    const-string/jumbo v4, "gsm.sim.state"

    const-string/jumbo v8, "-1,-1"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v4, ","

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v4, "ABSENT"

    const/4 v8, 0x1

    aget-object v8, v30, v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "ABSENT"

    const/4 v8, 0x0

    aget-object v8, v30, v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v32

    const/4 v4, 0x0

    aget v31, v32, v4

    const-string/jumbo v4, "SIM2 is available"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "subId= "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "currSimId = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lcom/samsung/bt/hfp/AtMessageUtils;->FilterCtrlZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessageUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v26

    if-nez v26, :cond_5

    const-string/jumbo v4, "mSmsMessage is null"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    move/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1, v8}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :cond_1
    const-string/jumbo v4, "BluetoothAtMessage"

    const-string/jumbo v8, "processCmgsCommand() stroage is locked return here"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x12e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    move/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1, v8}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :cond_2
    const-string/jumbo v4, "Not supported voice capable"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    move/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1, v8}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :cond_3
    const-string/jumbo v4, "ABSENT"

    const/4 v8, 0x0

    aget-object v8, v30, v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "ABSENT"

    const/4 v8, 0x1

    aget-object v8, v30, v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v32

    const/4 v4, 0x0

    aget v31, v32, v4

    const-string/jumbo v4, "SIM1 is available"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v31

    invoke-static/range {v31 .. v31}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v21

    goto/16 :goto_0

    :cond_5
    const-wide/16 v24, -0x1

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/samsung/bt/hfp/AtMessageUtils;->FilterCtrlZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessageUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/bt/hfp/AtMessage;->getDestinationAddress([B)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    const-string/jumbo v23, "outbox"

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "content://sms/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {v4 .. v11}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;

    move-result-object v34

    if-nez v34, :cond_6

    const-string/jumbo v4, "URI is null"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/16 v20, 0x0

    const/16 v18, 0x141

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    move/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1, v8}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mSimSlotNum:I

    const/4 v8, 0x1

    if-le v4, v8, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/telephony/TelephonyManager;

    new-instance v35, Landroid/content/ContentValues;

    const/4 v4, 0x1

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v4, "sim_slot"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "sim_imsi"

    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_7
    invoke-virtual/range {v34 .. v34}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.bt.hfp.intent.action.MESSAGE_DELIVERY_FOR_ATMSG"

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "HANDLE"

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    move-object/from16 v0, v22

    invoke-static {v4, v8, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    new-instance v28, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.bt.hfp.intent.action.MESSAGE_SENT_FOR_ATMSG"

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "HANDLE"

    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    move-object/from16 v0, v28

    invoke-static {v4, v8, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v14

    move-object v13, v6

    invoke-virtual/range {v12 .. v17}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    :cond_8
    const-string/jumbo v4, "Address is null"

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/16 v20, 0x0

    const/16 v18, 0x141

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    move/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1, v8}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void
.end method

.method public declared-synchronized processMsgRcvdActionForAtCMD(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/bt/hfp/AtMessage;->mDeviceForCmti:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_0

    const-string/jumbo v3, "New msg...but no device use AT SMS feature"

    invoke-static {v3}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmtiEnabled:Z

    if-nez v3, :cond_1

    const-string/jumbo v3, "+CMTI is not enabled...Skipping event"

    invoke-static {v3}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string/jumbo v3, "processMsgRcvdActionForAtCMD()"

    invoke-static {v3}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/bt/hfp/AtMessage;->mCMTIContentObserversEnabled:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/bt/hfp/AtMessage;->registerCMTIContentObservers(Landroid/content/Context;)V

    :cond_2
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v2

    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    aget-object v3, v2, v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string/jumbo v3, ""

    const/4 v4, 0x2

    aput-object v3, v1, v4

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v3, v2, v0

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/samsung/bt/hfp/AtMessageUtils;->FilterCRLF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/samsung/bt/hfp/AtMessage;->mPendingSmsCMTI:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_5
    :try_start_3
    const-string/jumbo v3, "BluetoothAtMessage"

    const-string/jumbo v4, "processMsgRcvdActionForAtCMD - mSmsMessages is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public processMsgSentActionForAtCMD(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 12

    const-string/jumbo v8, "processMsgSentActionForAtCMD()"

    invoke-static {v8}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "HANDLE"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive: action"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive: no msgInfo found for handle "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/16 v1, 0x12c

    iget-object v8, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, v5}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v9

    invoke-virtual {v8, v3, v1, v9}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return-void

    :cond_0
    if-nez v5, :cond_1

    const-string/jumbo v8, "device is null"

    invoke-static {v8}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v8, "com.samsung.bt.hfp.intent.action.MESSAGE_DELIVERY_FOR_ATMSG"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "actionMessageDelivery"

    invoke-static {v8}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v8, "com.samsung.bt.hfp.intent.action.MESSAGE_SENT_FOR_ATMSG"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "actionMessageSent - handle : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    const/4 v8, -0x1

    if-ne p3, v8, :cond_4

    const-string/jumbo v8, "actionMessageSent: result OK"

    invoke-static {v8}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "content://sms/outbox/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "Failed to move outbox msg to SENT"

    invoke-static {v8}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "+CMGS:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v8, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, v5}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    iget-object v8, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, v5}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v9

    invoke-virtual {v8, v3, v1, v9}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    :cond_4
    const-string/jumbo v8, "actionMessageSent: result is NOT OK"

    invoke-static {v8}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "content://sms/outbox/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "Failed to move outbox msg to FAILED"

    invoke-static {v8}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    :cond_5
    const/16 v1, 0x14c

    iget-object v8, p0, Lcom/samsung/bt/hfp/AtMessage;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, v5}, Lcom/samsung/bt/hfp/AtMessage;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v9

    invoke-virtual {v8, v3, v1, v9}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto/16 :goto_0

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive: Unknown action "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method declared-synchronized resetAtState()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmtiEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mDeviceForCmti:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mCmgsReceived:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mCMTIContentObserversEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/bt/hfp/AtMessage;->isWaitingAuthorization:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/bt/hfp/AtMessage;->mPermission:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterCMTIContentObservers()V
    .locals 2

    iget-boolean v1, p0, Lcom/samsung/bt/hfp/AtMessage;->mCMTIContentObserversEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "unregisterCMTIContentObservers"

    invoke-static {v1}, Lcom/samsung/bt/hfp/AtMessage;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/bt/hfp/AtMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/bt/hfp/AtMessage;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/bt/hfp/AtMessage;->mCMTIContentObserversEnabled:Z

    :cond_0
    return-void
.end method
